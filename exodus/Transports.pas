unit Transports;
{
    Copyright 2001, Peter Millard

    This file is part of Exodus.

    Exodus is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Exodus is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Exodus; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

interface

uses
    XMLTag, IQ, 
    Session,
    Contnrs, SysUtils, classes;

type
    TTransportProxy = class
    private
        jid: Widestring;
        action: Widestring;
        key: Widestring;
        procedure ShowError(msg: Widestring);
    published
        procedure RemoveGetCallback(event: string; tag: TXMLTag);
        procedure RemoveSetCallback(event: string; tag: TXMLTag);
    public
        procedure UnRegister();
    end;

procedure RemoveTransport(jid: WideString);

implementation
uses
    Controls, Dialogs;

procedure RemoveTransport(jid: Widestring);
var
    proxy: TTransportProxy;
begin
    // Delete the registration
    if MessageDlg('Remove Registration?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

    proxy := TTransportProxy.Create();
    proxy.jid := jid;
    proxy.UnRegister();
end;

procedure TTransportProxy.UnRegister();
var
    iq: TJabberIQ;
begin
    action := 'remove';
    iq := TJabberIQ.Create(MainSession, MainSession.generateID(), RemoveSetCallback, 4);
    with iq do begin
        toJid := jid;
        iqType := 'set';
        Namespace := XMLNS_REGISTER;
        iq.qTag.AddTag('remove');
        Send();
        end;
end;

procedure TTransportProxy.ShowError(msg: Widestring);
begin
    MessageDlg(msg, mtError, [mbOK], 0);
    Self.Free();
end;

procedure TTransportProxy.RemoveGetCallback(event: string; tag: TXMLTag);
var
    user_tag, key_tag: TXMLTag;
    iq: TJabberIQ;
    user: WideString;
begin
    //
    if (event = 'timeout') then begin
        ShowError('The transport could not be reached. Your request timed out.');
        exit;
        end;

    if (tag.GetAttribute('type') = 'error') then begin
        ShowError('There was an error processing your request.');
        exit;
        end;

    if (action = 'remove') then begin
        key_tag := tag.QueryXPTag('/iq/query/key');
        user_tag := tag.QueryXPTag('/iq/query/username');

        if (user_tag <> nil) then
            user := user_tag.Data();
        if (key_tag <> nil) then
            key := key_tag.Data();

        if (user = '') then begin
            ShowError('You are not registered with this transport.');
            exit;
            end;

        iq := TJabberIQ.Create(MainSession, MainSession.generateID(), RemoveSetCallback, 4);
        with iq do begin
            toJid := jid;
            iqType := 'set';
            Namespace := XMLNS_REGISTER;
            AddTag('remove');
            if (key <> '') then
                AddBasicTag('key', key);
            AddBasicTag('username', user);
            Send();
            end;

        end;
end;

procedure TTransportProxy.RemoveSetCallback(event: string; tag: TXMLTag);
begin
    //
    if (event = 'timeout') then begin
        ShowError('The transport could not be reached. Your request timed out.');
        exit;
        end;

    if (tag.GetAttribute('type') = 'error') then begin
        ShowError('There was an error processing your request.');
        exit;
        end
    else begin
        MessageDlg('Your request was successful.', mtInformation, [mbOK], 0);
        self.free();
        exit;
        end;
end;


end.
 