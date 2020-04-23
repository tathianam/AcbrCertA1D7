unit uTesteCert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBase, ACBrDFe, ACBrNFSe, StdCtrls;

type
  TForm1 = class(TForm)
    LstDadosCertificado: TListBox;
    edUrl: TEdit;
    edSenha: TEdit;
    Button1: TButton;
    ACBrNFe1: TACBrNFSe;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses blcksock, ACBrDFeSSL;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  with ACBrNFe1.Configuracoes do
  begin
    Geral.SSLLib        := libWinCrypt;
    Geral.SSLCryptLib   := cryWinCrypt;
    Geral.SSLHttpLib    := httpWinHttp;
    Geral.SSLXmlSignLib := xsLibXml2;
    WebServices.SSLType := LT_TLSv1_2;
  end;

  ACBrNFe1.Configuracoes.Certificados.URLPFX := edUrl.text;
  ACBrNFe1.Configuracoes.Certificados.Senha  := edSenha.text;

  LstDadosCertificado.Clear;
  LstDadosCertificado.Items.Add('Número de Série: '    + ACBrNFe1.SSL.CertNumeroSerie);
  LstDadosCertificado.Items.Add('Razão Social: '       + ACBrNFe1.SSL.CertRazaoSocial);
  LstDadosCertificado.Items.Add('CNPJ: '               + ACBrNFe1.SSL.CertCNPJ);
  LstDadosCertificado.Items.Add('Data de Vencimento: ' + DateTimeToStr(ACBrNFe1.SSL.CertDataVenc));

  case ACBrNFe1.SSL.CertTipo of
    tpcDesconhecido : LstDadosCertificado.Items.Add('Tipo: Desconhecido');
    tpcA1           : LstDadosCertificado.Items.Add('Tipo: A1');
    tpcA3           : LstDadosCertificado.Items.Add('Tipo: A3');
  end;
end;

end.
