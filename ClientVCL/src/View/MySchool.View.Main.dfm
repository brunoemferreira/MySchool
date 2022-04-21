object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'My School'
  ClientHeight = 550
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 550
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlMenu: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 550
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 193
        Width = 185
        Height = 80
        Align = alTop
        Caption = 'Usu'#225'rios'
        Flat = True
        OnClick = SpeedButton1Click
        ExplicitTop = 161
      end
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 113
        Width = 185
        Height = 80
        Align = alTop
        Caption = 'Principal'
        Flat = True
        OnClick = SpeedButton2Click
      end
      object pnlLogo: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 113
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnlFull: TPanel
      Left = 185
      Top = 0
      Width = 648
      Height = 550
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 648
        Height = 113
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
      object pnlPrincipal: TPanel
        Left = 0
        Top = 113
        Width = 648
        Height = 437
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 81
        ExplicitHeight = 469
      end
    end
  end
end
