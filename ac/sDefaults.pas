unit sDefaults;
{$i sDefs.inc}

interface

uses sConst, ComCtrls;

type // Do not change types
  TacThirdPartyTypes = (tpEdit, tpButton, tpBitBtn, tpCheckBox, tpComboBox, tpGrid, tpGroupBox, tpListView, tpPanel,
                     tpTreeView, tpwwEdit, tpGridEh, tpVirtualTree, tpPageControl, tpTabControl, tpToolBar, tpStatusBar);

const
  acLastSupportedType = tpStatusBar; // Do not change

  // Names of standard and 3rd-party controls for automatic skinning (may be changed before recompiling of the package)
{$IFNDEF RUNIDEONLY} // Third-party list is empty by default now because is not used in most projects AC2K9
  sl_Third_Edit = ' ';
  sl_Third_Panel = ' ';
  sl_Third_Button = ' ';
  sl_Third_BitBtn = ' ';
  sl_Third_CheckBox = ' ';
  sl_Third_GroupBox = ' ';
  sl_Third_Grid = ' ';
  sl_Third_TreeView = ' ';
  sl_Third_ComboBox = ' ';
  sl_Third_ListView = ' ';
  sl_Third_WWEdit = ' ';
  sl_Third_GridEH = ' ';
  sl_Third_VirtualTree = ' ';
  sl_Third_PageControl = ' ';
  sl_Third_TabControl = ' ';
  sl_Third_ToolBar = ' ';
  sl_Third_StatusBar = ' ';
{$ELSE}
  sl_Third_Edit =
{$IFDEF TNTUNICODE}
    'TTntEdit'           + #13#10 +
    'TTntMemo'           + #13#10 +
    'TTntListBox'        + #13#10 +
    'TTntCheckListBox'   + #13#10 +
    'TTntRichEdit'       + #13#10 +
    'TTntDBEdit'         + #13#10 +
    'TTntDBMemo'         + #13#10 +
    'TTntDBRichEdit'     + #13#10 +
{$ENDIF}
    'TEdit'              + #13#10 +
    'TMemo'              + #13#10 +
    'TMaskEdit'          + #13#10 +
    'TLabeledEdit'       + #13#10 +
    'THotKey'            + #13#10 +
    'TListBox'           + #13#10 +
    'TCheckListBox'      + #13#10 +
    'TRichEdit'          + #13#10 +
    'TDateTimePicker';

  sl_Third_Panel =
{$IFDEF TNTUNICODE}
    'TTntPanel'          + #13#10 +
{$ENDIF}
    'TPanel';

  sl_Third_Button =
{$IFDEF TNTUNICODE}
    'TTntButton'         + #13#10 +
{$ENDIF}
    'TButton';

  sl_Third_BitBtn =
{$IFDEF USEPNG}
    'TPngBitBtn'         + #13#10 +
{$ENDIF}
{$IFDEF TNTUNICODE}
    'TTntBitBtn'         + #13#10 +
{$ENDIF}
    'TBitBtn';

  sl_Third_CheckBox =
{$IFDEF TNTUNICODE}
    'TTntCheckBox'       + #13#10 +
    'TTntRadioButton'    + #13#10 +
    'TTntDBCheckBox'     + #13#10 +
    'TTntDBRadioButton'  + #13#10 +
    'TTntGroupButton'    + #13#10 +
{$ENDIF}
    'TCheckBox'          + #13#10 +
    'TRadioButton'       + #13#10 +
    'TGroupButton';

  sl_Third_GroupBox =
{$IFDEF TNTUNICODE}
    'TTntGroupBox'       + #13#10 +
    'TTntRadioGroup'     + #13#10 +
    'TTntDBRadioGroup'   + #13#10 +
{$ENDIF}
    'TGroupBox'          + #13#10 +
    'TRadioGroup';

  sl_Third_Grid =
{$IFDEF TNTUNICODE}
    'TTntStringGrid'     + #13#10 +
    'TTntDrawGrid'       + #13#10 +
    'TTntDBGrid'         + #13#10 +
{$ENDIF}
    'TStringGrid'        + #13#10 +
    'TDrawGrid';

  sl_Third_TreeView =
{$IFDEF TNTUNICODE}
    'TTntTreeView'       + #13#10 +
{$ENDIF}
    'TTreeView';

  sl_Third_ComboBox =
{$IFDEF TNTUNICODE}
    'TTntComboBox'       + #13#10 +
    'TTntDBComboBox'     + #13#10 +
{$ENDIF}
    'TComboBox'          + #13#10 +
    'TColorBox';

  sl_Third_ListView =
{$IFDEF TNTUNICODE}
    'TTntListView'       + #13#10 +
{$ENDIF}
    'TListView';

  sl_Third_WWEdit =
    ' ';

  sl_Third_GridEH =
    ' ';

  sl_Third_VirtualTree =
    ' ';

  sl_Third_PageControl =
    'TPageControl';

  sl_Third_TabControl =
    'TTabControl';

  sl_Third_ToolBar =
    'TToolBar';

  sl_Third_StatusBar =
    'TStatusBar';
{$ENDIF}

  // Do not change
  acThirdNames : array[0..ord(acLastSupportedType)] of string = (sl_Third_Edit, sl_Third_Button, sl_Third_BitBtn, sl_Third_CheckBox,
    sl_Third_ComboBox, sl_Third_Grid, sl_Third_GroupBox, sl_Third_ListView, sl_Third_Panel, sl_Third_TreeView, sl_Third_wwEdit,
    sl_Third_GridEh, sl_Third_VirtualTree, sl_Third_PageControl, sl_Third_TabControl, sl_Third_ToolBar, sl_Third_StatusBar);
  acThirdCaptions : array[0..ord(acLastSupportedType)] of string = ('Edit', 'Button', 'BitBtn', 'CheckBox', 'ComboBox', 'Grid', 'GroupBox', 'ListView', 'Panel',
    'TreeView', 'wwEdit', 'GridEh', 'VirtualTree', 'PageControl', 'TabControl', 'ToolBar', 'StatusBar');

  // Values which may be changed before package installing :
  // Skins
  DefSkinsDir = 'c:\Skins';             // Default directory with skins
  // Buttons
  DefNumGlyphs = 1;                     // Default number of glyphs in image
  DefDisabledGlyphKind = [dgBlended];
  DefDisabledKind = [dkBlended];
  DefDisabledBlend = 0.4;
  DefMakeSkinMenu = False; // True; Changed in the v5.44 after many requests from AC users
  // Glyphs
  DefGlyphBlend = 0;
{$IFNDEF NOTFORHELP}
  // Calendar
  DefWeekends = [dowSunday];
{$IFDEF CHANGEFORMSINDESIGN}
  ChangeFormsInDesign = True;
{$ELSE}
  ChangeFormsInDesign = False;
{$ENDIF}

{$ENDIF}

implementation

end.