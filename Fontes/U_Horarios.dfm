object Frm_Horarios: TFrm_Horarios
  Left = 286
  Top = 22
  Width = 819
  Height = 807
  Caption = 'Hor'#225'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTopo: TRzPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 49
    Align = alTop
    BorderInner = fsFlatBold
    BorderOuter = fsNone
    Caption = 'Vizualiza'#231#227'o de Hor'#225'rios'
    Color = 13294508
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object PnlDados: TRzPanel
    Left = 0
    Top = 49
    Width = 803
    Height = 720
    Align = alClient
    BorderInner = fsFlatBold
    Color = 13294508
    TabOrder = 1
    object RzLabel4: TRzLabel
      Left = 48
      Top = 25
      Width = 54
      Height = 19
      Caption = 'Turma:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RZBTvizualizar: TRzBitBtn
      Left = 560
      Top = 24
      Width = 145
      Caption = 'Atualizar'
      Color = 13294508
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RZBTvizualizarClick
    end
    object DBIDTURMA: TRzDBButtonEdit
      Left = 104
      Top = 24
      Width = 121
      Height = 21
      DataSource = DSHORARIOPRONTO
      DataField = 'IDTURMA'
      TabOrder = 1
      ButtonKind = bkFind
      OnButtonClick = DBIDTURMAButtonClick
    end
    object PnlHorarios: TRzPanel
      Left = 6
      Top = 64
      Width = 787
      Height = 641
      BorderInner = fsFlatBold
      BorderOuter = fsNone
      Color = 13294508
      Enabled = False
      TabOrder = 2
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
        DataSource = DSHORARIOPRONTO
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
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESCR_DISC'
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
  end
  object SQLHORARIOPRONTO: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'HORARIOS.IDHOR, '#13#10'HORARIOS.IDRELACAO, '#13#10'HORARIOS.DIA_H' +
      'OR, '#13#10'HORARIOS.AULA_HOR, '#13#10'HORARIOS.STATUS_HOR, '#13#10'HORARIOS.TURNO' +
      '_HOR, '#13#10'HORARIOS.IDTURMA, '#13#10'DISCPROF.IDFUNC,'#13#10'DISCPROF.IDDISCUR,' +
      #13#10'DISCURSO.IDDISC,'#13#10'DISCIPLINAS.DESCR_DISC, '#13#10'FUNCIONARIO.NOME_F' +
      'UNC '#13#10#13#10'FROM HORARIOS'#13#10#13#10'LEFT OUTER JOIN DISCPROF ON            ' +
      '     (DISCPROF.IDRELACAO = HORARIOS.IDRELACAO) '#13#10'LEFT OUTER JOIN' +
      ' FUNCIONARIO ON          (FUNCIONARIO.IDFUNC  = DISCPROF.IDFUNC)' +
      ' '#13#10'LEFT OUTER JOIN DISCURSO ON                (DISCURSO.IDDISCUR' +
      '    = DISCPROF.IDDISCUR) '#13#10'LEFT OUTER JOIN DISCIPLINAS ON       ' +
      '      (DISCIPLINAS.IDDISC      = DISCURSO.IDDISC) '#13#10#13#10#13#10'WHERE  H' +
      'ORARIOS.IDTURMA               = :PARTURMA AND'#13#10'                H' +
      'ORARIOS.DIA_HOR                = :PARDIA'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARTURMA'
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
    Left = 17
    Top = 8
    object SQLHORARIOPRONTOIDHOR: TIntegerField
      FieldName = 'IDHOR'
      Required = True
    end
    object SQLHORARIOPRONTOIDRELACAO: TIntegerField
      FieldName = 'IDRELACAO'
      Required = True
    end
    object SQLHORARIOPRONTODIA_HOR: TIntegerField
      FieldName = 'DIA_HOR'
      Required = True
    end
    object SQLHORARIOPRONTOAULA_HOR: TIntegerField
      FieldName = 'AULA_HOR'
      Required = True
    end
    object SQLHORARIOPRONTOSTATUS_HOR: TStringField
      FieldName = 'STATUS_HOR'
      Required = True
      Size = 1
    end
    object SQLHORARIOPRONTOTURNO_HOR: TStringField
      FieldName = 'TURNO_HOR'
      Size = 1
    end
    object SQLHORARIOPRONTOIDTURMA: TIntegerField
      FieldName = 'IDTURMA'
    end
    object SQLHORARIOPRONTOIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
    end
    object SQLHORARIOPRONTOIDDISCUR: TIntegerField
      FieldName = 'IDDISCUR'
    end
    object SQLHORARIOPRONTOIDDISC: TIntegerField
      FieldName = 'IDDISC'
    end
    object SQLHORARIOPRONTODESCR_DISC: TStringField
      FieldName = 'DESCR_DISC'
      Size = 50
    end
    object SQLHORARIOPRONTONOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      Size = 50
    end
  end
  object DSHORARIOPRONTO: TDataSource
    DataSet = CDSHORARIOPRONTO
    Left = 110
    Top = 8
  end
  object PROVIDERHORARIOPRONTO: TDataSetProvider
    DataSet = SQLHORARIOPRONTO
    Left = 48
    Top = 8
  end
  object CDSHORARIOPRONTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDERHORARIOPRONTO'
    Left = 79
    Top = 8
    object CDSHORARIOPRONTOIDHOR: TIntegerField
      FieldName = 'IDHOR'
      Required = True
    end
    object CDSHORARIOPRONTOIDRELACAO: TIntegerField
      FieldName = 'IDRELACAO'
      Required = True
    end
    object CDSHORARIOPRONTODIA_HOR: TIntegerField
      FieldName = 'DIA_HOR'
      Required = True
    end
    object CDSHORARIOPRONTOAULA_HOR: TIntegerField
      FieldName = 'AULA_HOR'
      Required = True
    end
    object CDSHORARIOPRONTOSTATUS_HOR: TStringField
      FieldName = 'STATUS_HOR'
      Required = True
      Size = 1
    end
    object CDSHORARIOPRONTOTURNO_HOR: TStringField
      FieldName = 'TURNO_HOR'
      Size = 1
    end
    object CDSHORARIOPRONTOIDTURMA: TIntegerField
      FieldName = 'IDTURMA'
    end
    object CDSHORARIOPRONTOIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
    end
    object CDSHORARIOPRONTOIDDISCUR: TIntegerField
      FieldName = 'IDDISCUR'
    end
    object CDSHORARIOPRONTOIDDISC: TIntegerField
      FieldName = 'IDDISC'
    end
    object CDSHORARIOPRONTODESCR_DISC: TStringField
      FieldName = 'DESCR_DISC'
      Size = 50
    end
    object CDSHORARIOPRONTONOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      Size = 50
    end
    object CDSHORARIOPRONTOVALORH: TStringField
      FieldKind = fkCalculated
      FieldName = 'VALORH'
      Size = 100
      Calculated = True
    end
  end
end
