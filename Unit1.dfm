object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 538
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 121
    Width = 345
    Height = 417
    Align = alLeft
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    ExplicitTop = 144
    ExplicitHeight = 394
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 121
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 633
      Height = 13
      Align = alTop
      Caption = 'COM Port ileti'#351'im program'#305
      ExplicitWidth = 125
    end
    object BTNAygitSec: TButton
      Left = 1
      Top = 14
      Width = 75
      Height = 106
      Align = alLeft
      Caption = 'Ayg'#305't Se'#231
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object Button2: TButton
      Left = 76
      Top = 14
      Width = 75
      Height = 106
      Align = alLeft
      Caption = 'Ayg'#305'ta Ba'#287'lan'
      TabOrder = 1
      ExplicitLeft = 120
      ExplicitTop = 32
      ExplicitHeight = 25
    end
    object Button3: TButton
      Left = 151
      Top = 14
      Width = 75
      Height = 106
      Align = alLeft
      Caption = 'Button3'
      TabOrder = 2
      ExplicitLeft = 145
      ExplicitTop = 41
      ExplicitHeight = 119
    end
    object Button4: TButton
      Left = 226
      Top = 14
      Width = 75
      Height = 106
      Align = alLeft
      Caption = 'Button4'
      TabOrder = 3
      ExplicitLeft = 386
      ExplicitTop = 73
      ExplicitHeight = 119
    end
  end
  object ComPort1: TComPort
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
    Left = 504
    Top = 32
  end
end
