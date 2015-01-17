object FrmMenu: TFrmMenu
  Left = 193
  Top = 124
  BorderStyle = bsSingle
  ClientHeight = 558
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 539
    Width = 984
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 150
      Height = 19
      Align = alLeft
    end
    object RzStatusPane2: TRzStatusPane
      Left = 150
      Top = 0
      Width = 683
      Height = 19
      Align = alLeft
    end
    object RzStatusPane3: TRzStatusPane
      Left = 833
      Top = 0
      Width = 150
      Height = 19
      Align = alLeft
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 3
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Empresa1: TMenuItem
        Caption = 'Empresa'
        OnClick = Empresa1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = Funcionrios1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CEP1: TMenuItem
        Caption = 'CEP'
        OnClick = CEP1Click
      end
      object Bairro1: TMenuItem
        Caption = 'Bairro'
        OnClick = Bairro1Click
      end
      object Cidade1: TMenuItem
        Caption = 'Cidade'
        OnClick = Cidade1Click
      end
      object Logradouro1: TMenuItem
        Caption = 'Logradouro'
        OnClick = Logradouro1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Vagas1: TMenuItem
        Caption = 'Vagas'
        OnClick = Vagas1Click
      end
    end
  end
end
