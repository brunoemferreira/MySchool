object FormTemplate: TFormTemplate
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FormTemplate'
  ClientHeight = 718
  ClientWidth = 1153
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1153
    Height = 718
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1153
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object pnlButtonsTop: TPanel
        Left = 0
        Top = 0
        Width = 1153
        Height = 44
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object pnlButtonsTopContainer: TPanel
          Left = 0
          Top = 0
          Width = 1153
          Height = 44
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 31
            Height = 44
            Align = alLeft
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
              00101004000000E56AEBA90000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D23320000000970485973000000600000006000F06B42CF0000
              000774494D4507E604160E012DDA61BC82000001604944415478DAB5923D2C04
              411886DFBDF8894E25E41A0512856844271A247E4EA3100D854A222AA17027E1
              6EAF143412098946A211B90B1747A713059504058544A952B1EBD9C986BD5F17
              62936FE6FDE67BE7B999F9CED21F3FAB5C71559D665ED68D9993EA95A306D493
              A2BA2C0D70594E6A8139692C2EA8A856641B500791211F2A0E58539DDEB4839A
              20CEFDD53E20FB98BBD06DA501B69A301EA1BA896D857445EE72EC168C8B0167
              1180775F4B29224C36CFB6C6C0260F760D68035D5D0848688C718FF8C038CDE6
              296224EF72596A5B4076D135D42715D3A12C5B4B247116EFA1CDA2BD5F692FD1
              97073C7378D6D1ADE898AC844E49423EDD7BBCFA1F3AFF6A4EE96806EDC8DA54
              2DB77DD79DD22C0C56F8F7C9D08B885E54F5FD88099DE4011E39EA81FF50E38C
              CDE5BB500838C334E0D7B28CFDFF0E4831462A04A4A98DE602E2B42EA49E80E9
              99061F1B656B9831FC55717441036F7301BFFD3E0118C566E76A2738BB000000
              2574455874646174653A63726561746500323032322D30342D32325431343A30
              313A34352B30303A3030FC3ED6B70000002574455874646174653A6D6F646966
              7900323032322D30342D32325431343A30313A34352B30303A30308D636E0B00
              00000049454E44AE426082}
            Transparent = True
            ExplicitLeft = 8
            ExplicitHeight = 41
          end
          object Label2: TLabel
            Left = 31
            Top = 0
            Width = 47
            Height = 44
            Align = alLeft
            Caption = 'Home > '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbTitle: TLabel
            Left = 78
            Top = 0
            Width = 35
            Height = 44
            Align = alLeft
            Caption = 'lbTitle'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object SpeedButton3: TSpeedButton
            Left = 1105
            Top = 0
            Width = 48
            Height = 44
            Cursor = crHandPoint
            Hint = 'Configura'#231#245'es'
            Align = alRight
            ImageIndex = 0
            Images = ImageList1
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Layout = blGlyphTop
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = 1104
          end
          object SpeedButton2: TSpeedButton
            Left = 1057
            Top = 0
            Width = 48
            Height = 44
            Cursor = crHandPoint
            Hint = 'Hist'#243'rico'
            Align = alRight
            ImageIndex = 2
            Images = ImageList1
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Layout = blGlyphTop
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = 225
            ExplicitTop = -6
            ExplicitHeight = 41
          end
          object SpeedButton1: TSpeedButton
            Left = 1009
            Top = 0
            Width = 48
            Height = 44
            Cursor = crHandPoint
            Hint = 'Relat'#243'rios'
            Align = alRight
            ImageIndex = 1
            Images = ImageList1
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Layout = blGlyphTop
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = 177
            ExplicitHeight = 41
          end
        end
      end
    end
    object pnlMain: TPanel
      Left = 0
      Top = 44
      Width = 1153
      Height = 674
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object pnlContent: TPanel
        Left = 0
        Top = 0
        Width = 1153
        Height = 674
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Padding.Right = 5
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object pnlContentTop: TPanel
          Left = 0
          Top = 0
          Width = 1148
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Padding.Left = 6
          Padding.Right = 3
          ParentBackground = False
          TabOrder = 0
          object pnlSearch: TPanel
            Left = 912
            Top = 0
            Width = 233
            Height = 40
            Align = alRight
            BevelOuter = bvNone
            Padding.Bottom = 5
            ParentBackground = False
            TabOrder = 0
            object lbSearch: TLabel
              Left = 0
              Top = 0
              Width = 233
              Height = 12
              Align = alTop
              Caption = 'Pesquisar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -9
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 38
            end
            object SpeedButton4: TSpeedButton
              Left = 200
              Top = 12
              Width = 33
              Height = 23
              Cursor = crHandPoint
              Align = alRight
              Flat = True
              OnClick = SpeedButton4Click
              ExplicitLeft = 216
              ExplicitTop = 6
              ExplicitHeight = 28
            end
            object edtSearch: TEdit
              Left = 0
              Top = 12
              Width = 200
              Height = 23
              Align = alClient
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnKeyPress = edtSearchKeyPress
            end
          end
          object pnlButtons: TPanel
            Left = 6
            Top = 0
            Width = 277
            Height = 40
            Align = alLeft
            BevelOuter = bvNone
            Padding.Top = 6
            Padding.Bottom = 6
            ParentBackground = False
            TabOrder = 1
            object btnInsert: TSpeedButton
              Left = 0
              Top = 6
              Width = 89
              Height = 28
              Cursor = crHandPoint
              Hint = 'Incluir'
              Align = alLeft
              Caption = 'Incluir'
              ImageIndex = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnInsertClick
              ExplicitLeft = 8
              ExplicitTop = 0
              ExplicitHeight = 41
            end
            object btnRefresh: TSpeedButton
              Left = 178
              Top = 6
              Width = 89
              Height = 28
              Cursor = crHandPoint
              Hint = 'Incluir'
              Align = alLeft
              Caption = 'Atualizar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnRefreshClick
              ExplicitTop = 5
            end
            object btnDelete: TSpeedButton
              Left = 89
              Top = 6
              Width = 89
              Height = 28
              Cursor = crHandPoint
              Hint = 'Excluir'
              Align = alLeft
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnDeleteClick
              ExplicitLeft = 95
              ExplicitTop = 5
            end
          end
        end
        object pnlContentIntern: TPanel
          Left = 0
          Top = 41
          Width = 1148
          Height = 633
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object pnlContentRight: TPanel
            Left = 568
            Top = 0
            Width = 580
            Height = 633
            Align = alRight
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object pnlContentRightButtons: TPanel
              Left = 0
              Top = 595
              Width = 580
              Height = 38
              Align = alBottom
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Top = 6
              Padding.Bottom = 6
              ParentBackground = False
              TabOrder = 0
              object btnClose: TSpeedButton
                Left = 491
                Top = 6
                Width = 89
                Height = 26
                Cursor = crHandPoint
                Hint = 'Fechar'
                Align = alRight
                Caption = 'Fechar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCloseClick
                ExplicitLeft = 446
                ExplicitTop = 1
                ExplicitHeight = 31
              end
              object btnSave: TSpeedButton
                Left = 402
                Top = 6
                Width = 89
                Height = 26
                Cursor = crHandPoint
                Hint = 'Salvar'
                Align = alRight
                Caption = 'Salvar'
                ImageIndex = 4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = btnSaveClick
                ExplicitLeft = 312
                ExplicitTop = 1
                ExplicitHeight = 31
              end
            end
          end
          object pnlContentLeft: TPanel
            Left = 0
            Top = 0
            Width = 568
            Height = 633
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            object pnContentLeftBottom: TPanel
              Left = 0
              Top = 592
              Width = 568
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 0
              object btnPrevious: TSpeedButton
                Left = 469
                Top = 0
                Width = 23
                Height = 41
                Align = alRight
                ImageIndex = 5
                Flat = True
                OnClick = btnPreviousClick
                ExplicitLeft = 425
                ExplicitTop = 6
              end
              object lbPagination: TLabel
                Left = 492
                Top = 0
                Width = 53
                Height = 41
                Align = alRight
                Caption = '  P'#225'ginas  '
                Layout = tlCenter
                ExplicitHeight = 15
              end
              object btnNext: TSpeedButton
                Left = 545
                Top = 0
                Width = 23
                Height = 41
                Align = alRight
                ImageIndex = 6
                Flat = True
                OnClick = btnNextClick
                ExplicitLeft = 539
              end
            end
            object dbGridContent: TDBGrid
              Left = 0
              Top = 0
              Width = 568
              Height = 592
              Align = alClient
              BorderStyle = bsNone
              DataSource = DataSource1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clDefault
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clDefault
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = [fsBold]
              OnDblClick = dbGridContentDblClick
              OnTitleClick = dbGridContentTitleClick
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 40
          Width = 1148
          Height = 1
          Align = alTop
          BevelOuter = bvNone
          Color = 14211288
          ParentBackground = False
          TabOrder = 2
        end
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 768
    Top = 232
    Bitmap = {
      494C010103000800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011A0808
      0842080808420101011900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      083F484848BD464646BB464646BB464646BB464646BB464646BB464646BB4646
      46BB464646BB464646BB464646BB464646BB464646BB464646BB464646BB4848
      48BD0707073E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131362808080FB8484
      84FF848484FF7E7E7EFA12121261000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003F3F
      3FB2000000090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00093F3F3FB10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000106060638242424864646
      46BB595959D35B5B5BD5464646BB2C2C2C940A0A0A4800000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B0000001600000000000000006E6E6EE94B4B4BC20909
      0945090909454B4B4BC26C6C6CE70000000000000000000000160000000B0000
      0000000000000000000000000000000000000000000000000000000000004141
      41B300000000080808422F2F2F992F2F2F992B2B2B920000000F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000414141B30000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080840565656CE848484FF6E6E6EE93F3F
      3FB22B2B2B932B2B2B923C3C3CAD646464DF848484FF696969E4151515660000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000141414647A7A7AF6848484FF393939A814141464848484FF161616690000
      0000000000001616166A848484FF141414643A3A3AAA848484FF797979F51313
      1363000000000000000000000000000000000000000000000000000000004141
      41B300000000343434A102020222000000111E1E1E7B08080842000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000414141B30000000000000000000000000000000000000000000000000000
      00000000000000000000020202247E7E7EF94E4E4EC60A0A0A47000000030000
      00000000000000000000000000000000000004040431393939A9828282FE4949
      49BF000000140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      1363828282FE444444B8222222827E7E7EF9848484FF565656CF0000000F0000
      0000000000000000000F565656CF848484FF7C7C7CF822222282444444B88282
      82FE141414640000000000000000000000000000000000000000000000004141
      41B300000000343434A100000012000000001A1A1A72080808420303032A4646
      46BB464646BB464646BB464646BB464646BB464646BB464646BB0808083F0000
      0000414141B30000000000000000000000000000000000000000000000000000
      000000000000000000001111115D848484FF01010118000000060F0F0F573535
      35A34E4E4EC6595959D2414141B41A1A1A730101011900000000080808426F6F
      6FEB616161DC0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000C7A7A
      7AF6444444B80000000600000000010101170505053300000004000000000000
      0000000000000000000000000004040404310101011700000000000000064444
      44B8797979F50000000B00000000000000000000000000000000000000004141
      41B3000000002F2F2F99212121811C1C1C77414141B4060606390101011B1C1C
      1C771C1C1C771C1C1C771C1C1C771C1C1C771C1C1C771C1C1C77030303280000
      0000414141B30000000000000000000000000000000000000000000000000000
      00000000000000000000020202247E7E7EF9595959D36C6C6CE8848484FF5252
      52CA343434A12C2C2C95454545BA7C7C7CF7797979F51E1E1E7B000000020202
      02236E6E6EE94C4C4CC300000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011A8484
      84FF2121218100000000000000000000000000000000000000000000000A0505
      0532050505320000000A00000000000000000000000000000000000000002121
      2181848484FF0101011800000000000000000000000000000000000000004141
      41B3000000000000001209090944090909440707073B000000010000000F0909
      0944090909440909094409090944090909440909094409090944000000160000
      0000414141B30000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080842393939A82A2A2A900303032A0000
      0000000000000000000000000000000000102727278B828282FD3B3B3BAB0000
      00030707073C808080FC1B1B1B74000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3BAB7C7C7CF80000001600000000000000000000000E2D2D2D967A7A7AF68484
      84FF848484FF797979F52C2C2C940000000D0000000000000000000000167C7C
      7CF8393939A90000000000000000000000000000000000000000000000004141
      41B300000000010101180E0E0E550E0E0E550A0A0A4A00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000414141B30000000000000000000000000000000000000000000000000000
      000A1111115D0000000600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D51808080FC2323
      2385000000003030309A717171ED0000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      1465848484FF05050532000000000000000E585858D1828282FE3131319C0C0C
      0C4F0C0C0C503232329E828282FE575757D00000000D00000000050505338484
      84FF141414640000000000000000000000000000000000000000000000004141
      41B3000000003030309B19191971151515663A3A3AAA0707073B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000414141B300000000000000000000000000000000000000000000000A4949
      49BF848484FF414141B300000006000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F7E7E
      7EF9020202240101011D828282FE1212125F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000131313626C6C6CE88484
      84FF565656CF00000004000000002E2E2E97828282FD0C0C0C4D000000000000
      000000000000000000000C0C0C50828282FE2C2C2C9400000000000000045757
      57D0848484FF6C6C6CE712121261000000000000000000000000000000004141
      41B300000000343434A100000012000000001A1A1A7208080842020202242525
      2588252525882525258825252588252525882525258825252588050505330000
      00000404042E000000000000000000000000000000000000000A494949BF7878
      78F41E1E1E7B7C7C7CF8414141B3000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000096F6F
      6FEB2525258900000000515151C93B3B3BAC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101011A808080FB4B4B4BC21515
      15680000000E000000000000000B7A7A7AF63030309B00000000000000000000
      00000000000000000000000000003232329E797979F50000000A000000000000
      000F161616694B4B4BC27E7E7EFA010101190000000000000000000000004141
      41B300000000343434A1050505320202022223232384080808410000000C0909
      0944090909440909094409090944090909440909094409090944000000130000
      00001616166A0000000000000000000000000000000A494949BF787878F40707
      073E000000000A0A0A4A7C7C7CF8414141B30000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      33A0575757D0000000002929298F5E5E5ED80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808083F848484FF080808420000
      0000000000000000000005050533848484FF0C0C0C4D00000000000000000000
      00000000000000000000000000000C0C0C4F848484FF05050532000000000000
      00000000000008080842848484FF0808083F0000000000000000000000004141
      41B3000000000606063A2525258825252588222222820000000D020202252525
      2588252525882525258825252588252525882525258825252588050505340000
      0000414141B3000000000000000000000000454545B9848484FF656565E10D0D
      0D52000000001111115D6A6A6AE6848484FF393939A900000000000000000000
      000009090943454545B9464646BB464646BB3B3B3BAB0000000F000000001D1D
      1D78737373EF000000001B1B1B75767676F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808083F848484FF080808420000
      0000000000000000000005050534848484FF0C0C0C4D00000000000000000000
      00000000000000000000000000000C0C0C4E848484FF05050532000000000000
      00000000000008080842848484FF0808083F0000000000000000000000004141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000414141B30000000000000000000000002C2C2C95464646BB6E6E6EEA4242
      42B6000000003C3C3CAD727272EE464646BB2525258900000000000000000000
      00002B2B2B92787878F4464646BB464646BB3B3B3BAB0000000F000000001C1C
      1C77737373EF000000001B1B1B74767676F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101011A808080FB4B4B4BC21515
      15680000000E000000000000000B7A7A7AF63030309A00000000000000000000
      00000000000000000000000000003131319C797979F50000000A000000000000
      000F161616694B4B4BC2808080FB010101190000000000000000000000004141
      41B300000000222222833E3E3EB03A3A3AAA515151C90303032A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000414141B300000000000000000000000000000000000000002E2E2E985656
      56CF000000002929298F646464DF000000000000000000000000000000000000
      00002B2B2B925B5B5BD400000000000000000000000000000000000000003232
      329E575757D0000000002929298E5E5E5ED90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000131313636E6E6EE98484
      84FF565656CE00000004000000002E2E2E98828282FD0B0B0B4C000000000000
      000000000000000000000C0C0C4D828282FD2C2C2C9400000000000000045656
      56CF848484FF6C6C6CE813131362000000000000000000000000000000004141
      41B300000000343434A100000012000000001A1A1A72080808420000000C0909
      0944090909440909094409090944090909440909094409090944000000140000
      0000414141B300000000000000000000000000000000000000001818186E7E7E
      7EF90000000F0A0A0A49848484FF050505340000000000000000000000000000
      00002B2B2B925B5B5BD400000000000000000000000000000000000000086E6E
      6EE92727278B00000000505050C73B3B3BAC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      1566848484FF04040431000000000000000F595959D2828282FD3030309A0C0C
      0C4D0C0C0C4E3030309B828282FE575757D00000000D00000000050505338484
      84FF141414650000000000000000000000000000000000000000000000004141
      41B300000000343434A100000012000000001A1A1A72080808420101011E1C1C
      1C771C1C1C771C1C1C771C1C1C771C1C1C771C1C1C771C1C1C770303032B0000
      0000414141B30000000000000000000000000000000000000000020202218282
      82FE1010105B00000005606060DA464646BB0000000100000000000000000000
      00002B2B2B925B5B5BD4000000000000000000000000000000001E1E1E7B7E7E
      7EFA020202260101011C828282FD121212600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3BAB7C7C7CF80000001500000000000000000000000F2E2E2E987A7A7AF68484
      84FF848484FF7A7A7AF62D2D2D960000000E0000000000000000010101177E7E
      7EF93A3A3AAA0000000000000000000000000000000000000000000000004141
      41B30000000016161669484848BD464646BB4B4B4BC10101011F0303032A4646
      46BB464646BB464646BB464646BB464646BB464646BB464646BB0808083F0000
      0000414141B30000000000000000000000000000000000000000000000004949
      49BF5B5B5BD4000000030A0A0A4A828282FD2626268A00000001000000000000
      00000F0F0F582828288D0000000000000000000000000C0C0C4F808080FB2525
      2588000000002E2E2E97717171ED000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101198484
      84FF2121218100000000000000000000000000000000000000000000000B0505
      0534050505340000000B00000000000000000000000000000000000000002222
      2282848484FF0101011900000000000000000000000000000000000000004141
      41B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010D0D0D531C1C1C771C1C1C771C1C1C771C1C
      1C77494949BF0000000000000000000000000000000000000000000000000606
      0637828282FE1B1B1B750000000019191971828282FE3E3E3EB0020202240000
      00000000000000000000000000000000000F24242487808080FC3C3C3CAD0000
      00030606063A7E7E7EFA1B1B1B75000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D7A7A
      7AF6444444B80000000600000000000000160404042F00000004000000000000
      00000000000000000000000000040404042F0000001500000000000000064444
      44B87A7A7AF60000000C00000000000000000000000000000000000000004141
      41B300000000020202211B1B1B751C1C1C771C1C1C771C1C1C771C1C1C771C1C
      1C771C1C1C770303032C1818186F2020207F0505053405050533060606375151
      51C90E0E0E550000000000000000000000000000000000000000000000000000
      00002828288D808080FC0C0C0C4E000000000D0D0D526A6A6AE5808080FC5050
      50C73030309B2B2B2B93444444B87A7A7AF67A7A7AF62020207F000000020202
      02226C6C6CE74C4C4CC300000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      1464828282FE444444B8212121817C7C7CF8848484FF545454CD0000000E0000
      0000000000000000000E565656CE848484FF7C7C7CF821212181444444B88282
      82FE131313630000000000000000000000000000000000000000000000004141
      41B3000000003030309B0D0D0D52090909440909094409090944090909440909
      09440909094400000014393939A90000000A0000000000000004363636A40F0F
      0F56000000000000000000000000000000000000000000000000000000000000
      0000000000033E3E3EAF808080FB1717176D000000010000000A121212613B3B
      3BAB535353CB595959D3424242B61B1B1B750101011A000000000808083F6E6E
      6EEA616161DC0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000131313637A7A7AF6848484FF3B3B3BAB15151566848484FF151515680000
      0000000000001616166A848484FF13131363393939A9848484FF7A7A7AF61313
      1363000000000000000000000000000000000000000000000000000000004141
      41B300000000343434A100000012000000000000000000000000000000000000
      000000000000000000003B3B3BAB0000000800000003343434A11010105B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000032929298F848484FF515151C80A0A0A48000000040000
      0000000000000000000000000000000000000404042E373737A6828282FD4A4A
      4AC0000000140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C0101011800000000000000006C6C6CE84B4B4BC10909
      0945090909454B4B4BC26C6C6CE70000000000000000010101170000000C0000
      0000000000000000000000000000000000000000000000000000000000004141
      41B300000000121212603E3E3EAF3A3A3AAA3A3A3AAA3A3A3AAA3A3A3AAA3A3A
      3AAA3A3A3AAA3A3A3AAA686868E30000000C353535A30F0F0F56000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090944535353CB848484FF717171ED4141
      41B32E2E2E982A2A2A913A3A3AAA636363DE848484FF6A6A6AE5151515670000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131363808080FB8484
      84FF848484FF808080FB13131362000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003F3F
      3FB2000000080000000000000000000000000000000000000000000000000000
      000000000000000000003B3B3BAB3A3A3AAA0F0F0F5600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000105050536232323844242
      42B5575757D05B5B5BD5484848BD2C2C2C950A0A0A4A00000008000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011A0808
      0842080808420101011A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0840484848BD464646BB464646BB464646BB464646BB464646BB464646BB4646
      46BB464646BB464646BB686868E30F0F0F560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    Left = 40
    Top = 617
  end
end
