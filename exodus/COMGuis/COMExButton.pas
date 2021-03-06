{
    Copyright 2001-2008, Estate of Peter Millard
	
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
unit COMExButton;



{-----------------------------------------------------------------------------}
{-----------------------------------------------------------------------------}
{ This is autogenerated code using the COMGuiGenerator. DO NOT MODIFY BY HAND }
{-----------------------------------------------------------------------------}
{-----------------------------------------------------------------------------}


{$WARN SYMBOL_PLATFORM OFF}

interface
uses
    ActiveX,Classes,COMExFont,COMExPopupMenu,ComObj,Controls,Exodus_TLB,Forms,Graphics,StdCtrls,StdVcl,TntMenus,TntStdCtrls;

type
    TExControlButton = class(TAutoObject, IExodusControl, IExodusControlButton)
    public
        constructor Create(control: TTntButton);

    private
        _control: TTntButton;

    protected
        function Get_ControlType: ExodusControlTypes; safecall;
        function Get_Name: Widestring; safecall;
        procedure Set_Name(const Value: Widestring); safecall;
        function Get_Tag: Integer; safecall;
        procedure Set_Tag(Value: Integer); safecall;
        function Get_Left: Integer; safecall;
        procedure Set_Left(Value: Integer); safecall;
        function Get_Top: Integer; safecall;
        procedure Set_Top(Value: Integer); safecall;
        function Get_Width: Integer; safecall;
        procedure Set_Width(Value: Integer); safecall;
        function Get_Height: Integer; safecall;
        procedure Set_Height(Value: Integer); safecall;
        function Get_Cursor: Integer; safecall;
        procedure Set_Cursor(Value: Integer); safecall;
        function Get_Hint: Widestring; safecall;
        procedure Set_Hint(const Value: Widestring); safecall;
        function Get_HelpType: Integer; safecall;
        procedure Set_HelpType(Value: Integer); safecall;
        function Get_HelpKeyword: Widestring; safecall;
        procedure Set_HelpKeyword(const Value: Widestring); safecall;
        function Get_HelpContext: Integer; safecall;
        procedure Set_HelpContext(Value: Integer); safecall;
        function Get_BiDiMode: Integer; safecall;
        procedure Set_BiDiMode(Value: Integer); safecall;
        function Get_Cancel: Integer; safecall;
        procedure Set_Cancel(Value: Integer); safecall;
        function Get_Caption: Widestring; safecall;
        procedure Set_Caption(const Value: Widestring); safecall;
        function Get_Default: Integer; safecall;
        procedure Set_Default(Value: Integer); safecall;
        function Get_DragCursor: Integer; safecall;
        procedure Set_DragCursor(Value: Integer); safecall;
        function Get_DragKind: Integer; safecall;
        procedure Set_DragKind(Value: Integer); safecall;
        function Get_DragMode: Integer; safecall;
        procedure Set_DragMode(Value: Integer); safecall;
        function Get_Enabled: Integer; safecall;
        procedure Set_Enabled(Value: Integer); safecall;
        function Get_Font: IExodusControlFont; safecall;
        function Get_ModalResult: Integer; safecall;
        procedure Set_ModalResult(Value: Integer); safecall;
        function Get_ParentBiDiMode: Integer; safecall;
        procedure Set_ParentBiDiMode(Value: Integer); safecall;
        function Get_ParentFont: Integer; safecall;
        procedure Set_ParentFont(Value: Integer); safecall;
        function Get_ParentShowHint: Integer; safecall;
        procedure Set_ParentShowHint(Value: Integer); safecall;
        function Get_PopupMenu: IExodusControlPopupMenu; safecall;
        function Get_ShowHint: Integer; safecall;
        procedure Set_ShowHint(Value: Integer); safecall;
        function Get_TabOrder: Integer; safecall;
        procedure Set_TabOrder(Value: Integer); safecall;
        function Get_TabStop: Integer; safecall;
        procedure Set_TabStop(Value: Integer); safecall;
        function Get_Visible: Integer; safecall;
        procedure Set_Visible(Value: Integer); safecall;
        function Get_WordWrap: Integer; safecall;
        procedure Set_WordWrap(Value: Integer); safecall;
    end;


{---------------------------------------}
{---------------------------------------}
{---------------------------------------}
implementation


constructor TExControlButton.Create(control: TTntButton);
begin
     _control := control; 
end;

function TExControlButton.Get_ControlType: ExodusControlTypes;
begin
    Result := ExodusControlButton;
end;

function TExControlButton.Get_Name: Widestring;
begin
      Result := _control.Name;
end;

procedure TExControlButton.Set_Name(const Value: Widestring);
begin
      _control.Name := Value;
end;

function TExControlButton.Get_Tag: Integer;
begin
      Result := _control.Tag;
end;

procedure TExControlButton.Set_Tag(Value: Integer);
begin
      _control.Tag := Value;
end;

function TExControlButton.Get_Left: Integer;
begin
      Result := _control.Left;
end;

procedure TExControlButton.Set_Left(Value: Integer);
begin
      _control.Left := Value;
end;

function TExControlButton.Get_Top: Integer;
begin
      Result := _control.Top;
end;

procedure TExControlButton.Set_Top(Value: Integer);
begin
      _control.Top := Value;
end;

function TExControlButton.Get_Width: Integer;
begin
      Result := _control.Width;
end;

procedure TExControlButton.Set_Width(Value: Integer);
begin
      _control.Width := Value;
end;

function TExControlButton.Get_Height: Integer;
begin
      Result := _control.Height;
end;

procedure TExControlButton.Set_Height(Value: Integer);
begin
      _control.Height := Value;
end;

function TExControlButton.Get_Cursor: Integer;
begin
      Result := _control.Cursor;
end;

procedure TExControlButton.Set_Cursor(Value: Integer);
begin
      _control.Cursor := Value;
end;

function TExControlButton.Get_Hint: Widestring;
begin
      Result := _control.Hint;
end;

procedure TExControlButton.Set_Hint(const Value: Widestring);
begin
      _control.Hint := Value;
end;

function TExControlButton.Get_HelpType: Integer;
begin
    if (_control.HelpType = htKeyword) then Result := 0;
    if (_control.HelpType = htContext) then Result := 1;
end;

procedure TExControlButton.Set_HelpType(Value: Integer);
begin
   if (Value = 0) then _control.HelpType := htKeyword;
   if (Value = 1) then _control.HelpType := htContext;
end;

function TExControlButton.Get_HelpKeyword: Widestring;
begin
      Result := _control.HelpKeyword;
end;

procedure TExControlButton.Set_HelpKeyword(const Value: Widestring);
begin
      _control.HelpKeyword := Value;
end;

function TExControlButton.Get_HelpContext: Integer;
begin
      Result := _control.HelpContext;
end;

procedure TExControlButton.Set_HelpContext(Value: Integer);
begin
      _control.HelpContext := Value;
end;

function TExControlButton.Get_BiDiMode: Integer;
begin
    if (_control.BiDiMode = bdLeftToRight) then Result := 0;
    if (_control.BiDiMode = bdRightToLeft) then Result := 1;
    if (_control.BiDiMode = bdRightToLeftNoAlign) then Result := 2;
    if (_control.BiDiMode = bdRightToLeftReadingOnly) then Result := 3;
end;

procedure TExControlButton.Set_BiDiMode(Value: Integer);
begin
   if (Value = 0) then _control.BiDiMode := bdLeftToRight;
   if (Value = 1) then _control.BiDiMode := bdRightToLeft;
   if (Value = 2) then _control.BiDiMode := bdRightToLeftNoAlign;
   if (Value = 3) then _control.BiDiMode := bdRightToLeftReadingOnly;
end;

function TExControlButton.Get_Cancel: Integer;
begin
    if (_control.Cancel = False) then Result := 0;
    if (_control.Cancel = True) then Result := 1;
end;

procedure TExControlButton.Set_Cancel(Value: Integer);
begin
   if (Value = 0) then _control.Cancel := False;
   if (Value = 1) then _control.Cancel := True;
end;

function TExControlButton.Get_Caption: Widestring;
begin
      Result := _control.Caption;
end;

procedure TExControlButton.Set_Caption(const Value: Widestring);
begin
      _control.Caption := Value;
end;

function TExControlButton.Get_Default: Integer;
begin
    if (_control.Default = False) then Result := 0;
    if (_control.Default = True) then Result := 1;
end;

procedure TExControlButton.Set_Default(Value: Integer);
begin
   if (Value = 0) then _control.Default := False;
   if (Value = 1) then _control.Default := True;
end;

function TExControlButton.Get_DragCursor: Integer;
begin
      Result := _control.DragCursor;
end;

procedure TExControlButton.Set_DragCursor(Value: Integer);
begin
      _control.DragCursor := Value;
end;

function TExControlButton.Get_DragKind: Integer;
begin
    if (_control.DragKind = dkDrag) then Result := 0;
    if (_control.DragKind = dkDock) then Result := 1;
end;

procedure TExControlButton.Set_DragKind(Value: Integer);
begin
   if (Value = 0) then _control.DragKind := dkDrag;
   if (Value = 1) then _control.DragKind := dkDock;
end;

function TExControlButton.Get_DragMode: Integer;
begin
    if (_control.DragMode = dmManual) then Result := 0;
    if (_control.DragMode = dmAutomatic) then Result := 1;
end;

procedure TExControlButton.Set_DragMode(Value: Integer);
begin
   if (Value = 0) then _control.DragMode := dmManual;
   if (Value = 1) then _control.DragMode := dmAutomatic;
end;

function TExControlButton.Get_Enabled: Integer;
begin
    if (_control.Enabled = False) then Result := 0;
    if (_control.Enabled = True) then Result := 1;
end;

procedure TExControlButton.Set_Enabled(Value: Integer);
begin
   if (Value = 0) then _control.Enabled := False;
   if (Value = 1) then _control.Enabled := True;
end;

function TExControlButton.Get_Font: IExodusControlFont;
begin
      Result := TExControlFont.Create(TFont(_control.Font));
end;

function TExControlButton.Get_ModalResult: Integer;
begin
      Result := _control.ModalResult;
end;

procedure TExControlButton.Set_ModalResult(Value: Integer);
begin
      _control.ModalResult := Value;
end;

function TExControlButton.Get_ParentBiDiMode: Integer;
begin
    if (_control.ParentBiDiMode = False) then Result := 0;
    if (_control.ParentBiDiMode = True) then Result := 1;
end;

procedure TExControlButton.Set_ParentBiDiMode(Value: Integer);
begin
   if (Value = 0) then _control.ParentBiDiMode := False;
   if (Value = 1) then _control.ParentBiDiMode := True;
end;

function TExControlButton.Get_ParentFont: Integer;
begin
    if (_control.ParentFont = False) then Result := 0;
    if (_control.ParentFont = True) then Result := 1;
end;

procedure TExControlButton.Set_ParentFont(Value: Integer);
begin
   if (Value = 0) then _control.ParentFont := False;
   if (Value = 1) then _control.ParentFont := True;
end;

function TExControlButton.Get_ParentShowHint: Integer;
begin
    if (_control.ParentShowHint = False) then Result := 0;
    if (_control.ParentShowHint = True) then Result := 1;
end;

procedure TExControlButton.Set_ParentShowHint(Value: Integer);
begin
   if (Value = 0) then _control.ParentShowHint := False;
   if (Value = 1) then _control.ParentShowHint := True;
end;

function TExControlButton.Get_PopupMenu: IExodusControlPopupMenu;
begin
      Result := TExControlPopupMenu.Create(TTntPopupMenu(_control.PopupMenu));
end;

function TExControlButton.Get_ShowHint: Integer;
begin
    if (_control.ShowHint = False) then Result := 0;
    if (_control.ShowHint = True) then Result := 1;
end;

procedure TExControlButton.Set_ShowHint(Value: Integer);
begin
   if (Value = 0) then _control.ShowHint := False;
   if (Value = 1) then _control.ShowHint := True;
end;

function TExControlButton.Get_TabOrder: Integer;
begin
      Result := _control.TabOrder;
end;

procedure TExControlButton.Set_TabOrder(Value: Integer);
begin
      _control.TabOrder := Value;
end;

function TExControlButton.Get_TabStop: Integer;
begin
    if (_control.TabStop = False) then Result := 0;
    if (_control.TabStop = True) then Result := 1;
end;

procedure TExControlButton.Set_TabStop(Value: Integer);
begin
   if (Value = 0) then _control.TabStop := False;
   if (Value = 1) then _control.TabStop := True;
end;

function TExControlButton.Get_Visible: Integer;
begin
    if (_control.Visible = False) then Result := 0;
    if (_control.Visible = True) then Result := 1;
end;

procedure TExControlButton.Set_Visible(Value: Integer);
begin
   if (Value = 0) then _control.Visible := False;
   if (Value = 1) then _control.Visible := True;
end;

function TExControlButton.Get_WordWrap: Integer;
begin
    if (_control.WordWrap = False) then Result := 0;
    if (_control.WordWrap = True) then Result := 1;
end;

procedure TExControlButton.Set_WordWrap(Value: Integer);
begin
   if (Value = 0) then _control.WordWrap := False;
   if (Value = 1) then _control.WordWrap := True;
end;




end.
