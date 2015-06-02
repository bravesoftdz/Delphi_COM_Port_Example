unit UnPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPort;

type
  TFmPrincipal = class(TForm)
    comport: TComPort;
    MemoLog: TMemo;
    BtnPainelConfig: TButton;
    btnOpenPort: TButton;
    btnComunicar: TButton;
    btnClosePort: TButton;
    Label1: TLabel;
    lbNomeRodape: TLabel;
    lbLinkRodape: TLabel;
    procedure BtnPainelConfigClick(Sender: TObject);
    procedure btnOpenPortClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnComunicarClick(Sender: TObject);
    procedure comportRxChar(Sender: TObject; Count: Integer);
    procedure btnClosePortClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPrincipal: TFmPrincipal;

implementation

{$R *.dfm}

{
  Titulo: Delphi: Comunica��o serial com Arduino
  Autor: Cleiton Bueno
  Ano: 2014
  Link: http://www.cleitonbueno.wordpress.com
  Licen�a: BSD


  Use, divulgue, modifique mas se possivel cite a fonte :)



  Este trabalho de Cleiton Bueno, foi licenciado sob uma Licen�a Creative Commons Atribui��o-N�oComercial-CompartilhaIgual 3.0 Brasil.
  Baseado no trabalho em http://www.cleitonbueno.wordpress.com.

}
procedure TFmPrincipal.BtnPainelConfigClick(Sender: TObject);
begin
  comport.ShowSetupDialog;
  btnOpenPort.Enabled := True;

  // Aqui voce especifica sua porta serial, diretamente assim...
  //comport.Port := 'COM3'
  // Ou por um Edit.. assim...
  //comport.Port := edtPorta.Text;
  // Na op��o abaixo o BaudRate
  // Tome cuidado com o BaudRate que n�o � apenas para algo como:
  // 9600
  // Ele tem seu "padr�o"
  //comport.BaudRate
  // StopBits
  //comport.StopBits
  // Paridade
  //comport.Parity
  // Data Bits
  //comport.DataBits
end;

procedure TFmPrincipal.btnOpenPortClick(Sender: TObject);
begin
    try
      // Abrindo a conex�o serial
      comport.Open;
      if comport.Connected then
      begin
          MemoLog.Text := MemoLog.Text + 'Conex�o serial estabelecida com sucesso ('+comport.Port+')';
          MemoLog.Lines.Add(''); //Gambi para ir para proxima linha, nao lembro como usar #13
          btnOpenPort.Enabled := False;
          btnComunicar.Enabled := True;
          btnClosePort.Enabled := True;
      end
      else
          MemoLog.Text := MemoLog.Text + 'FALHA ao abrir conex�o serial com ('+comport.Port+')'
    Except on E : Exception do
    begin
        MemoLog.Text := MemoLog.Text + 'ERRO ao abrir conex�o: Detalhes> '+E.Message;
    end
    end
end;

procedure TFmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      // Caso o usuario feche o programa sem fechar a conex�o
      comport.Close;
end;

procedure TFmPrincipal.btnComunicarClick(Sender: TObject);
begin
      // Sem misterio... inserindo a mensagem Comunicando, aguarde...
      // no memo e enviando o caracter 't' para a serial...
      MemoLog.Text := MemoLog.Text + 'Comunicando, aguarde...';
      comport.WriteStr('t');
end;

procedure TFmPrincipal.comportRxChar(Sender: TObject; Count: Integer);
var
    RxCount: Integer;
    RxComport: String;
begin
    // Primeiro, neste componente devemos saber
    // a quantidade de bytes recebidos
    RxCount := comport.InputCount;

    //Agora iremos chamar a fun��o que ira receber o conteudo
    // e informar onde sera armazenado e a quantidade com a variavel
    // acima
    comport.ReadStr(RxComport,RxCount);

    //Enviando para o MemoLog
    MemoLog.Text := MemoLog.Text + RxComport;
end;

procedure TFmPrincipal.btnClosePortClick(Sender: TObject);
begin
    // Fechando a conex�o quando o operador clicar no botao
    comport.Close;

    // Vamos trabalhar em cima desta a��o
    if not comport.Connected then
    begin
        MemoLog.Text := MemoLog.Text + 'Conex�o serial finalizada com sucesso ('+comport.Port+')';
        btnClosePort.Enabled := False;
        btnComunicar.Enabled := False;
        btnOpenPort.Enabled := False;
    end
    else
        MemoLog.Text := MemoLog.Text + 'Falha ao finalizar conex�o serial.'
end;

end.
