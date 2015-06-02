object FmPrincipal: TFmPrincipal
  Left = 192
  Top = 114
  Width = 560
  Height = 343
  Caption = 'Comunica'#231#227'o Delphi 4 Arduino'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 16
    Width = 469
    Height = 25
    Caption = 'Comunica'#231#227'o Serial - Delphi <> Arduino'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNomeRodape: TLabel
    Left = 248
    Top = 272
    Width = 101
    Height = 16
    Caption = 'Cleiton Bueno'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbLinkRodape: TLabel
    Left = 248
    Top = 288
    Width = 252
    Height = 16
    Caption = 'www.cleitonbueno.wordpress.com'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MemoLog: TMemo
    Left = 136
    Top = 72
    Width = 361
    Height = 161
    Lines.Strings = (
      'Log da comunica'#231#227'o serial...')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BtnPainelConfig: TButton
    Left = 48
    Top = 72
    Width = 89
    Height = 41
    Cursor = crHandPoint
    Hint = 'Abrir para realizar a configura'#231#227'o da conex'#227'o serial'
    Caption = 'Painel'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnPainelConfigClick
  end
  object btnOpenPort: TButton
    Left = 48
    Top = 112
    Width = 89
    Height = 41
    Cursor = crHandPoint
    Hint = 'Abrir a conex'#227'o serial'
    Caption = 'Abrir Conex'#227'o'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnOpenPortClick
  end
  object btnComunicar: TButton
    Left = 48
    Top = 152
    Width = 89
    Height = 41
    Cursor = crHandPoint
    Hint = 'Realizar a comunica'#231#227'o serial, enviando o comando'
    Caption = 'Comunicar'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnComunicarClick
  end
  object btnClosePort: TButton
    Left = 48
    Top = 192
    Width = 89
    Height = 41
    Cursor = crHandPoint
    Hint = 'Fechar a conex'#227'o serial'
    Caption = 'Fechar Conex'#227'o'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnClosePortClick
  end
  object comport: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = comportRxChar
    Left = 24
    Top = 24
  end
end
