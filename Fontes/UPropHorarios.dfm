object Frm_ProHora: TFrm_ProHora
  Left = 47
  Top = 115
  Width = 1364
  Height = 749
  Caption = 'Frm_ProHora'
  Color = 13294508
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1348
    Height = 49
    Align = alTop
    BorderInner = fsFlatBold
    BorderOuter = fsNone
    Caption = 'Proposta de Hor'#225'rio'
    Color = 13294508
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 49
    Width = 1348
    Height = 662
    Align = alClient
    BorderInner = fsFlatBold
    Color = 13294508
    TabOrder = 1
    object RzPanel3: TRzPanel
      Left = 8
      Top = 8
      Width = 529
      Height = 313
      BorderInner = fsFlatBold
      BorderOuter = fsNone
      Color = 13294508
      TabOrder = 0
      object RzLabel6: TRzLabel
        Left = 8
        Top = 16
        Width = 92
        Height = 26
        Caption = 'Professor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBGProfs: TRzDBGrid
        Left = 8
        Top = 43
        Width = 513
        Height = 265
        DataSource = DSFunc
        DefaultDrawing = True
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDFUNC'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_FUNC'
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG_FUNC'
            Title.Caption = 'RG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS_FUNC'
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end>
      end
      object NomeProf: TRzEdit
        Left = 104
        Top = 19
        Width = 417
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = NomeProfChange
      end
    end
    object Pnlprophor: TRzPanel
      Left = 545
      Top = 8
      Width = 792
      Height = 641
      BorderInner = fsFlatBold
      BorderOuter = fsNone
      Color = 13294508
      Enabled = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 7
        Width = 77
        Height = 26
        Caption = 'Matutino'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 212
        Width = 92
        Height = 26
        Caption = 'Vespertino'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel3: TRzLabel
        Left = 8
        Top = 418
        Width = 72
        Height = 26
        Caption = 'Noturno'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 8
        Top = 29
        Width = 769
        Height = 177
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 8
        Top = 234
        Width = 769
        Height = 177
        Shape = bsFrame
      end
      object Bevel3: TBevel
        Left = 9
        Top = 443
        Width = 769
        Height = 176
        Shape = bsFrame
      end
      object DBGMatSeg: TRzDBGrid
        Left = 28
        Top = 31
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSMatSeg
        DefaultDrawing = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGMatSegDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Segunda-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 9
        Top = 48
        Width = 19
        Height = 157
        TabOrder = 1
        object Label1: TLabel
          Left = 2
          Top = 9
          Width = 12
          Height = 16
          Caption = '1'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 2
          Top = 69
          Width = 12
          Height = 16
          Caption = '3'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 2
          Top = 39
          Width = 12
          Height = 16
          Caption = '2'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 2
          Top = 101
          Width = 12
          Height = 16
          Caption = '4'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 2
          Top = 133
          Width = 12
          Height = 16
          Caption = '5'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGMatQui: TRzDBGrid
        Left = 475
        Top = 31
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSMatQui
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGMatQuiDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Quinta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGMatSex: TRzDBGrid
        Left = 625
        Top = 31
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSMatSex
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGMatSexDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Sexta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGMatQua: TRzDBGrid
        Left = 325
        Top = 31
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSMatQua
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGMatQuaDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Quarta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGMatTer: TRzDBGrid
        Left = 175
        Top = 31
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSMatTer
        DefaultDrawing = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGMatTerDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ter'#231'a-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 9
        Top = 253
        Width = 19
        Height = 157
        TabOrder = 6
        object Label6: TLabel
          Left = 2
          Top = 9
          Width = 12
          Height = 16
          Caption = '1'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 2
          Top = 69
          Width = 12
          Height = 16
          Caption = '3'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 2
          Top = 39
          Width = 12
          Height = 16
          Caption = '2'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 2
          Top = 101
          Width = 12
          Height = 16
          Caption = '4'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 2
          Top = 133
          Width = 12
          Height = 16
          Caption = '5'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 19
          Height = 157
          TabOrder = 0
          object Label11: TLabel
            Left = 2
            Top = 9
            Width = 12
            Height = 16
            Caption = '1'#170
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 2
            Top = 69
            Width = 12
            Height = 16
            Caption = '3'#170
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 2
            Top = 39
            Width = 12
            Height = 16
            Caption = '2'#170
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 2
            Top = 101
            Width = 12
            Height = 16
            Caption = '4'#170
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 2
            Top = 133
            Width = 12
            Height = 16
            Caption = '5'#170
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object DBGVespSeg: TRzDBGrid
        Left = 28
        Top = 236
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSVesSeg
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGVespSegDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Segunda-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGVespTer: TRzDBGrid
        Left = 175
        Top = 236
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSVesTer
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGVespTerDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ter'#231'a-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGVespQua: TRzDBGrid
        Left = 325
        Top = 236
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSVesQua
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGVespQuaDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Quarta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGVespQui: TRzDBGrid
        Left = 475
        Top = 236
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSVesQui
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGVespQuiDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Quinta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGVespSex: TRzDBGrid
        Left = 625
        Top = 236
        Width = 150
        Height = 173
        BorderStyle = bsNone
        DataSource = DSVesSex
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGVespSexDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Sexta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 10
        Top = 461
        Width = 19
        Height = 157
        TabOrder = 12
        object Label16: TLabel
          Left = 2
          Top = 9
          Width = 12
          Height = 16
          Caption = '1'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 2
          Top = 69
          Width = 12
          Height = 16
          Caption = '3'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 2
          Top = 39
          Width = 12
          Height = 16
          Caption = '2'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 2
          Top = 101
          Width = 12
          Height = 16
          Caption = '4'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 2
          Top = 133
          Width = 12
          Height = 16
          Caption = '5'#170
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGNotSeg: TRzDBGrid
        Left = 29
        Top = 445
        Width = 150
        Height = 172
        BorderStyle = bsNone
        DataSource = DSNotSeg
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 13
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGNotSegDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Segunda-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGNotTer: TRzDBGrid
        Left = 176
        Top = 445
        Width = 150
        Height = 172
        BorderStyle = bsNone
        DataSource = DSNotTer
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 14
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGNotTerDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ter'#231'a-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGNotQua: TRzDBGrid
        Left = 326
        Top = 445
        Width = 150
        Height = 172
        BorderStyle = bsNone
        DataSource = DSNotQua
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 15
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGNotQuaDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Quarta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGNotQui: TRzDBGrid
        Left = 476
        Top = 445
        Width = 150
        Height = 172
        BorderStyle = bsNone
        DataSource = DSNotQui
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 16
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGNotQuiDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Quinta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object DBGNotSex: TRzDBGrid
        Left = 626
        Top = 445
        Width = 150
        Height = 172
        BorderStyle = bsNone
        DataSource = DSNotSex
        DefaultDrawing = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 28
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 17
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGNotSexDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -3
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Sexta-Feira'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -10
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 133
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 161
        Top = 31
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 18
      end
      object Panel6: TPanel
        Left = 308
        Top = 31
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 19
      end
      object Panel7: TPanel
        Left = 458
        Top = 31
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 20
      end
      object Panel8: TPanel
        Left = 608
        Top = 31
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 21
      end
      object Panel9: TPanel
        Left = 758
        Top = 31
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 22
      end
      object Panel10: TPanel
        Left = 161
        Top = 235
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 23
      end
      object Panel11: TPanel
        Left = 308
        Top = 235
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 24
      end
      object Panel12: TPanel
        Left = 458
        Top = 235
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 25
      end
      object Panel13: TPanel
        Left = 608
        Top = 235
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 26
      end
      object Panel14: TPanel
        Left = 758
        Top = 235
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 27
      end
      object Panel15: TPanel
        Left = 162
        Top = 444
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 28
      end
      object Panel16: TPanel
        Left = 309
        Top = 444
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 29
      end
      object Panel17: TPanel
        Left = 459
        Top = 444
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 30
      end
      object Panel18: TPanel
        Left = 609
        Top = 444
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 31
      end
      object Panel19: TPanel
        Left = 759
        Top = 444
        Width = 17
        Height = 173
        BevelOuter = bvNone
        TabOrder = 32
      end
    end
    object RzPanel5: TRzPanel
      Left = 8
      Top = 576
      Width = 529
      Height = 73
      BorderInner = fsFlatBold
      BorderOuter = fsNone
      Color = 13294508
      TabOrder = 2
      object RzLabel4: TRzLabel
        Left = 22
        Top = 11
        Width = 35
        Height = 24
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel5: TRzLabel
        Left = 150
        Top = 12
        Width = 127
        Height = 24
        Caption = 'Semestre (A/B)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBano: TRzEdit
        Left = 22
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object DBsemestre: TRzEdit
        Left = 150
        Top = 34
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BtnAtualizar: TRzButton
        Left = 302
        Top = 23
        Width = 177
        Height = 33
        BiDiMode = bdLeftToRight
        Caption = 'Atualizar'
        Color = 13294508
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        OnClick = BtnAtualizarClick
      end
    end
    object RzPanel6: TRzPanel
      Left = 8
      Top = 328
      Width = 529
      Height = 241
      BorderInner = fsFlatBold
      BorderOuter = fsNone
      Color = 13294508
      TabOrder = 3
      object RzLabel7: TRzLabel
        Left = 288
        Top = 8
        Width = 131
        Height = 26
        Caption = 'Dados Pessoais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel8: TRzLabel
        Left = 200
        Top = 43
        Width = 39
        Height = 23
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel9: TRzLabel
        Left = 200
        Top = 107
        Width = 34
        Height = 23
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RzLabel10: TRzLabel
        Left = 200
        Top = 164
        Width = 28
        Height = 23
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DbImgPro: TDBImage
        Left = 8
        Top = 8
        Width = 185
        Height = 225
        DataField = 'FOTO_FUNC'
        DataSource = DSFunc
        Stretch = True
        TabOrder = 0
      end
      object Dbemail: TRzDBEdit
        Left = 200
        Top = 64
        Width = 169
        Height = 21
        DataSource = DSFunc
        DataField = 'EMAIL_FUNC'
        ReadOnly = True
        Color = clInfoBk
        TabOrder = 1
      end
      object DBFone: TRzDBEdit
        Left = 200
        Top = 128
        Width = 169
        Height = 21
        DataSource = DSFunc
        DataField = 'FONERES_FUNC'
        ReadOnly = True
        Color = clInfoBk
        TabOrder = 2
      end
      object dbcpf: TRzDBEdit
        Left = 200
        Top = 192
        Width = 169
        Height = 21
        DataSource = DSFunc
        DataField = 'CPF_FUNC'
        ReadOnly = True
        Color = clInfoBk
        TabOrder = 3
      end
    end
  end
  object DSFunc: TDataSource
    DataSet = CDSFunc
    Left = 144
    Top = 8
  end
  object CDSFunc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 104
    Top = 8
    object CDSFuncIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSFuncNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      Required = True
      Size = 50
    end
    object CDSFuncDATANASC_FUNC: TDateField
      FieldName = 'DATANASC_FUNC'
      Required = True
    end
    object CDSFuncCPF_FUNC: TStringField
      FieldName = 'CPF_FUNC'
      Size = 15
    end
    object CDSFuncRG_FUNC: TStringField
      FieldName = 'RG_FUNC'
      Size = 13
    end
    object CDSFuncNACIO_FUNC: TStringField
      FieldName = 'NACIO_FUNC'
      Required = True
      Size = 32
    end
    object CDSFuncNATUR_FUNC: TStringField
      FieldName = 'NATUR_FUNC'
      Required = True
      Size = 32
    end
    object CDSFuncSEXO_FUNC: TStringField
      FieldName = 'SEXO_FUNC'
      Required = True
      Size = 1
    end
    object CDSFuncEMAIL_FUNC: TStringField
      FieldName = 'EMAIL_FUNC'
      Size = 100
    end
    object CDSFuncOBS_FUNC: TStringField
      FieldName = 'OBS_FUNC'
      Required = True
      Size = 50
    end
    object CDSFuncDATACAD_FUNC: TDateField
      FieldName = 'DATACAD_FUNC'
      Required = True
    end
    object CDSFuncSTATUS_FUNC: TStringField
      FieldName = 'STATUS_FUNC'
      Required = True
      Size = 1
    end
    object CDSFuncIDCAR: TIntegerField
      FieldName = 'IDCAR'
    end
    object CDSFuncDESC_CAR: TStringField
      FieldName = 'DESC_CAR'
      Size = 30
    end
    object CDSFuncFONERES_FUNC: TStringField
      FieldName = 'FONERES_FUNC'
      Size = 11
    end
    object CDSFuncCELULAR_FUNC: TStringField
      FieldName = 'CELULAR_FUNC'
      Size = 11
    end
    object CDSFuncFOTO_FUNC: TBlobField
      FieldName = 'FOTO_FUNC'
      Size = 1
    end
    object CDSFuncSTATUS_RELCARFUN: TStringField
      FieldName = 'STATUS_RELCARFUN'
      Size = 1
    end
  end
  object Provider: TDataSetProvider
    DataSet = SQLFunc
    Left = 64
    Top = 8
  end
  object SQLFunc: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10#13#10#13#10'FUNCIONARIO.IDFUNC,'#13#10'FUNCIONARIO.NOME_FUNC,'#13#10'FUNCI' +
      'ONARIO.DATANASC_FUNC,'#13#10'FUNCIONARIO.CPF_FUNC,'#13#10'FUNCIONARIO.RG_FUN' +
      'C,'#13#10'FUNCIONARIO.FONERES_FUNC,'#13#10'FUNCIONARIO.CELULAR_FUNC,'#13#10'FUNCIO' +
      'NARIO.NACIO_FUNC,'#13#10'FUNCIONARIO.NATUR_FUNC,'#13#10'FUNCIONARIO.SEXO_FUN' +
      'C,'#13#10'FUNCIONARIO.EMAIL_FUNC,'#13#10'FUNCIONARIO.OBS_FUNC,'#13#10'FUNCIONARIO.' +
      'DATACAD_FUNC,'#13#10'FUNCIONARIO.STATUS_FUNC,'#13#10'FUNCIONARIO.FOTO_FUNC,'#13 +
      #10'RELCARFUN.STATUS_RELCARFUN,'#13#10'CARGOS.IDCAR,'#13#10'CARGOS.DESC_CAR'#13#10#13#10 +
      'FROM FUNCIONARIO'#13#10#13#10'LEFT OUTER JOIN RELCARFUN ON (RELCARFUN.IDFU' +
      'NC=FUNCIONARIO.IDFUNC) '#13#10'LEFT OUTER JOIN CARGOS ON (CARGOS.IDCAR' +
      '=RELCARFUN.IDCAR)'#13#10#13#10'WHERE  CARGOS.DESC_CAR = '#39'PROFESSOR'#39' '#13#10'AND ' +
      '       FUNCIONARIO.STATUS_FUNC = '#39'A'#39#13#10'AND        RELCARFUN.STATU' +
      'S_RELCARFUN = '#39'A'#39#13#10#13#10'ORDER BY FUNCIONARIO.NOME_FUNC'
    MaxBlobSize = -1
    Params = <>
    Left = 24
    Top = 8
    object SQLFuncIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLFuncNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      Required = True
      Size = 50
    end
    object SQLFuncDATANASC_FUNC: TDateField
      FieldName = 'DATANASC_FUNC'
      Required = True
    end
    object SQLFuncCPF_FUNC: TStringField
      FieldName = 'CPF_FUNC'
      Size = 15
    end
    object SQLFuncRG_FUNC: TStringField
      FieldName = 'RG_FUNC'
      Size = 13
    end
    object SQLFuncNACIO_FUNC: TStringField
      FieldName = 'NACIO_FUNC'
      Required = True
      Size = 32
    end
    object SQLFuncNATUR_FUNC: TStringField
      FieldName = 'NATUR_FUNC'
      Required = True
      Size = 32
    end
    object SQLFuncSEXO_FUNC: TStringField
      FieldName = 'SEXO_FUNC'
      Required = True
      Size = 1
    end
    object SQLFuncEMAIL_FUNC: TStringField
      FieldName = 'EMAIL_FUNC'
      Size = 100
    end
    object SQLFuncOBS_FUNC: TStringField
      FieldName = 'OBS_FUNC'
      Required = True
      Size = 50
    end
    object SQLFuncDATACAD_FUNC: TDateField
      FieldName = 'DATACAD_FUNC'
      Required = True
    end
    object SQLFuncSTATUS_FUNC: TStringField
      FieldName = 'STATUS_FUNC'
      Required = True
      Size = 1
    end
    object SQLFuncIDCAR: TIntegerField
      FieldName = 'IDCAR'
    end
    object SQLFuncDESC_CAR: TStringField
      FieldName = 'DESC_CAR'
      Size = 30
    end
    object SQLFuncFONERES_FUNC: TStringField
      FieldName = 'FONERES_FUNC'
      Size = 11
    end
    object SQLFuncCELULAR_FUNC: TStringField
      FieldName = 'CELULAR_FUNC'
      Size = 11
    end
    object SQLFuncFOTO_FUNC: TBlobField
      FieldName = 'FOTO_FUNC'
      Size = 1
    end
    object SQLFuncSTATUS_RELCARFUN: TStringField
      FieldName = 'STATUS_RELCARFUN'
      Size = 1
    end
  end
  object SQLMatSeg: TSQLDataSet
    BeforeOpen = SQLMatSegBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '      = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR '#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 592
    Top = 104
    object SQLMatSegIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLMatSegIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLMatSegDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLMatSegAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLMatSegSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLMatSegTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatSegANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLMatSegSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatSegVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderMatSeg: TDataSetProvider
    DataSet = SQLMatSeg
    Left = 640
    Top = 120
  end
  object CDSMatSeg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderMatSeg'
    Left = 592
    Top = 168
    object CDSMatSegIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSMatSegIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSMatSegDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSMatSegAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSMatSegSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSMatSegTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatSegANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSMatSegSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatSegVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object DSMatSeg: TDataSource
    DataSet = CDSMatSeg
    Left = 640
    Top = 168
  end
  object SQLMatTer: TSQLDataSet
    BeforeOpen = SQLMatTerBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 736
    Top = 128
    object SQLMatTerIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLMatTerIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLMatTerDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLMatTerAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLMatTerSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLMatTerTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatTerANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLMatTerSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatTerVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderMatTer: TDataSetProvider
    DataSet = SQLMatTer
    Left = 800
    Top = 152
  end
  object CDSMatTer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderMatTer'
    Left = 736
    Top = 216
    object CDSMatTerIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSMatTerIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSMatTerDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSMatTerAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSMatTerSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSMatTerTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatTerANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSMatTerSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatTerVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object DSMatTer: TDataSource
    DataSet = CDSMatTer
    Left = 800
    Top = 216
  end
  object SQLMatQua: TSQLDataSet
    BeforeOpen = SQLMatQuaBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 888
    Top = 96
    object SQLMatQuaIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLMatQuaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLMatQuaDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLMatQuaAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLMatQuaSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLMatQuaTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatQuaANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLMatQuaSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatQuaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderMatQua: TDataSetProvider
    DataSet = SQLMatQua
    Left = 944
    Top = 120
  end
  object DSMatQua: TDataSource
    DataSet = CDSMatQua
    Left = 952
    Top = 168
  end
  object CDSMatQua: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderMatQua'
    Left = 880
    Top = 168
    object CDSMatQuaIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSMatQuaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSMatQuaDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSMatQuaAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSMatQuaSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSMatQuaTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatQuaANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSMatQuaSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatQuaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLMatQui: TSQLDataSet
    BeforeOpen = SQLMatQuiBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 1032
    Top = 128
    object SQLMatQuiIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLMatQuiIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLMatQuiDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLMatQuiAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLMatQuiSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLMatQuiTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatQuiANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLMatQuiSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatQuiVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderMatQui: TDataSetProvider
    DataSet = SQLMatQui
    Left = 1096
    Top = 152
  end
  object DSMatQui: TDataSource
    DataSet = CDSMatQui
    Left = 1104
    Top = 216
  end
  object CDSMatQui: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderMatQui'
    Left = 1032
    Top = 216
    object CDSMatQuiIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSMatQuiIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSMatQuiDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSMatQuiAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSMatQuiSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSMatQuiTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatQuiANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSMatQuiSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatQuiVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderMatSex: TDataSetProvider
    DataSet = SQLMatSex
    Left = 1232
    Top = 120
  end
  object DSMatSex: TDataSource
    DataSet = CDSMatSex
    Left = 1240
    Top = 168
  end
  object CDSMatSex: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderMatSex'
    Left = 1176
    Top = 168
    object CDSMatSexIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSMatSexIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSMatSexDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSMatSexAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSMatSexSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSMatSexTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatSexANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSMatSexSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSMatSexVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLMatSex: TSQLDataSet
    BeforeOpen = SQLMatSexBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 1176
    Top = 104
    object SQLMatSexIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLMatSexIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLMatSexDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLMatSexAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLMatSexSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLMatSexTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatSexANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLMatSexSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLMatSexVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object CDSVesSeg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderVesSeg'
    Left = 592
    Top = 376
    object CDSVesSegIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSVesSegDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSVesSegAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSVesSegSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSVesSegTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesSegANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSVesSegSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesSegIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSVesSegVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object DSVesSeg: TDataSource
    DataSet = CDSVesSeg
    Left = 656
    Top = 376
  end
  object ProviderVesSeg: TDataSetProvider
    DataSet = SQLVesSeg
    Left = 648
    Top = 328
  end
  object SQLVesSeg: TSQLDataSet
    BeforeOpen = SQLVesSegBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 592
    Top = 312
    object SQLVesSegIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLVesSegIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLVesSegDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLVesSegAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLVesSegSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLVesSegTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesSegANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLVesSegSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesSegVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLVesTer: TSQLDataSet
    BeforeOpen = SQLVesTerBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 736
    Top = 352
    object SQLVesTerIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLVesTerIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLVesTerDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLVesTerAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLVesTerSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLVesTerTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesTerANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLVesTerSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesTerVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderVesTer: TDataSetProvider
    DataSet = SQLVesTer
    Left = 792
    Top = 368
  end
  object DSVesTer: TDataSource
    DataSet = CDSVesTer
    Left = 800
    Top = 416
  end
  object CDSVesTer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderVesTer'
    Left = 736
    Top = 416
    object CDSVesTerIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSVesTerIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSVesTerDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSVesTerAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSVesTerSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSVesTerTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesTerANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSVesTerSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesTerVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLVesQua: TSQLDataSet
    BeforeOpen = SQLVesQuaBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 880
    Top = 312
    object SQLVesQuaIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLVesQuaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLVesQuaDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLVesQuaAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLVesQuaSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLVesQuaTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesQuaANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLVesQuaSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesQuaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderVesQua: TDataSetProvider
    DataSet = SQLVesQua
    Left = 936
    Top = 328
  end
  object DSVesQua: TDataSource
    DataSet = CDSVesQua
    Left = 944
    Top = 376
  end
  object CDSVesQua: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderVesQua'
    Left = 880
    Top = 376
    object CDSVesQuaIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSVesQuaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSVesQuaDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSVesQuaAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSVesQuaSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSVesQuaTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesQuaANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSVesQuaSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesQuaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLVesQui: TSQLDataSet
    BeforeOpen = SQLVesQuiBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 1032
    Top = 352
    object SQLVesQuiIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLVesQuiIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLVesQuiDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLVesQuiAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLVesQuiSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLVesQuiTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesQuiANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLVesQuiSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesQuiVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderVesQui: TDataSetProvider
    DataSet = SQLVesQui
    Left = 1088
    Top = 368
  end
  object DSVesQui: TDataSource
    DataSet = CDSVesQui
    Left = 1096
    Top = 416
  end
  object CDSVesQui: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderVesQui'
    Left = 1032
    Top = 416
    object CDSVesQuiIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSVesQuiIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSVesQuiDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSVesQuiAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSVesQuiSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSVesQuiTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesQuiANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSVesQuiSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesQuiVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLVesSex: TSQLDataSet
    BeforeOpen = SQLVesSexBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 1184
    Top = 312
    object SQLVesSexIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLVesSexIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLVesSexDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLVesSexAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLVesSexSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLVesSexTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesSexANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLVesSexSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLVesSexVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderVesSex: TDataSetProvider
    DataSet = SQLVesSex
    Left = 1240
    Top = 328
  end
  object DSVesSex: TDataSource
    DataSet = CDSVesSex
    Left = 1248
    Top = 376
  end
  object CDSVesSex: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderVesSex'
    Left = 1184
    Top = 376
    object CDSVesSexIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSVesSexIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSVesSexDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSVesSexAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSVesSexSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSVesSexTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesSexANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSVesSexSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSVesSexVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLNotSeg: TSQLDataSet
    BeforeOpen = SQLNotSegBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 600
    Top = 520
    object SQLNotSegIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLNotSegIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLNotSegDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLNotSegAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLNotSegSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLNotSegTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotSegANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLNotSegSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotSegVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderNotSeg: TDataSetProvider
    DataSet = SQLNotSeg
    Left = 656
    Top = 536
  end
  object DSNotSeg: TDataSource
    DataSet = CDSNotSeg
    Left = 664
    Top = 584
  end
  object CDSNotSeg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderNotSeg'
    Left = 600
    Top = 584
    object CDSNotSegIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSNotSegIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSNotSegDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSNotSegAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSNotSegSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSNotSegTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotSegANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSNotSegSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotSegVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLNotTer: TSQLDataSet
    BeforeOpen = SQLNotTerBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 744
    Top = 560
    object SQLNotTerIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLNotTerIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLNotTerDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLNotTerAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLNotTerSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLNotTerTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotTerANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLNotTerSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotTerVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderNotTer: TDataSetProvider
    DataSet = SQLNotTer
    Left = 800
    Top = 576
  end
  object DSNotTer: TDataSource
    DataSet = CDSNotTer
    Left = 808
    Top = 624
  end
  object CDSNotTer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderNotTer'
    Left = 744
    Top = 624
    object CDSNotTerIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSNotTerIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSNotTerDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSNotTerAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSNotTerSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSNotTerTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotTerANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSNotTerSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotTerVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLNotQua: TSQLDataSet
    BeforeOpen = SQLNotQuaBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 880
    Top = 520
    object SQLNotQuaIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLNotQuaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLNotQuaDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLNotQuaAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLNotQuaSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLNotQuaTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotQuaANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLNotQuaSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotQuaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderNotQua: TDataSetProvider
    DataSet = SQLNotQua
    Left = 936
    Top = 536
  end
  object DSNotQua: TDataSource
    DataSet = CDSNotQua
    Left = 944
    Top = 584
  end
  object CDSNotQua: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderNotQua'
    Left = 880
    Top = 584
    object CDSNotQuaIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSNotQuaIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSNotQuaDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSNotQuaAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSNotQuaSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSNotQuaTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotQuaANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSNotQuaSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotQuaVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLNotQui: TSQLDataSet
    BeforeOpen = SQLNotQuiBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 1040
    Top = 560
    object SQLNotQuiIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLNotQuiIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLNotQuiDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLNotQuiAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLNotQuiSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLNotQuiTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotQuiANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLNotQuiSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotQuiVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderNotQui: TDataSetProvider
    DataSet = SQLNotQui
    Left = 1096
    Top = 576
  end
  object DSNotQui: TDataSource
    DataSet = CDSNotQui
    Left = 1104
    Top = 624
  end
  object CDSNotQui: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderNotQui'
    Left = 1040
    Top = 624
    object CDSNotQuiIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSNotQuiIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSNotQuiDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSNotQuiAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSNotQuiSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSNotQuiTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotQuiANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSNotQuiSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotQuiVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object SQLNotSex: TSQLDataSet
    BeforeOpen = SQLNotSexBeforeOpen
    CommandText = 
      'SELECT'#13#10#13#10'PROPHOR.IDPROPHOR,'#13#10'PROPHOR.IDFUNC,'#13#10'PROPHOR.DIA_PROPH' +
      'OR,'#13#10'PROPHOR.AULA_PROPHOR,'#13#10'PROPHOR.STATUS_PROPHOR,'#13#10'PROPHOR.TUR' +
      'NO_PROPHOR,'#13#10'PROPHOR.ANO_PROPHOR,'#13#10'PROPHOR.SEMESTRE_PROPHOR,'#13#10'PR' +
      'OPHOR.VALOR'#13#10#13#10'FROM PROPHOR'#13#10' '#13#10'WHERE  PROPHOR.IDFUNC           ' +
      '                 = :PARFUNC AND'#13#10'                PROPHOR.ANO_PRO' +
      'PHOR             = :PARANO AND'#13#10'                PROPHOR.SEMESTRE' +
      '_PROPHOR = :PARSEM AND'#13#10'                PROPHOR.TURNO_PROPHOR   ' +
      '     = :PARTUR AND'#13#10'                PROPHOR.DIA_PROPHOR         ' +
      '       = :PARDIA'#13#10#13#10'ORDER BY PROPHOR.AULA_PROPHOR'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARFUNC'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARANO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARSEM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARTUR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PARDIA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 1192
    Top = 528
    object SQLNotSexIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object SQLNotSexIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object SQLNotSexDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object SQLNotSexAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object SQLNotSexSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object SQLNotSexTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotSexANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object SQLNotSexSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object SQLNotSexVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
  object ProviderNotSex: TDataSetProvider
    DataSet = SQLNotSex
    Left = 1248
    Top = 544
  end
  object DSNotSex: TDataSource
    DataSet = CDSNotSex
    Left = 1256
    Top = 592
  end
  object CDSNotSex: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProviderNotSex'
    Left = 1192
    Top = 592
    object CDSNotSexIDPROPHOR: TIntegerField
      FieldName = 'IDPROPHOR'
      Required = True
    end
    object CDSNotSexIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      Required = True
    end
    object CDSNotSexDIA_PROPHOR: TIntegerField
      FieldName = 'DIA_PROPHOR'
      Required = True
    end
    object CDSNotSexAULA_PROPHOR: TIntegerField
      FieldName = 'AULA_PROPHOR'
      Required = True
    end
    object CDSNotSexSTATUS_PROPHOR: TStringField
      FieldName = 'STATUS_PROPHOR'
      Required = True
      Size = 1
    end
    object CDSNotSexTURNO_PROPHOR: TStringField
      FieldName = 'TURNO_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotSexANO_PROPHOR: TStringField
      FieldName = 'ANO_PROPHOR'
      Required = True
      Size = 10
    end
    object CDSNotSexSEMESTRE_PROPHOR: TStringField
      FieldName = 'SEMESTRE_PROPHOR'
      Required = True
      Size = 2
    end
    object CDSNotSexVALOR: TStringField
      FieldName = 'VALOR'
      Size = 1
    end
  end
end
