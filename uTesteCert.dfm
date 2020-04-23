object Form1: TForm1
  Left = 303
  Top = 117
  Width = 716
  Height = 367
  Caption = 'Teste de Certificado - URL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 54
    Top = 12
    Width = 22
    Height = 13
    Caption = 'URL'
  end
  object Label2: TLabel
    Left = 45
    Top = 44
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object LstDadosCertificado: TListBox
    Left = 80
    Top = 80
    Width = 553
    Height = 225
    ItemHeight = 13
    TabOrder = 0
  end
  object edUrl: TEdit
    Left = 80
    Top = 8
    Width = 474
    Height = 21
    TabOrder = 1
    Text = 'http://seu-site-aqui/pasta/nome-do-arquivo.pfx'
  end
  object edSenha: TEdit
    Left = 80
    Top = 40
    Width = 474
    Height = 21
    TabOrder = 2
    Text = '123456'
  end
  object Button1: TButton
    Left = 560
    Top = 8
    Width = 75
    Height = 57
    Caption = 'Carregar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ACBrNFe1: TACBrNFSe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = False
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.WebServices.SSLType = LT_TLSv1_2
    Left = 120
    Top = 112
  end
end
