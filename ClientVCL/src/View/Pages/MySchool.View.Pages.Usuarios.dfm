inherited PageUsuarios: TPageUsuarios
  Caption = 'PageUsuarios'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlPrincipal: TPanel
    inherited pnlTop: TPanel
      inherited pnlButtonsTop: TPanel
        inherited pnlButtonsTopContainer: TPanel
          inherited Label2: TLabel
            Height = 44
          end
          inherited lbTitle: TLabel
            Height = 44
          end
        end
      end
    end
    inherited pnlMain: TPanel
      inherited pnlContent: TPanel
        inherited pnlContentTop: TPanel
          ExplicitTop = 0
          inherited pnlSearch: TPanel
            inherited lbSearch: TLabel
              Width = 233
            end
            inherited edtSearch: TEdit
              ExplicitLeft = 0
              ExplicitTop = 12
              ExplicitHeight = 23
            end
          end
          inherited pnlButtons: TPanel
            ExplicitLeft = 6
          end
        end
        inherited pnlContentIntern: TPanel
          ExplicitTop = 41
          ExplicitHeight = 633
          inherited pnlContentRight: TPanel
            Left = 296
            Width = 852
            Padding.Left = 5
            Padding.Right = 5
            Padding.Bottom = 5
            ExplicitLeft = 296
            ExplicitWidth = 852
            ExplicitHeight = 633
            inherited pnlContentRightButtons: TPanel
              Left = 5
              Top = 590
              Width = 842
              ExplicitLeft = 5
              ExplicitTop = 590
              ExplicitWidth = 842
              inherited btnClose: TSpeedButton
                Left = 753
                ExplicitLeft = 708
              end
              inherited btnSave: TSpeedButton
                Left = 664
                ExplicitLeft = 574
              end
            end
            object PageControl1: TPageControl
              Left = 5
              Top = 0
              Width = 842
              Height = 590
              ActivePage = TabSheet1
              Align = alClient
              TabOrder = 1
              object TabSheet1: TTabSheet
                Caption = 'Cadastro'
                object StackPanel1: TStackPanel
                  Left = 289
                  Top = 0
                  Width = 393
                  Height = 560
                  Align = alLeft
                  BevelOuter = bvNone
                  ControlCollection = <
                    item
                      Control = lblCodigo
                    end
                    item
                      Control = edtCodigo
                    end
                    item
                      Control = lblName
                    end
                    item
                      Control = edtName
                    end
                    item
                      Control = lblCargo
                    end
                    item
                      Control = edtCargo
                    end
                    item
                      Control = lblCPF
                    end
                    item
                      Control = edtCPF
                    end
                    item
                      Control = lblPhone
                    end
                    item
                      Control = edtPhone
                    end>
                  HorizontalPositioning = sphpFill
                  TabOrder = 0
                  object lblCodigo: TLabel
                    Left = 0
                    Top = 0
                    Width = 393
                    Height = 15
                    Caption = 'C'#243'digo'
                  end
                  object edtCodigo: TEdit
                    Left = 0
                    Top = 17
                    Width = 393
                    Height = 23
                    TabOrder = 0
                  end
                  object lblName: TLabel
                    Left = 0
                    Top = 42
                    Width = 393
                    Height = 15
                    Caption = 'Nome'
                  end
                  object edtName: TEdit
                    Left = 0
                    Top = 59
                    Width = 393
                    Height = 23
                    TabOrder = 1
                  end
                  object lblCargo: TLabel
                    Left = 0
                    Top = 84
                    Width = 393
                    Height = 15
                    Caption = 'Cargo'
                  end
                  object edtCargo: TEdit
                    Left = 0
                    Top = 101
                    Width = 393
                    Height = 23
                    TabOrder = 4
                  end
                  object lblCPF: TLabel
                    Left = 0
                    Top = 126
                    Width = 393
                    Height = 15
                    Caption = 'CPF'
                  end
                  object edtCPF: TEdit
                    Left = 0
                    Top = 143
                    Width = 393
                    Height = 23
                    TabOrder = 2
                  end
                  object lblPhone: TLabel
                    Left = 0
                    Top = 168
                    Width = 393
                    Height = 15
                    Caption = 'Telefone'
                  end
                  object edtPhone: TEdit
                    Left = 0
                    Top = 185
                    Width = 393
                    Height = 23
                    TabOrder = 3
                  end
                end
                object StackPanel2: TStackPanel
                  Left = 0
                  Top = 0
                  Width = 289
                  Height = 560
                  Align = alLeft
                  BevelOuter = bvNone
                  ControlCollection = <
                    item
                      Control = Image2
                    end>
                  HorizontalPositioning = sphpFill
                  Padding.Left = 20
                  Padding.Top = 20
                  Padding.Right = 20
                  TabOrder = 1
                  object Image2: TImage
                    Left = 20
                    Top = 20
                    Width = 249
                    Height = 241
                  end
                end
              end
            end
          end
          inherited pnlContentLeft: TPanel
            Width = 296
            ExplicitWidth = 296
            ExplicitHeight = 633
            inherited pnContentLeftBottom: TPanel
              Width = 296
              ExplicitTop = 592
              ExplicitWidth = 296
              inherited btnPrevious: TSpeedButton
                Left = 197
                ExplicitLeft = 182
                ExplicitTop = 0
              end
              inherited lbPagination: TLabel
                Left = 220
                Height = 41
                ExplicitLeft = 220
              end
              inherited btnNext: TSpeedButton
                Left = 273
                ExplicitLeft = 276
              end
            end
            inherited dbGridContent: TDBGrid
              Width = 296
            end
          end
        end
        inherited Panel1: TPanel
          ExplicitTop = 40
        end
      end
    end
  end
end
