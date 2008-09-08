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
unit COMExPanel;



{-----------------------------------------------------------------------------}
{-----------------------------------------------------------------------------}
{ This is autogenerated code using the COMGuiGenerator. DO NOT MODIFY BY HAND }
{-----------------------------------------------------------------------------}
{-----------------------------------------------------------------------------}


{$WARN SYMBOL_PLATFORM OFF}

interface
uses
    ActiveX,Classes,COMExFont,COMExPopupMenu,ComObj,Controls,Exodus_TLB,ExtCtrls,Forms,Graphics,StdCtrls,StdVcl,TntExtCtrls,TntMenus;

type
    TExControlPanel = class(TAutoObject, IExodusControl, IExodusControlPanel)
    public
        constructor Create(control: TTntPanel);

    private
        _control: TTntPanel;

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
        function Get_Align: Integer; safecall;
        procedure Set_Align(Value: Integer); safecall;
        function Get_Alignment: Integer; safecall;
        procedure Set_Alignment(Value: Integer); safecall;
        function Get_AutoSize: Integer; safecall;
        procedure Set_AutoSize(Value: Integer); safecall;
        function Get_BevelInner: Integer; safecall;
        procedure Set_BevelInner(Value: Integer); safecall;
        function Get_BevelOuter: Integer; safecall;
        procedure Set_BevelOuter(Value: Integer); safecall;
        function Get_BevelWidth: Integer; safecall;
        procedure Set_BevelWidth(Value: Integer); safecall;
        function Get_BiDiMode: Integer; safecall;
        procedure Set_BiDiMode(Value: Integer); safecall;
        function Get_BorderWidth: Integer; safecall;
        procedure Set_BorderWidth(Value: Integer); safecall;
        function Get_BorderStyle: Integer; safecall;
        procedure Set_BorderStyle(Value: Integer); safecall;
        function Get_Caption: Widestring; safecall;
        procedure Set_Caption(const Value: Widestring); safecall;
        function Get_Color: Integer; safecall;
        procedure Set_Color(Value: Integer); safecall;
        function Get_Ctl3D: Integer; safecall;
        procedure Set_Ctl3D(Value: Integer); safecall;
        function Get_UseDockManager: Integer; safecall;
        procedure Set_UseDockManager(Value: Integer); safecall;
        function Get_DockSite: Integer; safecall;
        procedure Set_DockSite(Value: Integer); safecall;
        function Get_DragCursor: Integer; safecall;
        procedure Set_DragCursor(Value: Integer); safecall;
        function Get_DragKind: Integer; safecall;
        procedure Set_DragKind(Value: Integer); safecall;
        function Get_DragMode: Integer; safecall;
        procedure Set_DragMode(Value: Integer); safecall;
        function Get_Enabled: Integer; safecall;
        procedure Set_Enabled(Value: Integer); safecall;
        function Get_FullRepaint: Integer; safecall;
        procedure Set_FullRepaint(Value: Integer); safecall;
        function Get_Font: IExodusControlFont; safecall;
        function Get_Locked: Integer; safecall;
        procedure Set_Locked(Value: Integer); safecall;
        function Get_ParentBiDiMode: Integer; safecall;
        procedure Set_ParentBiDiMode(Value: Integer); safecall;
        function Get_ParentBackground: Integer; safecall;
        procedure Set_ParentBackground(Value: Integer); safecall;
        function Get_ParentColor: Integer; safecall;
        procedure Set_ParentColor(Value: Integer); safecall;
        function Get_ParentCtl3D: Integer; safecall;
        procedure Set_ParentCtl3D(Value: Integer); safecall;
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
    end;


{---------------------------------------}
{---------------------------------------}
{---------------------------------------}
implementation


constructor TExControlPanel.Create(control: TTntPanel);
begin
     _control := control; 
end;

function TExControlPanel.Get_ControlType: ExodusControlTypes;
begin
    Result := ExodusControlPanel;
end;

function TExControlPanel.Get_Name: Widestring;
begin
      Result := _control.Name;
end;

procedure TExControlPanel.Set_Name(const Value: Widestring);
begin
      _control.Name := Value;
end;

function TExControlPanel.Get_Tag: Integer;
begin
      Result := _control.Tag;
end;

procedure TExControlPanel.Set_Tag(Value: Integer);
begin
      _control.Tag := Value;
end;

function TExControlPanel.Get_Left: Integer;
begin
      Result := _control.Left;
end;

procedure TExControlPanel.Set_Left(Value: Integer);
begin
      _control.Left := Value;
end;

function TExControlPanel.Get_Top: Integer;
begin
      Result := _control.Top;
end;

procedure TExControlPanel.Set_Top(Value: Integer);
begin
      _control.Top := Value;
end;

function TExControlPanel.Get_Width: Integer;
begin
      Result := _control.Width;
end;

procedure TExControlPanel.Set_Width(Value: Integer);
begin
      _control.Width := Value;
end;

function TExControlPanel.Get_Height: Integer;
begin
      Result := _control.Height;
end;

procedure TExControlPanel.Set_Height(Value: Integer);
begin
      _control.Height := Value;
end;

function TExControlPanel.Get_Cursor: Integer;
begin
      Result := _control.Cursor;
end;

procedure TExControlPanel.Set_Cursor(Value: Integer);
begin
      _control.Cursor := Value;
end;

function TExControlPanel.Get_Hint: Widestring;
begin
      Result := _control.Hint;
end;

procedure TExControlPanel.Set_Hint(const Value: Widestring);
begin
      _control.Hint := Value;
end;

function TExControlPanel.Get_HelpType: Integer;
begin
    if (_control.HelpType = htKeyword) then Result := 0;
    if (_control.HelpType = htContext) then Result := 1;
end;

procedure TExControlPanel.Set_HelpType(Value: Integer);
begin
   if (Value = 0) then _control.HelpType := htKeyword;
   if (Value = 1) then _control.HelpType := htContext;
end;

function TExControlPanel.Get_HelpKeyword: Widestring;
begin
      Result := _control.HelpKeyword;
end;

procedure TExControlPanel.Set_HelpKeyword(const Value: Widestring);
begin
      _control.HelpKeyword := Value;
end;

function TExControlPanel.Get_HelpContext: Integer;
begin
      Result := _control.HelpContext;
end;

procedure TExControlPanel.Set_HelpContext(Value: Integer);
begin
      _control.HelpContext := Value;
end;

function TExControlPanel.Get_Align: Integer;
begin
    if (_control.Align = alNone) then Result := 0;
    if (_control.Align = alTop) then Result := 1;
    if (_control.Align = alBottom) then Result := 2;
    if (_control.Align = alLeft) then Result := 3;
    if (_control.Align = alRight) then Result := 4;
    if (_control.Align = alClient) then Result := 5;
    if (_control.Align = alCustom) then Result := 6;
end;

procedure TExControlPanel.Set_Align(Value: Integer);
begin
   if (Value = 0) then _control.Align := alNone;
   if (Value = 1) then _control.Align := alTop;
   if (Value = 2) then _control.Align := alBottom;
   if (Value = 3) then _control.Align := alLeft;
   if (Value = 4) then _control.Align := alRight;
   if (Value = 5) then _control.Align := alClient;
   if (Value = 6) then _control.Align := alCustom;
end;

function TExControlPanel.Get_Alignment: Integer;
begin
    if (_control.Alignment = taLeftJustify) then Result := 0;
    if (_control.Alignment = taRightJustify) then Result := 1;
    if (_control.Alignment = taCenter) then Result := 2;
end;

procedure TExControlPanel.Set_Alignment(Value: Integer);
begin
   if (Value = 0) then _control.Alignment := taLeftJustify;
   if (Value = 1) then _control.Alignment := taRightJustify;
   if (Value = 2) then _control.Alignment := taCenter;
end;

function TExControlPanel.Get_AutoSize: Integer;
begin
    if (_control.AutoSize = False) then Result := 0;
    if (_control.AutoSize = True) then Result := 1;
end;

procedure TExControlPanel.Set_AutoSize(Value: Integer);
begin
   if (Value = 0) then _control.AutoSize := False;
   if (Value = 1) then _control.AutoSize := True;
end;

function TExControlPanel.Get_BevelInner: Integer;
begin
    if (_control.BevelInner = bvNone) then Result := 0;
    if (_control.BevelInner = bvLowered) then Result := 1;
    if (_control.BevelInner = bvRaised) then Result := 2;
    if (_control.BevelInner = bvSpace) then Result := 3;
end;

procedure TExControlPanel.Set_BevelInner(Value: Integer);
begin
   if (Value = 0) then _control.BevelInner := bvNone;
   if (Value = 1) then _control.BevelInner := bvLowered;
   if (Value = 2) then _control.BevelInner := bvRaised;
   if (Value = 3) then _control.BevelInner := bvSpace;
end;

function TExControlPanel.Get_BevelOuter: Integer;
begin
    if (_control.BevelOuter = bvNone) then Result := 0;
    if (_control.BevelOuter = bvLowered) then Result := 1;
    if (_control.BevelOuter = bvRaised) then Result := 2;
    if (_control.BevelOuter = bvSpace) then Result := 3;
end;

procedure TExControlPanel.Set_BevelOuter(Value: Integer);
begin
   if (Value = 0) then _control.BevelOuter := bvNone;
   if (Value = 1) then _control.BevelOuter := bvLowered;
   if (Value = 2) then _control.BevelOuter := bvRaised;
   if (Value = 3) then _control.BevelOuter := bvSpace;
end;

function TExControlPanel.Get_BevelWidth: Integer;
begin
      Result := _control.BevelWidth;
end;

procedure TExControlPanel.Set_BevelWidth(Value: Integer);
begin
      _control.BevelWidth := Value;
end;

function TExControlPanel.Get_BiDiMode: Integer;
begin
    if (_control.BiDiMode = bdLeftToRight) then Result := 0;
    if (_control.BiDiMode = bdRightToLeft) then Result := 1;
    if (_control.BiDiMode = bdRightToLeftNoAlign) then Result := 2;
    if (_control.BiDiMode = bdRightToLeftReadingOnly) then Result := 3;
end;

procedure TExControlPanel.Set_BiDiMode(Value: Integer);
begin
   if (Value = 0) then _control.BiDiMode := bdLeftToRight;
   if (Value = 1) then _control.BiDiMode := bdRightToLeft;
   if (Value = 2) then _control.BiDiMode := bdRightToLeftNoAlign;
   if (Value = 3) then _control.BiDiMode := bdRightToLeftReadingOnly;
end;

function TExControlPanel.Get_BorderWidth: Integer;
begin
      Result := _control.BorderWidth;
end;

procedure TExControlPanel.Set_BorderWidth(Value: Integer);
begin
      _control.BorderWidth := Value;
end;

function TExControlPanel.Get_BorderStyle: Integer;
begin
    if (_control.BorderStyle = bsNone) then Result := 0;
    if (_control.BorderStyle = bsSingle) then Result := 1;
end;

procedure TExControlPanel.Set_BorderStyle(Value: Integer);
begin
   if (Value = 0) then _control.BorderStyle := bsNone;
   if (Value = 1) then _control.BorderStyle := bsSingle;
end;

function TExControlPanel.Get_Caption: Widestring;
begin
      Result := _control.Caption;
end;

procedure TExControlPanel.Set_Caption(const Value: Widestring);
begin
      _control.Caption := Value;
end;

function TExControlPanel.Get_Color: Integer;
begin
      Result := _control.Color;
end;

procedure TExControlPanel.Set_Color(Value: Integer);
begin
      _control.Color := Value;
end;

function TExControlPanel.Get_Ctl3D: Integer;
begin
    if (_control.Ctl3D = False) then Result := 0;
    if (_control.Ctl3D = True) then Result := 1;
end;

procedure TExControlPanel.Set_Ctl3D(Value: Integer);
begin
   if (Value = 0) then _control.Ctl3D := False;
   if (Value = 1) then _control.Ctl3D := True;
end;

function TExControlPanel.Get_UseDockManager: Integer;
begin
    if (_control.UseDockManager = False) then Result := 0;
    if (_control.UseDockManager = True) then Result := 1;
end;

procedure TExControlPanel.Set_UseDockManager(Value: Integer);
begin
   if (Value = 0) then _control.UseDockManager := False;
   if (Value = 1) then _control.UseDockManager := True;
end;

function TExControlPanel.Get_DockSite: Integer;
begin
    if (_control.DockSite = False) then Result := 0;
    if (_control.DockSite = True) then Result := 1;
end;

procedure TExControlPanel.Set_DockSite(Value: Integer);
begin
   if (Value = 0) then _control.DockSite := False;
   if (Value = 1) then _control.DockSite := True;
end;

function TExControlPanel.Get_DragCursor: Integer;
begin
      Result := _control.DragCursor;
end;

procedure TExControlPanel.Set_DragCursor(Value: Integer);
begin
      _control.DragCursor := Value;
end;

function TExControlPanel.Get_DragKind: Integer;
begin
    if (_control.DragKind = dkDrag) then Result := 0;
    if (_control.DragKind = dkDock) then Result := 1;
end;

procedure TExControlPanel.Set_DragKind(Value: Integer);
begin
   if (Value = 0) then _control.DragKind := dkDrag;
   if (Value = 1) then _control.DragKind := dkDock;
end;

function TExControlPanel.Get_DragMode: Integer;
begin
    if (_control.DragMode = dmManual) then Result := 0;
    if (_control.DragMode = dmAutomatic) then Result := 1;
end;

procedure TExControlPanel.Set_DragMode(Value: Integer);
begin
   if (Value = 0) then _control.DragMode := dmManual;
   if (Value = 1) then _control.DragMode := dmAutomatic;
end;

function TExControlPanel.Get_Enabled: Integer;
begin
    if (_control.Enabled = False) then Result := 0;
    if (_control.Enabled = True) then Result := 1;
end;

procedure TExControlPanel.Set_Enabled(Value: Integer);
begin
   if (Value = 0) then _control.Enabled := False;
   if (Value = 1) then _control.Enabled := True;
end;

function TExControlPanel.Get_FullRepaint: Integer;
begin
    if (_control.FullRepaint = False) then Result := 0;
    if (_control.FullRepaint = True) then Result := 1;
end;

procedure TExControlPanel.Set_FullRepaint(Value: Integer);
begin
   if (Value = 0) then _control.FullRepaint := False;
   if (Value = 1) then _control.FullRepaint := True;
end;

function TExControlPanel.Get_Font: IExodusControlFont;
begin
      Result := TExControlFont.Create(TFont(_control.Font));
end;

function TExControlPanel.Get_Locked: Integer;
begin
    if (_control.Locked = False) then Result := 0;
    if (_control.Locked = True) then Result := 1;
end;

procedure TExControlPanel.Set_Locked(Value: Integer);
begin
   if (Value = 0) then _control.Locked := False;
   if (Value = 1) then _control.Locked := True;
end;

function TExControlPanel.Get_ParentBiDiMode: Integer;
begin
    if (_control.ParentBiDiMode = False) then Result := 0;
    if (_control.ParentBiDiMode = True) then Result := 1;
end;

procedure TExControlPanel.Set_ParentBiDiMode(Value: Integer);
begin
   if (Value = 0) then _control.ParentBiDiMode := False;
   if (Value = 1) then _control.ParentBiDiMode := True;
end;

function TExControlPanel.Get_ParentBackground: Integer;
begin
    if (_control.ParentBackground = False) then Result := 0;
    if (_control.ParentBackground = True) then Result := 1;
end;

procedure TExControlPanel.Set_ParentBackground(Value: Integer);
begin
   if (Value = 0) then _control.ParentBackground := False;
   if (Value = 1) then _control.ParentBackground := True;
end;

function TExControlPanel.Get_ParentColor: Integer;
begin
    if (_control.ParentColor = False) then Result := 0;
    if (_control.ParentColor = True) then Result := 1;
end;

procedure TExControlPanel.Set_ParentColor(Value: Integer);
begin
   if (Value = 0) then _control.ParentColor := False;
   if (Value = 1) then _control.ParentColor := True;
end;

function TExControlPanel.Get_ParentCtl3D: Integer;
begin
    if (_control.ParentCtl3D = False) then Result := 0;
    if (_control.ParentCtl3D = True) then Result := 1;
end;

procedure TExControlPanel.Set_ParentCtl3D(Value: Integer);
begin
   if (Value = 0) then _control.ParentCtl3D := False;
   if (Value = 1) then _control.ParentCtl3D := True;
end;

function TExControlPanel.Get_ParentFont: Integer;
begin
    if (_control.ParentFont = False) then Result := 0;
    if (_control.ParentFont = True) then Result := 1;
end;

procedure TExControlPanel.Set_ParentFont(Value: Integer);
begin
   if (Value = 0) then _control.ParentFont := False;
   if (Value = 1) then _control.ParentFont := True;
end;

function TExControlPanel.Get_ParentShowHint: Integer;
begin
    if (_control.ParentShowHint = False) then Result := 0;
    if (_control.ParentShowHint = True) then Result := 1;
end;

procedure TExControlPanel.Set_ParentShowHint(Value: Integer);
begin
   if (Value = 0) then _control.ParentShowHint := False;
   if (Value = 1) then _control.ParentShowHint := True;
end;

function TExControlPanel.Get_PopupMenu: IExodusControlPopupMenu;
begin
      Result := TExControlPopupMenu.Create(TTntPopupMenu(_control.PopupMenu));
end;

function TExControlPanel.Get_ShowHint: Integer;
begin
    if (_control.ShowHint = False) then Result := 0;
    if (_control.ShowHint = True) then Result := 1;
end;

procedure TExControlPanel.Set_ShowHint(Value: Integer);
begin
   if (Value = 0) then _control.ShowHint := False;
   if (Value = 1) then _control.ShowHint := True;
end;

function TExControlPanel.Get_TabOrder: Integer;
begin
      Result := _control.TabOrder;
end;

procedure TExControlPanel.Set_TabOrder(Value: Integer);
begin
      _control.TabOrder := Value;
end;

function TExControlPanel.Get_TabStop: Integer;
begin
    if (_control.TabStop = False) then Result := 0;
    if (_control.TabStop = True) then Result := 1;
end;

procedure TExControlPanel.Set_TabStop(Value: Integer);
begin
   if (Value = 0) then _control.TabStop := False;
   if (Value = 1) then _control.TabStop := True;
end;

function TExControlPanel.Get_Visible: Integer;
begin
    if (_control.Visible = False) then Result := 0;
    if (_control.Visible = True) then Result := 1;
end;

procedure TExControlPanel.Set_Visible(Value: Integer);
begin
   if (Value = 0) then _control.Visible := False;
   if (Value = 1) then _control.Visible := True;
end;




end.