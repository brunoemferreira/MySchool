object PagePrincipal: TPagePrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'P'#225'gina Principal'
  ClientHeight = 567
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 567
    Align = alClient
    BevelOuter = bvNone
    Padding.Top = 35
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    object Label1: TLabel
      Left = 0
      Top = 35
      Width = 877
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'P'#225'gina Principal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 167
    end
  end
end
