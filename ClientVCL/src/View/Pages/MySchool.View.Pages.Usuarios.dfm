inherited PageUsuarios: TPageUsuarios
  Caption = 'PageUsuarios'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlPrincipal: TPanel
    inherited pnlMain: TPanel
      inherited pnlContent: TPanel
        inherited pnlContentTop: TPanel
          ExplicitTop = 5
        end
        inherited pnlContentIntern: TPanel
          inherited pnlContentRight: TPanel
            Left = 296
            Width = 852
            Padding.Left = 5
            Padding.Right = 5
            Padding.Bottom = 5
            ExplicitLeft = 296
            ExplicitTop = 0
            ExplicitWidth = 852
            inherited pnlContentRightButtons: TPanel
              Left = 5
              Top = 556
              Width = 842
              ExplicitLeft = 5
              ExplicitTop = 556
              ExplicitWidth = 842
              inherited btnClose: TSpeedButton
                Left = 708
                ExplicitLeft = 708
              end
              inherited btnSave: TSpeedButton
                Left = 574
                ExplicitLeft = 574
              end
            end
            object PageControl1: TPageControl
              Left = 5
              Top = 0
              Width = 842
              Height = 556
              ActivePage = TabSheet1
              Align = alClient
              TabOrder = 1
              object TabSheet1: TTabSheet
                Caption = 'Cadastro'
                object StackPanel1: TStackPanel
                  Left = 0
                  Top = 0
                  Width = 393
                  Height = 526
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
                  object lblCPF: TLabel
                    Left = 0
                    Top = 84
                    Width = 393
                    Height = 15
                    Caption = 'CPF'
                  end
                  object edtCPF: TEdit
                    Left = 0
                    Top = 101
                    Width = 393
                    Height = 23
                    TabOrder = 2
                  end
                  object lblPhone: TLabel
                    Left = 0
                    Top = 126
                    Width = 393
                    Height = 15
                    Caption = 'Telefone'
                  end
                  object edtPhone: TEdit
                    Left = 0
                    Top = 143
                    Width = 393
                    Height = 23
                    TabOrder = 3
                  end
                end
              end
            end
          end
          inherited dbGridContent: TDBGrid
            Width = 296
          end
        end
      end
    end
  end
end