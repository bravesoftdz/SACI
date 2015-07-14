unit ECFTeste1;

{$mode objfpc}{$H+}

interface

uses
  ACBrECF, ACBrECFClass, ACBrBase, ACBrRFD, ACBrDevice, ACBrAAC, ACBrConsts,
  LCLIntf, Classes, SysUtils, Forms, Controls, Graphics, LCLType, Dialogs,
  DateUtils, IpHtml, Menus, Buttons, StdCtrls, ExtCtrls, ComCtrls, Spin,
  EditBtn, DBGrids, DbCtrls, strutils, memds, db;

type
  TSimpleIpHtml = class(TIpHtml)
  public
    property OnGetImageX;
  end;

  { TForm1 }

  TForm1 = class(TForm)
    AbreCupomVinculado1: TMenuItem;
    AbreGaveta1: TMenuItem;
    AbreNoFiscal1: TMenuItem;
    AbreRelatorioGerencial1: TMenuItem;
    AbrirCupom1: TMenuItem;
    ACBrAAC1 : TACBrAAC ;
    ACBrECF1: TACBrECF;
    ACBrRFD1: TACBrRFD;
    Aliquotas1: TMenuItem;
    AliquotasICMS1: TMenuItem;
    Arredonda1: TMenuItem;
    Ativcar1: TMenuItem;
    bAtivar: TBitBtn;
    bBobinaLimpar: TButton;
    bBobinaParams: TButton;
    BitBtn6 : TBitBtn ;
    BitBtn7 : TBitBtn ;
    bRFDLer: TButton;
    bRFDSalvar: TButton;
    btnMenuFiscalLMFC : TButton ;
    btnMenuFiscalLMFS : TButton ;
    btnMenuFiscalLX : TButton ;
    btnMenuFiscalMFDArq : TButton ;
    btnMenuFiscalMFDEspelho : TButton ;
    btnMenuFiscalRelDAVEmitidos : TButton ;
    btnMenuFiscalRelIdentPAFECF : TButton ;
    btnMenuFiscalRelMeiosPagto : TButton ;
    btSerial: TBitBtn;
    bLerDadosRedZ : TButton ;
    bAACGravarArquivo : TButton ;
    bAACAbrirArquivo : TButton ;
    bACCVerificarGT : TButton ;
    bAACAtualizarGT : TButton ;
    CancelaCupom1: TMenuItem;
    CancelaImpressoCheque1: TMenuItem;
    CancelaNoFiscal1: TMenuItem;
    CancelarItemVendido1: TMenuItem;
    CapturaporNReduaoZ1: TMenuItem;
    CapturaporPeriodo1: TMenuItem;
    CarregaComprovantesNAOFiscais1: TMenuItem;
    CarregaUnidadesdeMedida1: TMenuItem;
    cbMemoHTML: TCheckBox;
    cbxModelo: TComboBox;
    cbxPorta: TComboBox;
    chArredondaPorQtd: TCheckBox;
    chBloqueia: TCheckBox;
    chDescricaoGrande : TCheckBox ;
    chArredondamentoItemMFD : TCheckBox ;
    chAACUsar : TCheckBox ;
    Cheque1: TMenuItem;
    ChequePronto1: TMenuItem;
    chExibeMsg: TCheckBox;
    chGavetaSinalInvertido: TCheckBox;
    ChImpTextoAbaixoBarras : TCheckBox ;
    ChImpTextoVertical : TCheckBox ;
    chkMenuFiscalCotepe1704 : TCheckBox ;
    chkMenuFiscalGerarArquivo : TCheckBox ;
    chRFD: TCheckBox;
    chTentar: TCheckBox;
    CNPJIE1: TMenuItem;
    ComprovantesNaoFiscais1: TMenuItem;
    CorrigeEstadodeErro1: TMenuItem;
    Cupom1: TMenuItem;
    CupomVinculado1: TMenuItem;
    CupomVinculadoCompleto2: TMenuItem;
    DadosReducaoZ1: TMenuItem;
    DadosUltimaReduoZ1: TMenuItem;
    DataHora1: TMenuItem;
    DataMovimento1: TMenuItem;
    DBGrid1 : TDBGrid ;
    dsAACECF : TDatasource ;
    edAACNomeArq : TEdit ;
    edAACLog : TEdit ;
    edAAC_ECF_CRO : TDBEdit ;
    edAAC_ECF_NumSerie : TDBEdit ;
    edAAC_PAF_Aplicativo : TEdit ;
    edAAC_PAF_MD5 : TEdit ;
    edAAC_PAF_Versao : TEdit ;
    edAAC_SH_CNPJ : TEdit ;
    edAAC_SH_IE : TEdit ;
    edAAC_SH_IM : TEdit ;
    edAAC_ECF_GT : TDBEdit ;
    edAAC_SH_RazaoSocial : TEdit ;
    edtDtInicial : TDateEdit ;
    edtDtFinal : TDateEdit ;
    Desativar1: TMenuItem;
    Dispositivos1: TMenuItem;
    dlgDialogoSalvar : TSaveDialog ;
    edDirRFD: TEdit;
    edLog: TEdit;
    edOperador : TEdit ;
    edSH_Aplicativo: TEdit;
    edSH_CNPJ: TEdit;
    edSH_COO: TEdit;
    edSH_IE: TEdit;
    edSH_IM: TEdit;
    edSH_Linha1: TEdit;
    edSH_Linha2: TEdit;
    edSH_NumeroAP: TEdit;
    edSH_RazaoSocial: TEdit;
    edSH_VersaoAP: TEdit;
    EdtCodBarras : TEdit ;
    edtCOOFinal : TSpinEdit ;
    edtCOOInicial : TSpinEdit ;
    EfetuaPagamentoNaoFiscal1: TMenuItem;
    EfetuarPagamento1: TMenuItem;
    EnviaComando1: TMenuItem;
    Equipamento1: TMenuItem;
    Estado1: TMenuItem;
    FechaNoFiscal1: TMenuItem;
    FecharCupom1: TMenuItem;
    FechaRelatrio1: TMenuItem;
    Flags1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    FormasdePagamento2: TMenuItem;
    Gaveta1: TMenuItem;
    GavetaAberta1: TMenuItem;
    gbAAC_PAF : TGroupBox ;
    gbAAC_SH : TGroupBox ;
    GrandeTotal1: TMenuItem;
    grpMenuFiscalOpcoes : TGroupBox ;
    HorarioVerao1: TMenuItem;
    HorarioVerao2: TMenuItem;
    IdentificaConsumidor1: TMenuItem;
    IE1: TMenuItem;
    Image1: TImage;
    ImpactoAgulhas1: TMenuItem;
    ImprimeCheque1: TMenuItem;
    ImprimeLinhaCupomVinculado2: TMenuItem;
    ImprimeLinhaRelatorio1: TMenuItem;
    ImprimeporNReduaoZ1: TMenuItem;
    ImprimeporPeriodo1: TMenuItem;
    Label20 : TLabel ;
    Label21 : TLabel ;
    Label22 : TLabel ;
    Label23 : TLabel ;
    Label24 : TLabel ;
    Label25 : TLabel ;
    Label26 : TLabel ;
    Label27 : TLabel ;
    Label28 : TLabel ;
    Label29 : TLabel ;
    Label30 : TLabel ;
    Label31 : TLabel ;
    Label32 : TLabel ;
    Label33 : TLabel ;
    Label34 : TLabel ;
    Label35 : TLabel ;
    Label36 : TLabel ;
    Label37 : TLabel ;
    Label38 : TLabel ;
    Label39 : TLabel ;
    Label40 : TLabel ;
    Label41 : TLabel ;
    Label42 : TLabel ;
    Label43 : TLabel ;
    Label44 : TLabel ;
    mDataHoraSwBasico : TMenuItem ;
    mdsAACECF : TMemDataset ;
    mAACParams : TMemo ;
    MenTextoBarras : TMemo ;
    MenuItem1 : TMenuItem ;
    mCortaPapel : TMenuItem ;
    MenuItem10 : TMenuItem ;
    MenuItem11 : TMenuItem ;
    MenuItem12 : TMenuItem ;
    mARQMFDDLLPeriodo : TMenuItem ;
    MenuItem13 : TMenuItem ;
    mAcharAliqPorIndice : TMenuItem ;
    mAcharAliqPorValor : TMenuItem ;
    MenuItem14 : TMenuItem ;
    mAcharFPGIndice : TMenuItem ;
    mAcharFPGDescricao : TMenuItem ;
    MenuItem17 : TMenuItem ;
    MenuItem18 : TMenuItem ;
    mAcharCNFIndice : TMenuItem ;
    mAchaCNFDescricao : TMenuItem ;
    MenuItem19 : TMenuItem ;
    mAcharRGIndice : TMenuItem ;
    mAcharRGDescricao : TMenuItem ;
    MenuItem20 : TMenuItem ;
    mValorTotalNaoFiscal : TMenuItem ;
    mCancNaoFiscal : TMenuItem ;
    mAcresNaoFiscal : TMenuItem ;
    mDescNaoFiscal : TMenuItem ;
    mNumCCDC : TMenuItem ;
    mNumNCN : TMenuItem ;
    mNumCFD : TMenuItem ;
    mNumGNFC : TMenuItem ;
    mModeloStr : TMenuItem ;
    MenuItem22 : TMenuItem ;
    mFontesECF : TMenuItem ;
    mLerTroco : TMenuItem ;
    mRZ : TMemo ;
    NumSerieMFD : TMenuItem ;
    mLerTotaisRelatoriosGerenciais : TMenuItem ;
    mRelatorioGerenciais : TMenuItem ;
    mCarregaRelatorioGerenciais : TMenuItem ;
    mProgramaRelatorioGerencial : TMenuItem ;
    mIdentificaOperador : TMenuItem ;
    mIdentificaPAF : TMenuItem ;
    MenuItem16 : TMenuItem ;
    mSangria : TMenuItem ;
    mSuprimento : TMenuItem ;
    MenuItem15 : TMenuItem ;
    mESPMFDDLLCoo : TMenuItem ;
    mARQMFDDLLCoo : TMenuItem ;
    mESPMFDDLLPeriodo : TMenuItem ;
    mLeituraXSerial : TMenuItem ;
    mTesteVinculado : TMenuItem ;
    MenuItem2 : TMenuItem ;
    MenuItem3 : TMenuItem ;
    MenuItem4 : TMenuItem ;
    MenuItem5 : TMenuItem ;
    MenuItem6 : TMenuItem ;
    MenuItem7 : TMenuItem ;
    MenuItem8 : TMenuItem ;
    MenuItem9 : TMenuItem ;
    mICMSTotalIsencao : TMenuItem ;
    mICMSTotalNaoTributado : TMenuItem ;
    mICMSTotalSubstituicaoTributaria : TMenuItem ;
    mICMSTotalAcrescimos : TMenuItem ;
    mICMSTotalDescontos : TMenuItem ;
    mICMSTotalCancelamentos : TMenuItem ;
    mTotaisISSQN : TMenuItem ;
    mTotaisICMS : TMenuItem ;
    mNumGNF : TMenuItem ;
    mNumGRG : TMenuItem ;
    mNumCDC : TMenuItem ;
    mIdentificaConsumidor : TMenuItem ;
    mPAF : TMenuItem ;
    mCliche : TMenuItem ;
    mUsuarioAtual : TMenuItem ;
    mIM : TMenuItem ;
    pgAAC : TPageControl ;
    pgcMenuFiscalTipo : TPageControl ;
    RdgTipoBarra : TRadioGroup ;
    SbAACNomeArq : TSpeedButton ;
    SbAACArqLog : TSpeedButton ;
    SbAACMD5Atualizar : TSpeedButton ;
    seBandWidth : TSpinEdit ;
    seMaxLinhasBuffer : TSpinEdit ;
    SpEdAlturaBarra : TSpinEdit ;
    SpEdtLarguraBarra : TSpinEdit ;
    tsAACParams : TTabSheet ;
    tsAACECFs : TTabSheet ;
    tsAACDados : TTabSheet ;
    tsArqAuxCript : TTabSheet ;
    tsMenuFiscal : TTabSheet ;
    tbsMenuFiscalTipoCOO : TTabSheet ;
    tbsMenuFiscalTipoData : TTabSheet ;
    tsDadosRedZ : TTabSheet ;
    tsCodBarras : TTabSheet ;
    wbBobina: TIpHtmlPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LeituradeMemoriaFiscal1: TMenuItem;
    LeituraMFD1: TMenuItem;
    LeituraX1: TMenuItem;
    LerTodasasVariveis1: TMenuItem;
    LerTotaisAliquotas1: TMenuItem;
    LerTotaisComprovanetNaoFiscal1: TMenuItem;
    LerTotaisFormadePagamento1: TMenuItem;
    ListaRelatorioGerencial1: TMenuItem;
    MainMenu1: TMainMenu;
    MapaResumo1: TMenuItem;
    mBobina: TMemo;
    mEnviado: TMemo;
    MFD1: TMenuItem;
    mMsg: TMemo;
    mResp: TMemo;
    mRFDParam: TMemo;
    MudaArredondamento1: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N2: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    NoFiscal1: TMenuItem;
    NoFiscalCompleto1: TMenuItem;
    NSrie1: TMenuItem;
    NUltimoCupom1: TMenuItem;
    NumCCF1: TMenuItem;
    NumCOO1: TMenuItem;
    NumCOOInicial1: TMenuItem;
    NumCRO1: TMenuItem;
    NumCRZ1: TMenuItem;
    NumECF1: TMenuItem;
    NumLoja1: TMenuItem;
    NVerso1: TMenuItem;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pBotoes: TPanel;
    PorCOO1: TMenuItem;
    PorPeriodo1: TMenuItem;
    PoucoPapel1: TMenuItem;
    Principal1: TMenuItem;
    ProgramaAliquota1: TMenuItem;
    ProgramaComprovanteNAOFiscal1: TMenuItem;
    ProgramaFormadePagamento1: TMenuItem;
    ProgramaUnidadeMedida1: TMenuItem;
    PularLinhas1: TMenuItem;
    ReduoZ1: TMenuItem;
    RegistraItemNaoFiscal1: TMenuItem;
    RelatorioGerencial1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    SbArqLog: TSpeedButton;
    sbDirRFD: TSpeedButton;
    seIntervaloAposComando: TSpinEdit;
    seTimeOut: TSpinEdit;
    Sobre1: TMenuItem;
    StatusBar1: TStatusBar;
    Sub1: TMenuItem;
    SubTotal1: TMenuItem;
    SubTotalizaNaoFiscal1: TMenuItem;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Termica1: TMenuItem;
    TestaPodeAbrirCupom1: TMenuItem;
    Testar1: TMenuItem;
    TestedeVelocidade1: TMenuItem;
    TotalPago1: TMenuItem;
    mTotalNaoFiscal: TMenuItem;
    UltimoItemVendido1: TMenuItem;
    Utilitrios1: TMenuItem;
    Variaveis1: TMenuItem;
    Variveis1: TMenuItem;
    VendaBruta1: TMenuItem;
    VenderItem1: TMenuItem;
    procedure ACBrAAC1AntesAbrirArquivo(var Continua : Boolean) ;
    procedure ACBrAAC1DepoisAbrirArquivo(Sender : TObject) ;
    procedure ACBrAAC1GetChave(var Chave : AnsiString) ;
    procedure bAACAtualizarGTClick(Sender : TObject) ;
    procedure bAACGravarArquivoClick(Sender : TObject) ;
    procedure bAACAbrirArquivoClick(Sender : TObject) ;
    procedure bACCVerificarGTClick(Sender : TObject) ;
    procedure BitBtn6Click(Sender : TObject) ;
    procedure BitBtn7Click(Sender : TObject) ;
    procedure bLerDadosRedZClick(Sender : TObject) ;
    procedure btnMenuFiscalLMFCClick(Sender : TObject) ;
    procedure btnMenuFiscalLMFSClick(Sender : TObject) ;
    procedure btnMenuFiscalLXClick(Sender : TObject) ;
    procedure btnMenuFiscalMFDArqClick(Sender : TObject) ;
    procedure btnMenuFiscalMFDEspelhoClick(Sender : TObject) ;
    procedure btnMenuFiscalRelDAVEmitidosClick(Sender : TObject) ;
    procedure btnMenuFiscalRelIdentPAFECFClick(Sender : TObject) ;
    procedure btnMenuFiscalRelMeiosPagtoClick(Sender : TObject) ;
    procedure chAACUsarChange(Sender : TObject) ;
    procedure cbxModeloChange(Sender: TObject);
    procedure chArredondamentoItemMFDChange(Sender : TObject) ;
    procedure chArredondaPorQtdChange(Sender : TObject) ;
    procedure chBloqueiaChange(Sender : TObject) ;
    procedure chDescricaoGrandeChange(Sender : TObject) ;
    procedure chExibeMsgChange(Sender : TObject) ;
    procedure chGavetaSinalInvertidoChange(Sender : TObject) ;
    procedure ChImpTextoVerticalChange(Sender : TObject) ;
    procedure chTentarChange(Sender : TObject) ;
    procedure mAchaCNFDescricaoClick(Sender : TObject) ;
    procedure mAcharAliqPorIndiceClick(Sender : TObject) ;
    procedure mAcharAliqPorValorClick(Sender : TObject) ;
    procedure mAcharCNFIndiceClick(Sender : TObject) ;
    procedure mAcharFPGDescricaoClick(Sender : TObject) ;
    procedure mAcharFPGIndiceClick(Sender : TObject) ;
    procedure mAcharRGDescricaoClick(Sender : TObject) ;
    procedure mAcharRGIndiceClick(Sender : TObject) ;
    procedure mAcresNaoFiscalClick(Sender : TObject) ;
    procedure mARQMFDDLLCooClick(Sender : TObject) ;
    procedure mARQMFDDLLPeriodoClick(Sender : TObject) ;
    procedure mCancNaoFiscalClick(Sender : TObject) ;
    procedure mDescNaoFiscalClick(Sender : TObject) ;
    procedure mdsAACECFAfterOpen(DataSet : TDataSet) ;
    procedure MenuItem20Click(Sender : TObject) ;
    procedure mFontesECFClick(Sender : TObject) ;
    procedure mLerTotaisRelatoriosGerenciaisClick(Sender : TObject) ;
    procedure mLerTrocoClick(Sender : TObject) ;
    procedure mModeloStrClick(Sender : TObject) ;
    procedure mNumCCDCClick(Sender : TObject) ;
    procedure mNumCFDClick(Sender : TObject) ;
    procedure mNumGNFCClick(Sender : TObject) ;
    procedure mNumNCNClick(Sender : TObject) ;
    procedure mRelatorioGerenciaisClick(Sender : TObject) ;
    procedure mClicheClick(Sender : TObject) ;
    procedure mCortaPapelClick(Sender : TObject) ;
    procedure mDataHoraSwBasicoClick(Sender : TObject) ;
    procedure MenuItem2Click(Sender : TObject) ;
    procedure MenuItem3Click(Sender : TObject) ;
    procedure MenuItem4Click(Sender : TObject) ;
    procedure MenuItem6Click(Sender : TObject) ;
    procedure MenuItem7Click(Sender : TObject) ;
    procedure MenuItem8Click(Sender : TObject) ;
    procedure mESPMFDDLLCooClick(Sender : TObject) ;
    procedure mESPMFDDLLPeriodoClick(Sender : TObject) ;
    procedure mICMSTotalAcrescimosClick(Sender : TObject) ;
    procedure mICMSTotalDescontosClick(Sender : TObject) ;
    procedure mICMSTotalIsencaoClick(Sender : TObject) ;
    procedure mICMSTotalNaoTributadoClick(Sender : TObject) ;
    procedure mICMSTotalSubstituicaoTributariaClick(Sender : TObject) ;
    procedure mIdentificaConsumidorClick(Sender : TObject) ;
    procedure mIdentificaOperadorClick(Sender : TObject) ;
    procedure mIdentificaPAFClick(Sender : TObject) ;
    procedure mIMClick(Sender : TObject) ;
    procedure mLeituraXSerialClick(Sender : TObject) ;
    procedure mNumCDCClick(Sender : TObject) ;
    procedure mNumGNFClick(Sender : TObject) ;
    procedure mNumGRGClick(Sender : TObject) ;
    procedure mPAFClick(Sender : TObject) ;
    procedure mICMSTotalCancelamentosClick(Sender : TObject) ;
    procedure mProgramaRelatorioGerencialClick(Sender : TObject) ;
    procedure mSangriaClick(Sender : TObject) ;
    procedure mSuprimentoClick(Sender : TObject) ;
    procedure mTesteVinculadoClick(Sender : TObject) ;
    procedure mUsuarioAtualClick(Sender : TObject) ;
    procedure mValorTotalNaoFiscalClick(Sender : TObject) ;
    procedure NumSerieMFDClick(Sender : TObject) ;
    procedure RdgTipoBarraClick(Sender : TObject) ;
    procedure Sair1Click(Sender: TObject);
    procedure bAtivarClick(Sender: TObject);
    procedure cbxPortaChange(Sender: TObject);
    procedure Ativcar1Click(Sender: TObject);
    procedure Desativar1Click(Sender: TObject);
    procedure mMsgChange(Sender: TObject);
    procedure SbAACArqLogClick(Sender : TObject) ;
    procedure SbAACMD5AtualizarClick(Sender : TObject) ;
    procedure SbAACNomeArqClick(Sender : TObject) ;
    procedure seMaxLinhasBufferChange(Sender : TObject) ;
    procedure seBandWidthChange(Sender : TObject) ;
    procedure Testar1Click(Sender: TObject);
    procedure ACBrECF1MsgAguarde(Mensagem : String);
    procedure DataHora1Click(Sender: TObject);
    procedure NumECF1Click(Sender: TObject);
    procedure NSrie1Click(Sender: TObject);
    procedure NVerso1Click(Sender: TObject);
    procedure NumUltimoCupom1Click(Sender: TObject);
    procedure PoucoPapel1Click(Sender: TObject);
    procedure LeituraX1Click(Sender: TObject);
    procedure ReduoZ1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure AliquotasICMS1Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure AbreGaveta1Click(Sender: TObject);
    procedure GavetaAberta1Click(Sender: TObject);
    procedure ChequePronto1Click(Sender: TObject);
    procedure CancelaImpressoCheque1Click(Sender: TObject);
    procedure HorarioVerao1Click(Sender: TObject);
    procedure ImpactoAgulhas1Click(Sender: TObject);
    procedure TestaPodeAbrirCupom1Click(Sender: TObject);
    procedure NUltimoCupom1Click(Sender: TObject);
    procedure SubTotal1Click(Sender: TObject);
    procedure TotalPago1Click(Sender: TObject);
    procedure AbrirCupom1Click(Sender: TObject);
    procedure CancelaCupom1Click(Sender: TObject);
    procedure tsArqAuxCriptShow(Sender : TObject) ;
    procedure VenderItem1Click(Sender: TObject);
    procedure CancelarItemVendido1Click(Sender: TObject);
    procedure Sub1Click(Sender: TObject);
    procedure EfetuarPagamento1Click(Sender: TObject);
    procedure FecharCupom1Click(Sender: TObject);
    procedure EnviaComando1Click(Sender: TObject);
    procedure ACBrECF1AguardandoRespostaChange(Sender: TObject);
    procedure CarregaComprovantesNAOFiscais1Click(Sender: TObject);
    procedure FechaRelatrio1Click(Sender: TObject);
    procedure HorarioVerao2Click(Sender: TObject);
    procedure Arredonda1Click(Sender: TObject);
    procedure MudaArredondamento1Click(Sender: TObject);
    procedure NumLoja1Click(Sender: TObject);
    procedure NumCRO1Click(Sender: TObject);
    procedure TestedeVelocidade1Click(Sender: TObject);
    procedure CapturaporNReduaoZ1Click(Sender: TObject);
    procedure ImprimeporNReduaoZ1Click(Sender: TObject);
    procedure CapturaporPeriodo1Click(Sender: TObject);
    procedure ImprimeporPeriodo1Click(Sender: TObject);
    procedure ProgramaAliquota1Click(Sender: TObject);
    procedure ProgramaComprovanteNAOFiscal1Click(Sender: TObject);
    procedure ACBrECF1MsgPoucoPapel(Sender: TObject);
    procedure ProgramaFormadePagamento1Click(Sender: TObject);
    procedure CorrigeEstadodeErro1Click(Sender: TObject);
    procedure ImprimeCheque1Click(Sender: TObject);
    procedure CarregaUnidadesdeMedida1Click(Sender: TObject);
    procedure ProgramaUnidadeMedida1Click(Sender: TObject);
    procedure AbreRelatorioGerencial1Click(Sender: TObject);
    procedure AbreCupomVinculado1Click(Sender: TObject);
    procedure ImprimeLinhaRelatorio1Click(Sender: TObject);
    procedure ImprimeLinhaVinculado1Click(Sender: TObject);
    procedure ListaRelatorioGerencial1Click(Sender: TObject);
    procedure ListaCupomVinculado1Click(Sender: TObject);
    procedure PularLinhas1Click(Sender: TObject);
    procedure LerTodasasVariveis1Click(Sender: TObject);
    procedure MFD1Click(Sender: TObject);
    procedure Termica1Click(Sender: TObject);
    procedure SbArqLogClick(Sender: TObject);
    procedure cbMemoHTMLClick(Sender: TObject);
    procedure bBobinaLimparClick(Sender: TObject);
    procedure bBobinaParamsClick(Sender: TObject);
    procedure ACBrECF1BobinaAdicionaLinhas(const {%H-}Linhas, {%H-}Operacao: String);
    procedure DadosReducaoZ1Click(Sender: TObject);
    procedure CNPJIE1Click(Sender: TObject);
    procedure NumCRZ1Click(Sender: TObject);
    procedure NumCOOInicial1Click(Sender: TObject);
    procedure VendaBruta1Click(Sender: TObject);
    procedure GrandeTotal1Click(Sender: TObject);
    procedure LerTotaisAliquotas1Click(Sender: TObject);
    procedure LerTotaisFormadePagamento1Click(Sender: TObject);
    procedure LerTotaisComprovanetNaoFiscal1Click(Sender: TObject);
    procedure UltimoItemVendido1Click(Sender: TObject);
    procedure PorCOO1Click(Sender: TObject);
    procedure PorPeriodo1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure NoFiscalCompleto1Click(Sender: TObject);
    procedure AbreNoFiscal1Click(Sender: TObject);
    procedure RegistraItemNaoFiscal1Click(Sender: TObject);
    procedure SubTotalizaNaoFiscal1Click(Sender: TObject);
    procedure EfetuaPagamentoNaoFiscal1Click(Sender: TObject);
    procedure FechaNoFiscal1Click(Sender: TObject);
    procedure CancelaNoFiscal1Click(Sender: TObject);
    procedure NumCCF1Click(Sender: TObject);
    procedure NumCOO1Click(Sender: TObject);
    procedure IdentificaConsumidor1Click(Sender: TObject);
    procedure edDirRFDChange(Sender: TObject);
    procedure sbDirRFDClick(Sender: TObject);
    procedure bRFDLerClick(Sender: TObject);
    procedure bRFDSalvarClick(Sender: TObject);
    procedure chRFDClick(Sender: TObject);
    procedure seTimeOutChange(Sender: TObject);
    procedure seIntervaloAposComandoChange(Sender: TObject);
    procedure edSH_RazaoSocialChange(Sender: TObject);
    procedure edSH_COOChange(Sender: TObject);
    procedure edSH_CNPJChange(Sender: TObject);
    procedure edSH_IEChange(Sender: TObject);
    procedure edSH_IMChange(Sender: TObject);
    procedure edSH_AplicativoChange(Sender: TObject);
    procedure edSH_NumeroAPChange(Sender: TObject);
    procedure edSH_VersaoAPChange(Sender: TObject);
    procedure edSH_Linha1Change(Sender: TObject);
    procedure edSH_Linha2Change(Sender: TObject);
    procedure IE1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure otalNoFiscal1Click(Sender: TObject);
    procedure DataMovimento1Click(Sender: TObject);
    procedure DadosUltimaReduoZ1Click(Sender: TObject);
    procedure btSerialClick(Sender: TObject);
  private
    { Private declarations }
    Function Converte( cmd : String) : String;
    procedure TrataErros(Sender: TObject; E: Exception);
    function EstadoECF: String;
    Procedure GravarINI ;
    Procedure LerINI ;

    procedure WB_LoadHTML(WebBrowser: TIpHtmlPanel; HTMLCode: string);
    procedure WB_ScrollToBottom(WebBrowser1: TIpHtmlPanel);
    procedure WB_ScrollToTop(WebBrowser1: TIpHtmlPanel);
    procedure HTMLGetImageX(Sender: TIpHtmlNode; const {%H-}URL: string;
      var Picture: TPicture);
  public
    { Public declarations }
    Procedure AtualizaMemos(VerificaEstado : Boolean = true) ;
  end;
  
const
  ECFTeste_VERSAO = '3.00' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );

var
  Form1: TForm1; 

implementation

{$R *.lfm}

uses ACBrUtil, ACBrECFBematech, VendeItem, EfetuaPagamento,
     Relatorio, Sobre, TypInfo, Math, IniFiles,
     ConfiguraSerial;
     
procedure TForm1.FormCreate(Sender: TObject);
Var I : TACBrECFModelo ;
begin
  cbxModelo.Items.Clear ;
  For I := Low(TACBrECFModelo) to High(TACBrECFModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrECFModelo), integer(I) ) ) ;
  cbxModelo.Items[0] := 'Procurar' ;
  cbxModelo.ItemIndex := 0 ;

  cbxPorta.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais( cbxPorta.Items );
  cbxPorta.Items.Insert(0,'Procurar') ;
  cbxPorta.Items.Add('LPT1') ;
  cbxPorta.Items.Add('LPT2') ;
  cbxPorta.Items.Add('LPT3') ;
  cbxPorta.Items.Add('/dev/ttyS0') ;
  cbxPorta.Items.Add('/dev/ttyS1') ;
  cbxPorta.Items.Add('/dev/ttyUSB0') ;
  cbxPorta.Items.Add('/dev/ttyUSB1') ;
  cbxPorta.Items.Add('c:\temp\ecf.txt') ;
  cbxPorta.Items.Add('/tmp/ecf.txt') ;

  mMsgChange( Sender );
  Application.OnException := @TrataErros ;
  PageControl1.ActivePageIndex := 0 ;

  LerINI ;

  if FileExists('ACBrECFMemoParams.ini') then
     ACBrECF1.MemoParams.LoadFromFile('ACBrECFMemoParams.ini');

  cbMemoHTML.Checked := ( ACBrECF1.MemoParams.Values['HTML'] = '1' ) ;

  if (not chRFD.Checked) and DirectoryExists( ACBrRFD1.DirRFD ) then
     chRFD.Checked := true ;
end;

{-----------------------------------------------------------------------------}
Procedure TForm1.TrataErros(Sender: TObject; E: Exception);
begin
  mResp.Lines.Add( E.Message );

  StatusBar1.Panels[0].Text := 'Exception' ;
  AtualizaMemos( False ) ;
  StatusBar1.Panels[1].Text := E.Message ;
//  PageControl1.ActivePageIndex := 1 ;
//  MessageDlg( E.Message,mtError,[mbOk],0) ;
end ;

procedure TForm1.AtualizaMemos(VerificaEstado : Boolean = true) ;
begin
  mEnviado.Text := Converte( ACBrECF1.ComandoEnviado );
  mResp.Lines.Add( Converte( ACBrECF1.RespostaComando) );
  mResp.Lines.Add('- + - + - + - + - + - + - + - + - + - + - + -') ;
  if VerificaEstado then
     StatusBar1.Panels[0].Text :=  EstadoECF ;
end;

Function TForm1.EstadoECF : String ;
begin
  try
     Result :=  Estados[ ACBrECF1.Estado ] ;
     { GetEnumName(TypeInfo(TACBrECFEstado), integer( ACBrECF1.Estado ) ) ;}
  except
     Result := 'Falha ao ler' ;
     mResp.Lines.Add( '**** Falha ao ler ESTADO do ECF ****' );
  end ;
end ;

function TForm1.Converte(cmd: String): String;
var I   : Integer ;
    ASC : Byte ;
    Ch  : String ;
begin
  Result := '' ;
  For I := 1 to Length(cmd) do
  begin
     ASC := Ord(cmd[I]) ;

     case ASC of
        2   : Ch := '[STX]' ;
        3   : Ch := '[ETX]' ;
        6   : Ch := '[ACK]' ;
        10  : Ch := #10 ; //'[LF]' ;
        13  : Ch := #13 ; //'[CR]' ;
        27  : Ch := '[ESC]' ;
        255 : Ch := '[FF]' ;
        32..127 : Ch := cmd[I] ;
     else ;
       Ch := '['+IntToStr(ASC)+']'
     end;

     Result := Result + Ch ;
  end ;
end;

procedure TForm1.cbxModeloChange(Sender: TObject);
begin
  try
     ACBrECF1.Modelo := TACBrECFModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;
end;

procedure TForm1.bLerDadosRedZClick(Sender : TObject) ;
var
  I: integer;
begin
  ACBrECF1.DadosReducaoZ;

  mRZ.Clear;
  with ACBrECF1.DadosReducaoZClass do
  begin
     mRZ.Lines.Add( 'Data Impressora    : ' + DateToStr( DataDaImpressora ) );
     mRZ.Lines.Add( 'Numero Série       : ' + NumeroDeSerie );
     mRZ.Lines.Add( 'Numero Série MFD   : ' + NumeroDeSerieMFD );
     mRZ.Lines.Add( 'Numero ECF         : ' + NumeroDoECF );
     mRZ.Lines.Add( 'Numero Loja        : ' + NumeroDaLoja );
     mRZ.Lines.Add( 'Numero COO Inicial : ' + NumeroCOOInicial );

     mRZ.Lines.Add( '{ REDUÇÃO Z }');
     mRZ.Lines.Add( 'Data Movimento  : ' +DateToStr( DataDoMovimento ) );
     mRZ.Lines.Add( '' );
     mRZ.Lines.Add( '{ CONTADORES }');
     mRZ.Lines.Add( 'COO  : ' + IntToStr(COO) );
     mRZ.Lines.Add( 'GNF  : ' + IntToStr(GNF) );
     mRZ.Lines.Add( 'CRO  : ' + IntToStr(CRO) );
     mRZ.Lines.Add( 'CRZ  : ' + IntToStr(CRZ) );
     mRZ.Lines.Add( 'CCF  : ' + IntToStr(CCF) );
     mRZ.Lines.Add( 'CFD  : ' + IntToStr(CFD) );
     mRZ.Lines.Add( 'CDC  : ' + IntToStr(CDC) );
     mRZ.Lines.Add( 'GRG  : ' + IntToStr(GRG) );
     mRZ.Lines.Add( 'GNFC : ' + IntToStr(GNFC) );
     mRZ.Lines.Add( 'CFC  : ' + IntToStr(CFC) );
     mRZ.Lines.Add( 'NCN  : ' + IntToStr(NCN) );
     mRZ.Lines.Add( 'CCDC : ' + IntToStr(CCDC  ) );
     mRZ.Lines.Add( '' );

     mRZ.Lines.Add( '{ TOTALIZADORES }' );
     mRZ.Lines.Add( 'Grande Total      : ' + FormatFloat('###,##0.00', ValorGrandeTotal) );
     mRZ.Lines.Add( 'VendaBruta        : ' + FormatFloat('###,##0.00', ValorVendaBruta) );
     mRZ.Lines.Add( 'CancelamentoICMS  : ' + FormatFloat('###,##0.00', CancelamentoICMS) );
     mRZ.Lines.Add( 'DescontoICMS      : ' + FormatFloat('###,##0.00', DescontoICMS) );
     mRZ.Lines.Add( 'TotalISSQN        : ' + FormatFloat('###,##0.00', TotalISSQN) );
     mRZ.Lines.Add( 'CancelamentoISSQN : ' + FormatFloat('###,##0.00', CancelamentoISSQN) );
     mRZ.Lines.Add( 'DescontoISSQN     : ' + FormatFloat('###,##0.00', DescontoISSQN) );
     mRZ.Lines.Add( 'CancelamentoOPNF  : ' + FormatFloat('###,##0.00', CancelamentoOPNF) );
     mRZ.Lines.Add( 'DescontoOPNF      : ' + FormatFloat('###,##0.00', DescontoOPNF) );
     mRZ.Lines.Add( 'VendaLiquida      : ' + FormatFloat('###,##0.00', VendaLiquida) );
     mRZ.Lines.Add( 'AcrescimoICMS     : ' + FormatFloat('###,##0.00', AcrescimoICMS) );
     mRZ.Lines.Add( 'AcrescimoISSQN    : ' + FormatFloat('###,##0.00', AcrescimoISSQN) );
     mRZ.Lines.Add( 'AcrescimoOPNF     : ' + FormatFloat('###,##0.00', AcrescimoOPNF) );
     mRZ.Lines.Add( '' );

     mRZ.Lines.Add( '{ ICMS }' );
     for I := 0 to ICMS.Count -1 do
     begin
         mRZ.Lines.Add( 'Indice    : ' + ICMS[I].Indice );
         mRZ.Lines.Add( 'Tipo      : ' + ICMS[I].Tipo );
         mRZ.Lines.Add( 'Aliquota  : ' + FormatFloat('0.00', ICMS[I].Aliquota) );
         mRZ.Lines.Add( 'Total     : ' + FormatFloat('###,##0.00', ICMS[I].Total) );
     end;
     mRZ.Lines.Add( 'SubstituicaoTributariaICMS: ' + FormatFloat('###,##0.00', SubstituicaoTributariaICMS) );
     mRZ.Lines.Add( 'IsentoICMS                : ' + FormatFloat('###,##0.00', IsentoICMS) );
     mRZ.Lines.Add( 'NaoTributadoICMS          : ' + FormatFloat('###,##0.00', NaoTributadoICMS) );
     mRZ.Lines.Add( '' );

     mRZ.Lines.Add( '{ ISSQN }' );
     for I := 0 to ISSQN.Count -1 do
     begin
         mRZ.Lines.Add( 'Indice    : ' + ISSQN[I].Indice );
         mRZ.Lines.Add( 'Tipo      : ' + ISSQN[I].Tipo );
         mRZ.Lines.Add( 'Aliquota  : ' + FormatFloat('0.00', ISSQN[I].Aliquota) );
         mRZ.Lines.Add( 'Total     : ' + FormatFloat('###,##0.00', ISSQN[I].Total) );
     end;
     mRZ.Lines.Add( 'SubstituicaoTributariaISSQN: ' + FormatFloat('###,##0.00', SubstituicaoTributariaISSQN) );
     mRZ.Lines.Add( 'IsentoISSQN                : ' + FormatFloat('###,##0.00', IsentoISSQN) );
     mRZ.Lines.Add( 'NaoTributadoISSQN          : ' + FormatFloat('###,##0.00', NaoTributadoISSQN) );
     mRZ.Lines.Add( '' );

     mRZ.Lines.Add( '{ TOTALIZADORES NÃO FISCAIS }' );
     for I := 0 to TotalizadoresNaoFiscais.Count -1 do
     begin
         mRZ.Lines.Add( 'Indice     : ' + TotalizadoresNaoFiscais[I].Indice );
         mRZ.Lines.Add( 'Descrição  : ' + TotalizadoresNaoFiscais[I].Descricao );
         mRZ.Lines.Add( 'Forma Pagto: ' + TotalizadoresNaoFiscais[I].FormaPagamento );
         mRZ.Lines.Add( 'Total      : ' + FormatFloat('###,##0.00', TotalizadoresNaoFiscais[I].Total) );
     end;
     mRZ.Lines.Add( 'TotalOperacaoNaoFiscal : ' + FormatFloat('###,##0.00', TotalOperacaoNaoFiscal) );
     mRZ.Lines.Add( '' );

     mRZ.Lines.Add( '{ RELATÓRIO GERENCIAL }' );
     for I := 0 to RelatorioGerencial.Count -1 do
     begin
         mRZ.Lines.Add( 'Indice     : ' + RelatorioGerencial[I].Indice );
         mRZ.Lines.Add( 'Descrição  : ' + RelatorioGerencial[I].Descricao );
     end;
     mRZ.Lines.Add( '' );

     mRZ.Lines.Add( '{ MEIOS DE PAGAMENTO }' );
     for I := 0 to MeiosDePagamento.Count -1 do
     begin
         mRZ.Lines.Add( 'Indice     : ' + MeiosDePagamento[I].Indice );
         mRZ.Lines.Add( 'Descrição  : ' + MeiosDePagamento[I].Descricao );
         mRZ.Lines.Add( 'Total      : ' + FormatFloat('###,##0.00', MeiosDePagamento[I].Total) );
     end;
     mRZ.Lines.Add( 'Total Troco : ' + FormatFloat('###,##0.00', TotalTroco) );
  end;
end;

procedure TForm1.btnMenuFiscalLMFCClick(Sender : TObject) ;
var
  PathArquivo: string;
begin
  if chkMenuFiscalGerarArquivo.Checked then
  begin
    if dlgDialogoSalvar.Execute then
    begin
      PathArquivo := dlgDialogoSalvar.FileName;

      if chkMenuFiscalCotepe1704.Checked then
      begin
        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          ACBrECF1.PafMF_LMFC_Cotepe1704(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
        else
          ACBrECF1.PafMF_LMFC_Cotepe1704(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);
      end
      else
      begin
        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          ACBrECF1.PafMF_LMFC_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
        else
          ACBrECF1.PafMF_LMFC_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);
      end;

      ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
    end;
  end
  else
  begin
    if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      ACBrECF1.PafMF_LMFC_Impressao(edtDtInicial.Date, edtDtFinal.Date)
    else
      ACBrECF1.PafMF_LMFC_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
  end;
end;

procedure TForm1.btnMenuFiscalLMFSClick(Sender : TObject) ;
var
  PathArquivo: string;
begin
  if chkMenuFiscalGerarArquivo.Checked then
  begin
    if dlgDialogoSalvar.Execute then
    begin
      PathArquivo := dlgDialogoSalvar.FileName;
      if pgcMenuFiscalTipo.ActivePageIndex = 0 then
        ACBrECF1.PafMF_LMFS_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
      else
        ACBrECF1.PafMF_LMFS_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

      ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
    end;
  end
  else
  begin
    if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      ACBrECF1.PafMF_LMFS_Impressao(edtDtInicial.Date, edtDtFinal.Date)
    else
      ACBrECF1.PafMF_LMFS_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
  end;
end;

procedure TForm1.btnMenuFiscalLXClick(Sender : TObject) ;
begin
  ACBrECF1.PafMF_LX_Impressao;
end;

procedure TForm1.btnMenuFiscalMFDArqClick(Sender : TObject) ;
var
  PathArquivo: string;
begin
  if dlgDialogoSalvar.Execute then
  begin
    PathArquivo := dlgDialogoSalvar.FileName;

    if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      ACBrECF1.PafMF_MFD_Cotepe1704(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
    else
      ACBrECF1.PafMF_MFD_Cotepe1704(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

    ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
  end;
end;

procedure TForm1.btnMenuFiscalMFDEspelhoClick(Sender : TObject) ;
var
  PathArquivo: string;
begin
  if dlgDialogoSalvar.Execute then
  begin
    PathArquivo := dlgDialogoSalvar.FileName;

    if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      ACBrECF1.PafMF_MFD_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
    else
      ACBrECF1.PafMF_MFD_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

    ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
  end;
end;

procedure TForm1.btnMenuFiscalRelDAVEmitidosClick(Sender : TObject) ;
var
  DAVs: TACBrECFDAVs;
  I: Integer;
const
  TipoDAV: array[0..1] of string = ('PEDIDO', 'ORCAMENTO');
  Valores: array[0..3] of Double = (1.00, 2.00, 3.50, 10.45);
  Datas:   array[0..4] of string = ('30/12/2000', '01/01/2011', '25/02/2010', '04/02/2011', '13/04/2011');
begin
  DAVs := TACBrECFDAVs.Create;
  try
    for I := 1 to 25 do
    begin
      with DAVs.New do
      begin
        Numero    := I;
        COO_Dav   := RandomRange(0, 999999);
        COO_Cupom := RandomRange(0, 999999);
        Titulo    := RandomFrom(TipoDAV);
        DtEmissao := StrToDate(RandomFrom(Datas));
        Valor     := RandomFrom(Valores)
      end;
    end;

    ACBrECF1.PafMF_RelDAVEmitidos(DAVs, 'REFERENCIA: 00/00/0000 A 00/00/0000', 0);
  finally
    DAVs.Free;
  end;
end;

procedure TForm1.btnMenuFiscalRelIdentPAFECFClick(Sender : TObject) ;
var
  IdentPaf: TACBrECFIdentificacaoPAF;
  I: Integer;
begin
  IdentPaf := TACBrECFIdentificacaoPAF.Create;
  try
    IdentPaf.NumeroLaudo := 'ABC1234567890'; // retirar do laudo
    IdentPaf.VersaoER    := '01.06'; // retirar do laudo

    // preencher dados da empresa conforme o que foi informado no laudo de análise
    IdentPaf.Empresa.RazaoSocial := 'Razao social Empresa';
    IdentPaf.Empresa.CNPJ        := '01.222.333/00001-99';
    IdentPaf.Empresa.Endereco    := 'Rua da Felicidade, 1';
    IdentPaf.Empresa.Cidade      := 'SAO PAULO';
    IdentPaf.Empresa.Uf          := 'SP';
    IdentPaf.Empresa.Cep         := '99.999-999';
    IdentPaf.Empresa.Telefone    := '(99)1111.2222';
    IdentPaf.Empresa.Contato     := 'Nome do Contato';

    IdentPaf.Paf.Nome              := 'DemoECF';// preencher conforme o laudo
    IdentPaf.Paf.Versao            := 'v01.01.01'; // versão atual do aplicativo
    IdentPaf.Paf.PrincipalExe.Nome := UpperCase(ExtractFileName(ParamStr(0)));
    IdentPaf.Paf.PrincipalExe.MD5  := StringOfChar('X', 32); // md5 atual do aplicativo

    IdentPaf.ArquivoListaAutenticados.Nome := 'lista_arquivos.txt'; // nome do arquivo contendo a lista de autenticados
    IdentPaf.ArquivoListaAutenticados.MD5  := 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'; // md5 do arquivo, mesmo que vai impresso nos cupons

    // adicionar os arquivos adicionados ao arquivo da lista de autenticados
    for I := 1 to 5 do
    begin
      with IdentPaf.OutrosArquivos.New do
      begin
        Nome := Format('Arquivo %3.3d', [I]);
        MD5  := StringOfChar('X', 32);
      end;
    end;

    // tsAACECFs autorizados para funcionamento na máquina
    IdentPaf.ECFsAutorizados.clear;
    for I := 1 to 3 do
      IdentPaf.ECFsAutorizados.Add(StringOfChar('A', 15));

    ACBrECF1.PafMF_RelIdentificacaoPafECF(IdentPaf, 0);
  finally
    IdentPaf.Free;
  end;
end;

procedure TForm1.btnMenuFiscalRelMeiosPagtoClick(Sender : TObject) ;
var
  FormasPagamento: TACBrECFFormasPagamento;
  I: Integer;
const
  arrayDescrFormaPagto: array[0..3] of string = ('Dinheiro', 'Cheque', 'Cartão', 'Ticket');
  arrayDataLancamento: array[0..4] of String = ('01/01/2010', '31/12/2010', '04/05/2011', '02/01/2010', '03/05/2011');
  arrayValores: array[0..4] of Double = (10.56, 14.23, 0.00, 12.00, 1.20);
begin
  FormasPagamento := TACBrECFFormasPagamento.Create;
  try
    for I := 1 to 25 do
    begin
      with FormasPagamento.New do
      begin
        Descricao      := RandomFrom(arrayDescrFormaPagto);
        Data           := StrToDate(RandomFrom(arrayDataLancamento));
        ValorFiscal    := RandomFrom(arrayValores);
        ValorNaoFiscal := RandomFrom(arrayValores);
      end;
    end;

    ACBrECF1.PafMF_RelMeiosPagamento(
      FormasPagamento,
      'PERIODO DE 01/01/2000 A 31/12/2000',
      0
    );
  finally
    FormasPagamento.Free;
  end;
end;

procedure TForm1.chAACUsarChange(Sender : TObject) ;
Var
  OldAtivo : Boolean ;
begin
  OldAtivo := ACBrECF1.Ativo ;
  try
     try
        ACBrECF1.Desativar ;

        if chAACUsar.Checked then
           ACBrECF1.AAC := ACBrAAC1
        else
           ACBrECF1.AAC := nil ;
     except
        chAACUsar.OnChange := nil ;
        chAACUsar.Checked := Assigned( ACBrECF1.AAC )  ;
        chAACUsar.OnChange := @chAACUsarChange ;

        raise ;
     end ;
  finally
     ACBrECF1.Ativo := OldAtivo ;
  end ;
end;

procedure TForm1.BitBtn7Click(Sender : TObject) ;
begin
  ACBrECF1.CodigodeBarras.AdicionarCodBarra(TACBrECFTipoCodBarra(RdgTipoBarra.ItemIndex),
    SpEdtLarguraBarra.Value, SpEdAlturaBarra.Value, EdtCodBarras.Text,
    ChImpTextoAbaixoBarras.Checked, ChImpTextoVertical.Checked);

  ACBrECF1.FechaCupom( MenTextoBarras.Text );
end;

procedure TForm1.BitBtn6Click(Sender : TObject) ;
begin
  ACBrECF1.CodigodeBarras.AdicionarCodBarra(TACBrECFTipoCodBarra(RdgTipoBarra.ItemIndex),
    SpEdtLarguraBarra.Value, SpEdAlturaBarra.Value, EdtCodBarras.Text,
    ChImpTextoAbaixoBarras.Checked, ChImpTextoVertical.Checked);

  ACBrECF1.LinhaRelatorioGerencial( MenTextoBarras.Text );
end;

procedure TForm1.ACBrAAC1DepoisAbrirArquivo(Sender : TObject) ;
var
   I : Integer ;
begin
   edAAC_SH_RazaoSocial.Text := ACBrAAC1.SH_RazaoSocial;
   edAAC_SH_CNPJ.Text        := ACBrAAC1.SH_CNPJ;
   edAAC_SH_IM.Text          := ACBrAAC1.SH_IM;
   edAAC_SH_IE.Text          := ACBrAAC1.SH_IE;
   edAAC_PAF_Aplicativo.Text := ACBrAAC1.PAF_Nome;
   edAAC_PAF_Versao.Text     := ACBrAAC1.PAF_Versao;
   edAAC_PAF_MD5.Text        := ACBrAAC1.PAF_MD5;

   with mdsAACECF do
   begin
     Open;
     // Zera Tabela em memoria //
     First;
     while not EOF do
        Delete;

     // Insere Itens da Lista de ECFS //
     For I := 0 to ACBrAAC1.ECFsAutorizados.Count-1 do
     begin
       Insert;
       FieldByName('Indice').AsInteger  := I;
       FieldByName('NumSerie').AsString := ACBrAAC1.ECFsAutorizados[I].NumeroSerie;
       FieldByName('CRO').AsInteger     := ACBrAAC1.ECFsAutorizados[I].CRO;
       FieldByName('ValorGT').AsFloat   := ACBrAAC1.ECFsAutorizados[I].ValorGT;
       FieldByName('DtHrAtualizado').AsDateTime := ACBrAAC1.ECFsAutorizados[I].DtHrAtualizado;
       Post;
     end ;
   end ;

   mAACParams.Lines.Clear;
   mAACParams.Lines.Assign( ACBrAAC1.Params );
end;

procedure TForm1.ACBrAAC1GetChave(var Chave : AnsiString) ;
begin
   Chave := 'Informe aqui a SUA CHAVE' ;
   // Dicas: Evite Strings fixas.. prefira uma Constante
   // Use Chr(nn) ou outra função para compor a chave
end;

procedure TForm1.bAACAtualizarGTClick(Sender : TObject) ;
begin
  ACBrAAC1.AtualizarValorGT( mdsAACECF.FieldByName('NumSerie').AsString,
                             mdsAACECF.FieldByName('ValorGT').AsFloat ) ;
end;

procedure TForm1.ACBrAAC1AntesAbrirArquivo(var Continua : Boolean) ;
begin
   ACBrAAC1.NomeArquivoAux := ExtractFilePath(Application.ExeName) + edAACNomeArq.Text;
   ACBrAAC1.ArqLOG         := ExtractFilePath(Application.ExeName) + edAACLog.Text;
   Continua := True;
end;

procedure TForm1.bAACGravarArquivoClick(Sender : TObject) ;
begin
  ACBrAAC1.SH_RazaoSocial := edAAC_SH_RazaoSocial.Text;
  ACBrAAC1.SH_CNPJ        := edAAC_SH_CNPJ.Text;
  ACBrAAC1.SH_IM          := edAAC_SH_IM.Text;
  ACBrAAC1.SH_IE          := edAAC_SH_IE.Text;
  ACBrAAC1.PAF_Nome       := edAAC_PAF_Aplicativo.Text;
  ACBrAAC1.PAF_Versao     := edAAC_PAF_Versao.Text;
  ACBrAAC1.PAF_MD5        := edAAC_PAF_MD5.Text;

  ACBrAAC1.ECFsAutorizados.Clear;
  with mdsAACECF do
  begin
    // Zera Tabela em memoria //
    First;
    while not EOF do
    begin
       with ACBrAAC1.ECFsAutorizados.New do
       begin
         NumeroSerie    := FieldByName('NumSerie').AsString;
         CRO            := FieldByName('CRO').AsInteger;
         ValorGT        := FieldByName('ValorGT').AsFloat;
         DtHrAtualizado := FieldByName('DtHrAtualizado').AsDateTime;
       end ;
       Next;
    end ;
  end ;

  ACBrAAC1.Params.Assign( mAACParams.Lines );

  ACBrAAC1.SalvarArquivo;
end;

procedure TForm1.bAACAbrirArquivoClick(Sender : TObject) ;
begin
  ACBrAAC1.AbrirArquivo;
end;

procedure TForm1.bACCVerificarGTClick(Sender : TObject) ;
var
   Erro : LongInt ;
   Msg : String ;
begin
  Erro := ACBrAAC1.VerificarGTECF( mdsAACECF.FieldByName('NumSerie').AsString,
                                   mdsAACECF.FieldByName('ValorGT').AsFloat ) ;

  case Erro of
     0  : Msg := 'G.T. OK' ;
     -1 : Msg := 'Num.Serie não encontrado';
     -2 : Msg := 'GT diferente';
  else
     Msg := 'Erro não definido';
  end ;

  ShowMessage(Msg) ;
end;

procedure TForm1.chArredondamentoItemMFDChange(Sender : TObject) ;
begin
  ACBrECF1.ArredondaItemMFD := chArredondamentoItemMFD.Checked ;
end;

procedure TForm1.chArredondaPorQtdChange(Sender : TObject) ;
begin
  ACBrECF1.ArredondaPorQtd := chArredondaPorQtd.Checked ;
end;

procedure TForm1.chBloqueiaChange(Sender : TObject) ;
begin
  ACBrECF1.BloqueiaMouseTeclado := chBloqueia.Checked ;
end;

procedure TForm1.chDescricaoGrandeChange(Sender : TObject) ;
begin
  ACBrECF1.DescricaoGrande := chDescricaoGrande.Checked ;
end;

procedure TForm1.chExibeMsgChange(Sender : TObject) ;
begin
  ACBrECF1.ExibeMensagem := chExibeMsg.Checked ;
end;

procedure TForm1.chGavetaSinalInvertidoChange(Sender : TObject) ;
begin
  ACBrECF1.GavetaSinalInvertido := chGavetaSinalInvertido.Checked ;
end;

procedure TForm1.ChImpTextoVerticalChange(Sender : TObject) ;
begin
  MenTextoBarras.Enabled  :=  ChImpTextoVertical.Enabled;
end;

procedure TForm1.chTentarChange(Sender : TObject) ;
begin
  ACBrECF1.ReTentar := chTentar.Checked ;
end;

procedure TForm1.mAchaCNFDescricaoClick(Sender : TObject) ;
var
  CNF       : TACBrECFComprovanteNaoFiscal;
  Descricao : String;
begin
  ACBrECF1.LerTotaisComprovanteNaoFiscal ;

  if not InputQuery('Acha CNF por Descrição',
                    'Entre com o descricao:', Descricao ) then
    Exit;

  CNF  :=  ACBrECF1.AchaCNFDescricao(Descricao);

  if CNF <> Nil then
  begin
    mResp.Lines.Add('Indice   : ' + CNF.Indice);
    mResp.Lines.Add('CON      : ' + IntToStrZero(CNF.Contador, 4));
    mResp.Lines.Add('Descrição: ' + CNF.Descricao);
    mResp.Lines.Add('Valor atual do totalizador R$ ' + FormatFloat('###,##0.00',CNF.Total));
  end
  else
    mResp.Lines.Add('CNF (' + Descricao + ') não encontrado!');

  AtualizaMemos();
end;

procedure TForm1.mAcharAliqPorIndiceClick(Sender : TObject) ;
var
  Aliquota  : TACBrECFAliquota;
  Indice    : String;
begin
  ACBrECF1.LerTotaisAliquota ;

  if not InputQuery('Acha Aliquota por Indice',
                    'Entre com o Indice:', Indice ) then
    Exit;

  Aliquota  :=  ACBrECF1.AchaICMSIndice(Indice);

  if Aliquota <> Nil then
  begin
    mResp.Lines.Add('Indice  : ' + Aliquota.Indice);
    mResp.Lines.Add('Aliquota: ' + FormatFloat('###,##0.00',Aliquota.Aliquota));
    mResp.Lines.Add('Valor atual do totalizador R$ ' + FormatFloat('###,##0.00',Aliquota.Total));
  end
  else
    mResp.Lines.Add('Indice (' + Indice + ') não encontrado!');

  AtualizaMemos();
end;

procedure TForm1.mAcharAliqPorValorClick(Sender : TObject) ;
var
  Aliquota  : TACBrECFAliquota;
  ValorStr  : String;
  Valor     : Double;
begin
  ACBrECF1.LerTotaisAliquota ;

  if not InputQuery('Acha Aliquota por Valor',
                    'Entre com o Valor:', ValorStr ) then
    Exit;

  Valor     := StrToFloatDef(ValorStr, 0);
  Aliquota  :=  ACBrECF1.AchaICMSAliquota(Valor);

  if Aliquota <> Nil then
  begin
    mResp.Lines.Add('Indice  : ' + Aliquota.Indice);
    mResp.Lines.Add('Aliquota: ' + FormatFloat('###,##0.00',Aliquota.Aliquota));
    mResp.Lines.Add('Valor atual do totalizador R$ ' + FormatFloat('###,##0.00',Aliquota.Total));
  end
  else
    mResp.Lines.Add('Aliquota (' + FloatToStr(Valor) + ') não encontrada!');

  AtualizaMemos();

end;

procedure TForm1.mAcharCNFIndiceClick(Sender : TObject) ;
var
  CNF     : TACBrECFComprovanteNaoFiscal;
  Indice  : String;
begin
  ACBrECF1.LerTotaisComprovanteNaoFiscal ;

  if not InputQuery('Acha CNF por Indice',
                    'Entre com o Indice:', Indice ) then
    Exit;

  CNF  :=  ACBrECF1.AchaCNFIndice(Indice);

  if CNF <> Nil then
  begin
    mResp.Lines.Add('Indice   : ' + CNF.Indice);
    mResp.Lines.Add('CON      : ' + IntToStrZero(CNF.Contador, 4));
    mResp.Lines.Add('Descrição: ' + CNF.Descricao);
    mResp.Lines.Add('Valor atual do totalizador R$ ' + FormatFloat('###,##0.00',CNF.Total));
  end
  else
    mResp.Lines.Add('Indice (' + Indice + ') não encontrado!');

  AtualizaMemos();
end;

procedure TForm1.mAcharFPGDescricaoClick(Sender : TObject) ;
var
  FormaPagto: TACBrECFFormaPagamento;
  Descricao : String;
begin
  ACBrECF1.LerTotaisFormaPagamento ;

  if not InputQuery('Acha Forma Pagamento por Descrição',
                    'Entre com a descrição:', Descricao ) then
    Exit;

  FormaPagto  :=  ACBrECF1.AchaFPGDescricao(Descricao);

  if FormaPagto <> Nil then
  begin
    mResp.Lines.Add('Indice   : ' + FormaPagto.Indice);
    mResp.Lines.Add('Descrição: ' + FormaPagto.Descricao);
    mResp.Lines.Add('Valor atual do totalizador R$ ' + FormatFloat('###,##0.00',FormaPagto.Total));
  end
  else
    mResp.Lines.Add('Forma de Pagamento (' + Descricao + ') não encontrada!');

  AtualizaMemos();

end;

procedure TForm1.mAcharFPGIndiceClick(Sender : TObject) ;
var
  FormaPagto: TACBrECFFormaPagamento;
  Indice    : String;
begin
  ACBrECF1.LerTotaisFormaPagamento ;

  if not InputQuery('Acha Forma Pagamento por Indice',
                    'Entre com o Indice:', Indice ) then
    Exit;

  FormaPagto  :=  ACBrECF1.AchaFPGIndice(Indice);

  if FormaPagto <> Nil then
  begin
    mResp.Lines.Add('Indice   : ' + FormaPagto.Indice);
    mResp.Lines.Add('Descrição: ' + FormaPagto.Descricao);
    mResp.Lines.Add('Valor atual do totalizador R$ ' + FormatFloat('###,##0.00',FormaPagto.Total));
  end
  else
    mResp.Lines.Add('Indice (' + Indice + ') não encontrado!');

  AtualizaMemos();
end;

procedure TForm1.mAcharRGDescricaoClick(Sender : TObject) ;
var
  RG       : TACBrECFRelatorioGerencial;
  Descricao: String;
begin
  ACBrECF1.CarregaRelatoriosGerenciais ;

  if not InputQuery('Acha Relatório Gerencial por Indice',
                    'Entre com o Indice:', Descricao ) then
    Exit;

  RG  :=  ACBrECF1.AchaRGDescricao(Descricao);

  if RG <> Nil then
  begin
    mResp.Lines.Add('Indice   : ' + RG.Indice);
    mResp.Lines.Add('Descrição: ' + RG.Descricao);
    mResp.Lines.Add('CER:     : ' + FormatFloat('0000',RG.Contador));
  end
  else
    mResp.Lines.Add('Relatório Gerencial (' + Descricao + ') não encontrado!');

  AtualizaMemos();
end;

procedure TForm1.mAcharRGIndiceClick(Sender : TObject) ;
var
  RG      : TACBrECFRelatorioGerencial;
  Indice  : String;
begin
  ACBrECF1.CarregaRelatoriosGerenciais ;

  if not InputQuery('Acha Relatório Gerencial por Indice',
                    'Entre com o Indice:', Indice ) then
    Exit;

  RG  :=  ACBrECF1.AchaRGIndice(Indice);

  if RG <> Nil then
  begin
    mResp.Lines.Add('Indice   : ' + RG.Indice);
    mResp.Lines.Add('Descrição: ' + RG.Descricao);
    mResp.Lines.Add('CER:     : ' + FormatFloat('0000',RG.Contador));
  end
  else
    mResp.Lines.Add('Indice (' + Indice + ') não encontrado!');

  AtualizaMemos();
end;

procedure TForm1.mAcresNaoFiscalClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalAcrescimosOPNF: ('+ FloatToStr(ACBrECF1.TotalAcrescimosOPNF)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mARQMFDDLLCooClick(Sender : TObject) ;
Var
  Arquivo: String ;
  cCOOIni, cCOOFim : String ;
  nCOOIni, nCOOFim : Integer ;
begin
  Arquivo := 'c:\temp\teste.txt' ;
  if not InputQuery('Arquivo MFD DLL',
                    'Nome Arquivo:', Arquivo ) then
     exit ;

  cCOOIni := '0' ;
  cCOOFim := '0' ;

  if not InputQuery('Arquivo MFD DLL',
                'Entre com o COO Inicial:', cCOOIni ) then
     exit ;
  nCOOIni := StrToIntDef(cCOOIni,-1) ;
  if nCOOIni < 0 then exit ;

  if not InputQuery('Arquivo MFD DLL',
                'Entre com o COO Final:', cCOOFim ) then
     exit ;
  nCOOFim := StrToIntDef(cCOOFim,-1) ;
  if nCOOFim < 0 then exit ;

  ACBrECF1.ArquivoMFD_DLL(nCOOIni, nCOOFim, Arquivo);
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.mARQMFDDLLPeriodoClick(Sender : TObject) ;
Var
  Arquivo: String ;
  cDatIni, cDatFim : String ;
  dDatIni, dDatFim : TDateTime ;
begin
  Arquivo := 'c:\temp\teste.txt' ;
  if not InputQuery('Arquivo MFD DLL',
                    'Nome Arquivo:', Arquivo ) then
     exit ;

  cDatIni := '01/'+FormatDateTime('mm/yy',now) ;
  cDatFim := FormatDateTime('dd/mm/yy',now) ;

  if not InputQuery('Arquivo MFD DLL',
                'Entre com o a Data Inicial (DD/MM/AA):', cDatIni ) then
     exit ;
  try
     dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit ;
  end ;

  if not InputQuery('Arquivo MFD DLL',
                'Entre com o a Data Final (DD/MM/AA):', cDatFim ) then
     exit ;
  try
     dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit
  end ;

  ACBrECF1.ArquivoMFD_DLL(dDatIni, dDatFim, Arquivo);
  mResp.Lines.Add('---------------------------------');

end;

procedure TForm1.mCancNaoFiscalClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalCancelamentosOPNF: ('+ FloatToStr(ACBrECF1.TotalCancelamentosOPNF)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mDescNaoFiscalClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalDescontosOPNF: ('+ FloatToStr(ACBrECF1.TotalDescontosOPNF)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mdsAACECFAfterOpen(DataSet : TDataSet) ;
begin
   TFloatField( mdsAACECF.FieldByName('ValorGT') ).DisplayFormat := '###,###,##0.00';
   TDateTimeField( mdsAACECF.FieldByName('DtHrAtualizado') ).DisplayFormat := 'dd/mm/yy hh:nn:ss';
end;

procedure TForm1.MenuItem20Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Parametro Desconto ISSQN: '+
     IfThen( ACBrECF1.ParamDescontoISSQN , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.mFontesECFClick(Sender : TObject) ;
begin
  ACBrECF1.AbreRelatorioGerencial;
  ACBRECF1.LinhaRelatorioGerencial('LINHA NORMAL 1');
  ACBRECF1.LinhaRelatorioGerencial(#14+'EXPANDIDO 1 LINHA');
  ACBRECF1.LinhaRelatorioGerencial('LINHA NORMAL 1');
  ACBRECF1.LinhaRelatorioGerencial(#15+'ON/OFF MODO CONDENSADO'+#18);
  ACBRECF1.LinhaRelatorioGerencial(#27+'W1'+'ON/OFF MODO EXPANDIDO'+#27+'W0');
  ACBRECF1.FechaRelatorio;
end;

procedure TForm1.mLerTotaisRelatoriosGerenciaisClick(Sender : TObject) ;
var
  A : Integer ;
begin
  ACBrECF1.LerTotaisRelatoriosGerenciais ;

  for A := 0 to ACBrECF1.RelatoriosGerenciais.Count -1 do
  begin
     if ACBrECF1.RelatoriosGerenciais[A].Descricao <> '' then
        mResp.Lines.Add( 'RG: '+ACBrECF1.RelatoriosGerenciais[A].Indice+' - '+
           ACBrECF1.RelatoriosGerenciais[A].Descricao+' ('+
           IntToStr(ACBrECF1.RelatoriosGerenciais[A].Contador)+')') ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.mLerTrocoClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Total do Troco: '+ FormatFloat('#,###,##0.00', ACBrECF1.TotalTroco) ) ;
  AtualizaMemos ;
end;

procedure TForm1.mModeloStrClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'ModeloStr: ('+ ACBrECF1.ModeloStr+')' );
  AtualizaMemos ;
end;

procedure TForm1.mNumCCDCClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.CCDC: ('+ ACBrECF1.NumCCDC +')' );
  AtualizaMemos ;
end;

procedure TForm1.mNumCFDClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.CFD: ('+ ACBrECF1.NumCFD +')' );
  AtualizaMemos ;
end;

procedure TForm1.mNumGNFCClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.GNFC: ('+ ACBrECF1.NumGNFC +')' );
  AtualizaMemos ;
end;

procedure TForm1.mNumNCNClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.NCN: ('+ ACBrECF1.NumNCN +')' );
  AtualizaMemos ;
end;

procedure TForm1.mRelatorioGerenciaisClick(Sender : TObject) ;
var
   A: Integer;
begin
  ACBrECF1.CarregaRelatoriosGerenciais ;

  for A := 0 to ACBrECF1.RelatoriosGerenciais.Count -1 do
  begin
     if ACBrECF1.RelatoriosGerenciais[A].Descricao <> '' then
        mResp.Lines.Add( 'Relatorio Gerencial: '+ACBrECF1.RelatoriosGerenciais[A].Indice+' -> '+
           ACBrECF1.RelatoriosGerenciais[A].Descricao);
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.mClicheClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Cliche: ('+ ACBrECF1.Cliche+')' );
  AtualizaMemos ;
end;

procedure TForm1.mCortaPapelClick(Sender : TObject) ;
Var
  Resp : TModalResult ;
begin
  Resp := MessageDlg('Corte Parcial ?',mtConfirmation,mbYesNoCancel,0) ;

  if Resp = mrCancel then
     exit ;

  ACBrECF1.CortaPapel( (Resp = mrYes) );
end;

procedure TForm1.mDataHoraSwBasicoClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Data Hora Sw.Básico: ('+ FormatDateTime('dd/mm/yy hh:nn:ss',
                   ACBrECF1.DataHoraSB) +')' );
  AtualizaMemos ;
end;

procedure TForm1.MenuItem2Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalCancelamentosISSQN: ('+ FloatToStr(ACBrECF1.TotalCancelamentosISSQN)+')' );
  AtualizaMemos ;
end;

procedure TForm1.MenuItem3Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalDescontosISSQN: ('+ FloatToStr(ACBrECF1.TotalDescontosISSQN)+')' );
  AtualizaMemos ;
end;

procedure TForm1.MenuItem4Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalAcrescimosISSQN: ('+ FloatToStr(ACBrECF1.TotalAcrescimosISSQN)+')' );
  AtualizaMemos ;
end;

procedure TForm1.MenuItem6Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalSubstituicaoTributariaISSQN: ('+ FloatToStr(ACBrECF1.TotalSubstituicaoTributariaISSQN)+')' );
  AtualizaMemos ;
end;

procedure TForm1.MenuItem7Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalNaoTributadoISSQN: ('+ FloatToStr(ACBrECF1.TotalNaoTributadoISSQN)+')' );
  AtualizaMemos ;
end;

procedure TForm1.MenuItem8Click(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalIsencaoISSQN: ('+ FloatToStr(ACBrECF1.TotalIsencaoISSQN)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mESPMFDDLLCooClick(Sender : TObject) ;
Var
  Arquivo: String ;
  cCOOIni, cCOOFim : String ;
  nCOOIni, nCOOFim : Integer ;
begin
  Arquivo := 'c:\temp\teste.txt' ;
  if not InputQuery('Espelho MFD DLL',
                    'Nome Arquivo:', Arquivo ) then
     exit ;

  cCOOIni := '0' ;
  cCOOFim := '0' ;

  if not InputQuery('Espelho MFD DLL',
                'Entre com o COO Inicial:', cCOOIni ) then
     exit ;
  nCOOIni := StrToIntDef(cCOOIni,-1) ;
  if nCOOIni < 0 then exit ;

  if not InputQuery('Espelho MFD DLL',
                'Entre com o COO Final:', cCOOFim ) then
     exit ;
  nCOOFim := StrToIntDef(cCOOFim,-1) ;
  if nCOOFim < 0 then exit ;

  ACBrECF1.EspelhoMFD_DLL(nCOOIni, nCOOFim, Arquivo);
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.mESPMFDDLLPeriodoClick(Sender : TObject) ;
Var
  Arquivo: String ;
  cDatIni, cDatFim : String ;
  dDatIni, dDatFim : TDateTime ;
begin
  Arquivo := 'c:\temp\teste.txt' ;
  if not InputQuery('Espelho MFD DLL',
                    'Nome Arquivo:', Arquivo ) then
     exit ;

  cDatIni := '01/'+FormatDateTime('mm/yy',now) ;
  cDatFim := FormatDateTime('dd/mm/yy',now) ;

  if not InputQuery('Espelho MFD DLL',
                'Entre com o a Data Inicial (DD/MM/AA):', cDatIni ) then
     exit ;
  try
     dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit ;
  end ;

  if not InputQuery('Espelho MFD DLL',
                'Entre com o a Data Final (DD/MM/AA):', cDatFim ) then
     exit ;
  try
     dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit
  end ;

  ACBrECF1.EspelhoMFD_DLL(dDatIni, dDatFim, Arquivo);
  mResp.Lines.Add('---------------------------------');

end;

procedure TForm1.mICMSTotalAcrescimosClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalAcrescimos: ('+ FloatToStr(ACBrECF1.TotalAcrescimos)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mICMSTotalDescontosClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalDescontos: ('+ FloatToStr(ACBrECF1.TotalDescontos)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mICMSTotalIsencaoClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalIsencao: ('+ FloatToStr(ACBrECF1.TotalIsencao)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mICMSTotalNaoTributadoClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalNaoTributado: ('+ FloatToStr(ACBrECF1.TotalNaoTributado)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mICMSTotalSubstituicaoTributariaClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalSubstituicaoTributaria: ('+ FloatToStr(ACBrECF1.TotalSubstituicaoTributaria)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mIdentificaConsumidorClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Identifica Consumidor no Rodapé: '+
     IfThen( ACBrECF1.IdentificaConsumidorRodape , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.mIdentificaOperadorClick(Sender : TObject) ;
Var
  Operador : String ;
begin
  Operador := edOperador.Text ;
  if not InputQuery('Identifica Operador',
                    'Entre com o Nome do Operador', Operador ) then
     exit ;

  if Operador <> '' then
  begin
     ACBrECF1.IdentificaOperador( Operador );
     edOperador.Text := ACBrECF1.Operador ;
  end ;
end;

procedure TForm1.mIdentificaPAFClick(Sender : TObject) ;
Var
  Linha1, Linha2 : String ;
begin
  Linha1 := ACBrECF1.PAF ;
  Linha2 := copy(Linha1, pos('|',Linha1)+1, Length(Linha1) ) ;
  Linha1 := copy(Linha1, 1, pos('|',Linha1)-1) ;
  if not InputQuery('Identifica PAF (Programa Aplicativo Fiscal)',
                    'Linhas 1:', Linha1 ) then
     exit ;

  if not InputQuery('Identifica PAF (Programa Aplicativo Fiscal)',
                    'Linhas 2:', Linha2 ) then
     exit ;

  if Linha1 + Linha2 <> '' then
  begin
     ACBrECF1.IdentificaPAF(Linha1, Linha2);
  end ;
end;

procedure TForm1.mIMClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'IM: ('+ ACBrECF1.IM+')' );
  AtualizaMemos ;
end;

procedure TForm1.mLeituraXSerialClick(Sender : TObject) ;
Var
  Linhas : TStringList ;
  I      : Integer ;
  Arquivo: String ;
begin
  Arquivo := ' ' ;
  if not InputQuery('LeituraX Serial',
                    'Nome Arquivo (vazio lista no Memo):', Arquivo ) then
     exit ;

  Arquivo := Trim(Arquivo) ;
  if Arquivo <> '' then
     ACBrECF1.LeituraXSerial(Arquivo)
  else
   begin
     Linhas := TStringList.Create ;
     try
        ACBrECF1.LeituraXSerial( Linhas );

        For I := 0 to Linhas.Count - 1 do
           mResp.Lines.Add(Linhas[I]) ;
     finally
        Linhas.Free ;
     end ;
   end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.mNumCDCClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.CDC: ('+ ACBrECF1.NumCDC +')' );
  AtualizaMemos ;
end;

procedure TForm1.mNumGNFClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.GNF: ('+ ACBrECF1.NumGNF +')' );
  AtualizaMemos ;
end;

procedure TForm1.mNumGRGClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'Num.GRG: ('+ ACBrECF1.NumGRG +')' );
  AtualizaMemos ;
end;

procedure TForm1.mPAFClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'PAF: ('+ ACBrECF1.PAF+')' );
  AtualizaMemos ;
end;

procedure TForm1.mICMSTotalCancelamentosClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalCancelamentos: ('+ FloatToStr(ACBrECF1.TotalCancelamentos)+')' );
  AtualizaMemos ;
end;

procedure TForm1.mProgramaRelatorioGerencialClick(Sender : TObject) ;
var
   rg:String;
begin
  rg := '' ;
  if not InputQuery('Programaçao de Relatório Gerencial',
                    'Entre com a Descrição do Relatório Gerencial:', rg ) then
     exit ;
  if MessageDlg('O Relatório Gerencial: ['+rg+'] será programado.'+sLineBreak+sLineBreak+
                'Cuidado a programação de Relatórios Gerenciais é irreversivel'+sLineBreak+
                'Confirma a operação ?',mtConfirmation,mbYesNoCancel,0) <> mrYes then
     exit ;
  ACBrECF1.ProgramaRelatoriosGerenciais( rg );
end;

procedure TForm1.mSangriaClick(Sender : TObject) ;
  Var CNF, FPG : String ;
      Valor : String ;
begin
  CNF := 'SANGRIA' ;
  FPG := 'DINHEIRO' ;
  Valor  := '10' ;

  if not InputQuery('Sangria',
                    'Entre com o Valor da Sangria', Valor ) then
     exit ;

  if not InputQuery('Sangria',
                    'Entre com a Descrição do Comprovante Não Fiscal', CNF ) then
     exit ;

  if not InputQuery('Sangria',
                    'Entre com a Descrição da Forrma de Pagamento', FPG ) then
     exit ;

  ACBrECF1.Sangria( StrToFloat(Valor), 'TESTE DE SANGRIA', CNF, FPG ) ;

  mResp.Lines.Add( 'Sangria: '+ Valor+' '+ CNF +' '+FPG );
  AtualizaMemos ;
end;

procedure TForm1.mSuprimentoClick(Sender : TObject) ;
  Var CNF, FPG : String ;
      Valor : String ;
begin
  CNF := 'SUPRIMENTO' ;
  FPG := 'DINHEIRO' ;
  Valor  := '10' ;

  if not InputQuery('Suprimento',
                    'Entre com o Valor do Suprimento', Valor ) then
     exit ;

  if not InputQuery('Suprimento',
                    'Entre com a Descrição do Comprovante Não Fiscal', CNF ) then
     exit ;

  if not InputQuery('Suprimento',
                    'Entre com a Descrição da Forrma de Pagamento', FPG ) then
     exit ;

  ACBrECF1.Suprimento( StrToFloat(Valor), 'TESTE DE SUPRIMENTO' , CNF, FPG ) ;

  mResp.Lines.Add( 'Suprimento: '+ Valor+' '+ CNF +' '+FPG );
  AtualizaMemos ;
end;

procedure TForm1.mTesteVinculadoClick(Sender : TObject) ;
Var cCupons, cFPG, cCOO : String ;
    nCupons, J : Integer ;
    tIni : TDateTime ;
begin
  ACBrECF1.CarregaFormasPagamento ;
  if ACBrECF1.FormasPagamento.Count < 1 then
     raise Exception.Create('Nenhuma Forma de Pagamento programada no ECF');

  cCupons := '1' ;
  if not InputQuery('Teste de Vinculado',
                'Numero de Cupons a imprimir:', cCupons ) then
     exit ;

  cFPG := '02' ;
  if not InputQuery('Teste de Vinculado',
                'Forma de Pagamento a utilizar:', cFPG ) then
     exit ;

  if ACBrECF1.AchaFPGIndice(cFPG) = nil then
     raise Exception.Create('Forma de pagamento '+cFPG+' não encontrada');

  nCupons := StrToIntDef(cCupons,0) ;
  if nCupons < 1 then
     exit ;

  For J := 1 to nCupons do
  begin
     tIni := Now ;
     mResp.Lines.Add('Iniciando Cupom: '+IntToStr(nCupons)+ ' - '+ DateTimeToStr(tIni) ) ;
     ACBrECF1.AbreCupom();
     mResp.Lines.Add('Cupom Aberto: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos') ;

     ACBrECF1.VendeItem( '7654321',
                         'TESTE DE PRODUTO, CUPOM: '+IntToStrZero(nCupons,3),
                         'NN',1,1,0,'UN') ;
     mResp.Lines.Add('Item Vendido: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos');

     ACBrECF1.SubtotalizaCupom( );
     mResp.Lines.Add('SubTotalizado: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos');

     { Efetuando pagamento na FPG informada }
     ACBrECF1.EfetuaPagamento(cFPG, 1 , 'TESTE DE VINCULADO', True);
     mResp.Lines.Add('Pagamento Efetuado: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos');

     ACBrECF1.FechaCupom('TESTE DE CUPOM VINCULADO');
     mResp.Lines.Add('Finalizado Cupom: '+FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos') ;

     cCOO := ACBrECF1.NumCupom ;
     ACBrECF1.CupomVinculado(cCOO, cFPG, 1, frRelatorio.mRelat.Lines, 2);
{
     ACBrECF1.AbreCupomVinculado(cCOO, cFPG, 1);
     mResp.Lines.Add('Abrindo Vinculado: '+FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos') ;
     ACBrECF1.LinhaCupomVinculado( frRelatorio.mRelat.Lines.Text ) ;
     ACBrECF1.PulaLinhas  ;
     ACBrECF1.AcionaGuilhotina ;
     ACBrECF1.LinhaCupomVinculado( frRelatorio.mRelat.Lines.Text ) ;
     mResp.Lines.Add('Imprimindo Linhas Vinculado: '+FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos') ;
     ACBrECF1.FechaRelatorio ;
     mResp.Lines.Add('Finalizado Vinculado: '+FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos') ;
}
     mResp.Lines.Add('---------------------------------');
     AtualizaMemos ;
  end ;
end;

procedure TForm1.mUsuarioAtualClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'UsuarioAtual: ('+ ACBrECF1.UsuarioAtual+')' );
  AtualizaMemos ;
end;

procedure TForm1.mValorTotalNaoFiscalClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'TotalNaoFiscal: ('+ FloatToStr(ACBrECF1.TotalNaoFiscal)+')' );
  AtualizaMemos ;
end;

procedure TForm1.NumSerieMFDClick(Sender : TObject) ;
begin
  mResp.Lines.Add( 'N.Série MFD: ('+ ACBrECF1.NumSerieMFD+')' );
  AtualizaMemos ;
end;

procedure TForm1.RdgTipoBarraClick(Sender : TObject) ;
begin
  Case RdgTipoBarra.ItemIndex of
    0 : EdtCodBarras.Text :=  '789000000001';
    1 : EdtCodBarras.Text :=  '0000000';
    2 : EdtCodBarras.Text :=  '123456';
    3 : EdtCodBarras.Text :=  '123456';
    4 : EdtCodBarras.Text :=  'abcABC123';
    5 : EdtCodBarras.Text :=  'ABC123';
    6 : EdtCodBarras.Text :=  'ABC123';
    7 : EdtCodBarras.Text :=  '00000000000';
    8 : EdtCodBarras.Text :=  '123456';
    9 : EdtCodBarras.Text :=  '123456';
    10: EdtCodBarras.Text :=  '123456';
  end;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  close ;
end;

procedure TForm1.bAtivarClick(Sender: TObject);
begin
  if bAtivar.Caption = 'Ativar' then
     Ativcar1Click( Sender )
  else
     Desativar1Click( Sender );
end;

procedure TForm1.cbxPortaChange(Sender: TObject);
begin
  try
    ACBrECF1.Porta := cbxPorta.Text ;
  finally
     cbxPorta.Text := ACBrECF1.Porta ;
  end ;
end;

procedure TForm1.Ativcar1Click(Sender: TObject);
begin
  try
     Self.Enabled := False;
     ACBrECF1.Porta := cbxPorta.Text;
     
     if cbxModelo.ItemIndex = 0 then
        if not ACBrECF1.AcharECF(true,False) then
        begin
           MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
           exit ;
        end ;

     ACBrECF1.Ativar ;

     btSerial.Enabled := False ;
     bAtivar.Caption := 'Desativar' ;
     mResp.Lines.Add( 'Ativar' );
     AtualizaMemos ;

     GravarINI ;

     if PageControl1.ActivePageIndex = 0 then
        PageControl1.ActivePageIndex := 1 ;
  finally
     Self.Enabled := True;
     cbxModelo.ItemIndex := Integer(ACBrECF1.Modelo) ;
     cbxPorta.Text       := ACBrECF1.Porta ;
  end ;
end;

procedure TForm1.Desativar1Click(Sender: TObject);
begin
  ACBrECF1.Desativar ;
  bAtivar.Caption := 'Ativar' ;
  mResp.Lines.Add( 'Desativar' );
  AtualizaMemos ;
  btSerial.Enabled := True ;
end;

procedure TForm1.mMsgChange(Sender: TObject);
Var Msg : String ;
    L : Integer ;
begin
  Msg := '' ;
  For L := 0 to mMsg.Lines.Count - 1 do
  begin
     Msg := Msg + mMsg.Lines[L]+#10
  end ;

  ACBrECF1.MsgAguarde := copy(Msg, 1, Length(Msg)-1 ) ;
end;

procedure TForm1.SbAACArqLogClick(Sender : TObject) ;
begin
  OpenURL( ExtractFilePath( Application.ExeName ) + edAACLog.Text);
end;

procedure TForm1.SbAACMD5AtualizarClick(Sender : TObject) ;
begin
   ACBrAAC1.AtualizarMD5( edAAC_PAF_MD5.Text ) ;
end;

procedure TForm1.SbAACNomeArqClick(Sender : TObject) ;
begin
  OpenURL( ExtractFilePath( Application.ExeName ) + edAACNomeArq.Text);
end;

procedure TForm1.seMaxLinhasBufferChange(Sender : TObject) ;
begin
   ACBrECF1.MaxLinhasBuffer := seMaxLinhasBuffer.Value;
end;

procedure TForm1.seBandWidthChange(Sender : TObject) ;
begin
  ACBrECF1.Device.MaxBandwidth := seBandWidth.Value ;
end;

procedure TForm1.Testar1Click(Sender: TObject);
begin
  ACBrECF1.TestarDialog ;
  AtualizaMemos ;
end;

procedure TForm1.ACBrECF1MsgAguarde(Mensagem : String);
begin
  StatusBar1.Panels[1].Text := StringReplace(Mensagem,#10,' ',[rfReplaceAll]) ;
end;

procedure TForm1.DataHora1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Data/Hora: '+ DateTimeToStr( ACBrECF1.DataHora ) ) ;
  AtualizaMemos ;
end;

procedure TForm1.NumECF1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'N.ECF: ('+ ACBrECF1.NumECF+')' );
  AtualizaMemos ;
end;

procedure TForm1.NSrie1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'N.Série: ('+ ACBrECF1.NumSerie+')' );
  AtualizaMemos ;
end;

procedure TForm1.NVerso1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'N.Versão: '+ ACBrECF1.NumVersao );
  AtualizaMemos ;
end;

procedure TForm1.NumUltimoCupom1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'N.Último Cupom: ('+ ACBrECF1.NumCupom+')' );
  AtualizaMemos ;
end;

procedure TForm1.PoucoPapel1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Pouco Papel: '+
     IfThen( ACBrECF1.PoucoPapel , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.LeituraX1Click(Sender: TObject);
begin
  ACBrECF1.LeituraX ;
  mResp.Lines.Add( 'Leitura X');
  AtualizaMemos ;
end;

procedure TForm1.ReduoZ1Click(Sender: TObject);
Var Resp : TModalResult ;
begin
  if ACBrECF1.Estado <> estRequerZ then
  begin
     if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                  'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
        exit ;

     if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
        exit ;
  end ;

  Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

  if Resp = mrYes then
     ACBrECF1.ReducaoZ( now )
  else if Resp = mrNo then
     ACBrECF1.ReducaoZ( )
  else
     exit ;

  mResp.Lines.Add( 'Reduçao Z');
  AtualizaMemos ;
end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
  ACBrAboutDialog ;
end;

procedure TForm1.AliquotasICMS1Click(Sender: TObject);
var A : Integer ;
begin
  ACBrECF1.CarregaAliquotas ;

  for A := 0 to ACBrECF1.Aliquotas.Count -1 do
  begin
     mResp.Lines.Add( 'Aliquota: '+IntToStrZero( ACBrECF1.Aliquotas[A].Sequencia,2)+
                      ' Indice: '+ACBrECF1.Aliquotas[A].Indice +' -> '+
                      FloatToStr( ACBrECF1.Aliquotas[A].Aliquota ) + ' Tipo: '+
                      ACBrECF1.Aliquotas[A].Tipo );
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.LerTotaisAliquotas1Click(Sender: TObject);
Var A : Integer ;
begin
  ACBrECF1.LerTotaisAliquota ;

  for A := 0 to ACBrECF1.Aliquotas.Count -1 do
  begin
     mResp.Lines.Add( 'Aliquota: '+ACBrECF1.Aliquotas[A].Indice +' - '+
                      FloatToStr( ACBrECF1.Aliquotas[A].Aliquota ) + ' Tipo: '+
                      ACBrECF1.Aliquotas[A].Tipo+ ' -> '+
                      FloatToStr( ACBrECF1.Aliquotas[A].Total ) );
  end ;
  mResp.Lines.Add('---------------------------------');
end;


procedure TForm1.FormasdePagamento1Click(Sender: TObject);
var A : Integer ;
begin
  ACBrECF1.CarregaFormasPagamento ;

  for A := 0 to ACBrECF1.FormasPagamento.Count -1 do
  begin
     if ACBrECF1.FormasPagamento[A].Descricao <> '' then
        mResp.Lines.Add( 'Forma Pagto: '+ACBrECF1.FormasPagamento[A].Indice+' -> '+
           ACBrECF1.FormasPagamento[A].Descricao+'  Permite Vinculado: '+
           IfThen( ACBrECF1.FormasPagamento[A].PermiteVinculado,'S','N'));
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.LerTotaisFormadePagamento1Click(Sender: TObject);
var A : Integer ;
begin
  ACBrECF1.LerTotaisFormaPagamento ;

  for A := 0 to ACBrECF1.FormasPagamento.Count -1 do
  begin
     if ACBrECF1.FormasPagamento[A].Descricao <> '' then
        mResp.Lines.Add( 'Forma Pagto: '+ACBrECF1.FormasPagamento[A].Indice+' - '+
           ACBrECF1.FormasPagamento[A].Descricao+'  -> '+
           FloatToStr(ACBrECF1.FormasPagamento[A].Total)) ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.CarregaComprovantesNAOFiscais1Click(Sender: TObject);
var A : Integer ;
begin
  ACBrECF1.CarregaComprovantesNaoFiscais ;

  for A := 0 to ACBrECF1.ComprovantesNaoFiscais.Count -1 do
  begin
     if ACBrECF1.ComprovantesNaoFiscais[A].Descricao <> '' then
        mResp.Lines.Add( 'CNF: '+ACBrECF1.ComprovantesNaoFiscais[A].Indice+' -> '+
           ACBrECF1.ComprovantesNaoFiscais[A].Descricao+'  Permite Vinculado: '+
           IfThen( ACBrECF1.ComprovantesNaoFiscais[A].PermiteVinculado,
                            'S','N')+
           ' - FPG associada: '+ACBrECF1.ComprovantesNaoFiscais[A].FormaPagamento);
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.LerTotaisComprovanetNaoFiscal1Click(Sender: TObject);
var
  A : Integer ;
begin
  ACBrECF1.LerTotaisComprovanteNaoFiscal ;

  for A := 0 to ACBrECF1.ComprovantesNaoFiscais.Count -1 do
  begin
     if ACBrECF1.ComprovantesNaoFiscais[A].Descricao <> '' then
        mResp.Lines.Add( 'CNF: '+ACBrECF1.ComprovantesNaoFiscais[A].Indice+' - '+
           ACBrECF1.ComprovantesNaoFiscais[A].Descricao+' ('+
           IntToStr(ACBrECF1.ComprovantesNaoFiscais[A].Contador)+') -> '+
           FloatToStr(ACBrECF1.ComprovantesNaoFiscais[A].Total)) ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.AbreGaveta1Click(Sender: TObject);
begin
  ACBrECF1.AbreGaveta ;
  mResp.Lines.Add( 'AbreGaveta');
  AtualizaMemos ;
end;

procedure TForm1.GavetaAberta1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Gaveta Aberta: '+
     IfThen( ACBrECF1.GavetaAberta,'SIM','NAO'));
  AtualizaMemos ;
end;

procedure TForm1.HorarioVerao1Click(Sender: TObject);
begin
  ACBrECF1.MudaHorarioVerao ;
  mResp.Lines.Add( 'MudaHorarioVerao');
  AtualizaMemos ;
end;

procedure TForm1.ImpactoAgulhas1Click(Sender: TObject);
begin
  ACBrECF1.ImpactoAgulhas ;
  mResp.Lines.Add( 'ImpactoAgulhas');
  AtualizaMemos ;
end;

procedure TForm1.TestaPodeAbrirCupom1Click(Sender: TObject);
var Est : String ;
begin

  Est := Estados[ ACBrECF1.Estado ] ;

  try
     ACBrECF1.TestaPodeAbrirCupom ;

     mResp.Lines.Add( 'Pode Abrir Cupom.. OK') ;
  except
     mResp.Lines.Add( 'NAO Pode Abrir Cupom..') ;
     mResp.Lines.Add( 'pois o estado Atual é '+Est) ;
     AtualizaMemos ;

     raise ;
  end ;

  AtualizaMemos ;

end;

procedure TForm1.NUltimoCupom1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Num Ultimo Cupom: '+ ACBrECF1.NumCupom );
  AtualizaMemos ;
end;

procedure TForm1.SubTotal1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'SubTotal: '+  FloatToStr( ACBrECF1.Subtotal ) );
  AtualizaMemos ;
end;

procedure TForm1.TotalPago1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Total Pago: '+  FloatToStr( ACBrECF1.TotalPago ) );
  AtualizaMemos ;
end;

procedure TForm1.AbrirCupom1Click(Sender: TObject);
Var Consumidor : String ;
    CPF, NOME, ENDERECO : String ;
    P : Integer ;
begin
  Consumidor := ' ' ;
  if ACBrECF1.Consumidor.Documento <> '' then
     Consumidor := ACBrECF1.Consumidor.Documento ;
  if ACBrECF1.Consumidor.Nome <> '' then
     Consumidor := Consumidor+'|'+ACBrECF1.Consumidor.Nome ;
  if ACBrECF1.Consumidor.Endereco <> '' then
     Consumidor := Consumidor+'|'+ACBrECF1.Consumidor.Endereco ;

  if InputQuery('Abre Cupom',
                'Se necessário, Informe o Documento | Nome | Endereco'+sLineBreak +
                'Nota: Use o sinal pipe (|) para separar os campos' ,Consumidor) then
  begin
     WB_LoadHTML(wbBobina, '<html></html>');
     mBobina.Clear ;

     Consumidor := Trim(Consumidor) ;
     P := pos('|',Consumidor+'|') ;
     CPF        := copy(Consumidor,1,P-1) ;
     Consumidor := copy(Consumidor,P+1,Length(Consumidor) ) ;
     P := pos('|',Consumidor+'|') ;
     NOME       := copy(Consumidor,1,P-1) ;
     Consumidor := copy(Consumidor,P+1,Length(Consumidor) ) ;
     P := pos('|',Consumidor+'|') ;
     ENDERECO   := copy(Consumidor,1,P-1) ;

     ACBrECF1.AbreCupom( CPF, NOME, ENDERECO );
     mResp.Lines.Add( 'AbreCupom' );
     AtualizaMemos ;
  end ;
end;

procedure TForm1.CancelaCupom1Click(Sender: TObject);
begin
  ACBrECF1.CancelaCupom ;
  mResp.Lines.Add( 'CancelaCupom' );
  AtualizaMemos ;
end;

procedure TForm1.tsArqAuxCriptShow(Sender : TObject) ;
begin
  mdsAACECF.Open;
end;

procedure TForm1.VenderItem1Click(Sender: TObject);
begin
  frVendeItem.Show ;
end;

procedure TForm1.CancelarItemVendido1Click(Sender: TObject);
Var Item : String ;
begin
  Item := '1' ;
  if InputQuery('Cancelar Item Vendido',
                'Informe o número da Sequencia de Venda', Item ) then
  begin
     ACBrECF1.CancelaItemVendido( StrToIntDef(Item,0) );
     mResp.Lines.Add( 'Cancela Item Vendido: '+Item );
     AtualizaMemos ;
  end ;
end;

procedure TForm1.Sub1Click(Sender: TObject);
Var Desc, Obs : String ;
begin
  Desc := '0' ;
  Obs := '';

  if ACBrECF1.ModeloStr = 'DataRegis' then
     InputQuery('Subtotaliza Cupom',
                'Se Necessário digite alguma Observaçao (até 8 linhas)'+#10+
                'O sinal | (pipe) será convertido para #10 (quebra de linha)'+#10+
                'A Observação também pode ser enviada no metodo FechaCupom' ,
                Obs );

  if InputQuery('Subtotaliza Cupom',
                'Digite Valor negativo para Desconto'+#10+
                'ou Valor Positivo para Acrescimo' , Desc ) then
  begin
     ACBrECF1.SubtotalizaCupom( StrToFloat(Desc), Obs );
     mResp.Lines.Add( 'Subtotaliza Cupom: '+ Desc );
     AtualizaMemos ;
  end ;
end;

procedure TForm1.EfetuarPagamento1Click(Sender: TObject);
begin
  if not (ACBrECF1.Modelo in [ecfDataRegis, ecfFiscNET]) then
     if ACBrECF1.Estado <> estPagamento then
        MessageDlg('Impressora nao está em Estado de Pagamento'+#10+
                   'Primeiro use SubTotaliza Cupom' ,mtWarning,[mbOk],0) ;

  frPagamento.Show ;
  frPagamento.TipoCupom := 'F' ;
end;

procedure TForm1.FecharCupom1Click(Sender: TObject);
Var Obs : String ;
begin
  Obs := 'Componentes ACBr|http://acbr.sourceforge.net' ;
  if InputQuery('Fechar Cupom',
                'Se Necessário digite alguma Observaçao (até 8 linhas)'+#10+
                'O sinal | (pipe) será convertido para #10 (quebra de linha)' ,
                Obs ) then
  begin
     Obs := StringReplace(Obs,'|',#10,[rfReplaceAll,rfIgnoreCase]) ;
     ACBrECF1.FechaCupom( Obs );
     mResp.Lines.Add( 'Fecha Cupom: '+#10+Obs );
     AtualizaMemos ;
  end ;
end;

procedure TForm1.EnviaComando1Click(Sender: TObject);
Var CMD1,CMD2, C : String ;
    A : Integer ;
    T : String ;
begin
  CMD1 := '' ;
  T    := '0'  ;
  if InputQuery('Enviar Comando',
                'Digite o comando de acordo com a Sintaxe da Impressora'+#10+#10+
                'Para Caracteres ASC use #nnn  Ex: #006 = chr(006)'+#10+#10+
                'Exemplo: #006 irá imprimir uma Leitura X na Bematech' ,
                CMD1 ) then
    if (not (ACBrECF1.Modelo = ecfBematech)) or
       InputQuery('Enviar Comando BEMATECH',
                  'Digite o tamanho em Bytes do Retorno esperado'+#10+#10+
                  'NAO adcione os 3 bytes de ACK+ST1+ST2',
                  T ) then
     begin
        CMD2   := '' ;
        A      := 1 ;

        if ACBrECF1.ECF is TACBrECFBematech then
           (ACBrECF1.ECF as TACBrECFBematech).BytesResp := StrToIntDef(T,0) ;


        while A <= length( CMD1 ) do
        begin
           C := copy( CMD1, A, 1) ;

           if C = '#' then
            begin
              CMD2 := CMD2 + chr( StrToIntDef(copy(CMD1,A+1,3),0) ) ;
              A := A + 3 ;
            end
           else
              CMD2 := CMD2 + C ;

           A := A + 1 ;
        end ;

        ACBrECF1.EnviaComando( CMD2 );
        mResp.Lines.Add( 'Envia Comando: '+CMD1 );
        AtualizaMemos ;
     end ;
end;

procedure TForm1.FechaRelatrio1Click(Sender: TObject);
begin
  ACBrECF1.FechaRelatorio ;
end;

procedure TForm1.ACBrECF1AguardandoRespostaChange(Sender: TObject);
begin
  if ACBrECF1.AguardandoResposta then
     StatusBar1.Panels[0].Text := 'Processando...'
  else
     StatusBar1.Panels[0].Text := '' ;
end;

procedure TForm1.HorarioVerao2Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Horário de Verão: '+
     IfThen( ACBrECF1.HorarioVerao , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.Arredonda1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Arredondamento: '+
     IfThen( ACBrECF1.Arredonda , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.MudaArredondamento1Click(Sender: TObject);
Var Resp : TModalResult ;
begin
  Resp := MessageDlg('Arredondar ?',mtConfirmation,mbYesNoCancel,0) ;
  if Resp <> mrCancel then
  begin
    ACBrECF1.MudaArredondamento( (Resp = mrYes) ) ;
    mResp.Lines.Add( 'MudaArredondamento');
    AtualizaMemos ;
  end ;
end;

procedure TForm1.NumLoja1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'NUM Loja: ('+ ACBrECF1.NumLoja+')' );
  AtualizaMemos ;
end;

procedure TForm1.NumCRO1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Num.CRO: ('+ ACBrECF1.NumCRO+')' );
  AtualizaMemos ;
end;

procedure TForm1.TestedeVelocidade1Click(Sender: TObject);
Var cItens, cCupons : String ;
    nItens, nCupons, I, J : Integer ;
    tIni,tFim : TDateTime ;
    Resp        : TModalResult ;
    SubTot, Desc: Double ;
begin
  ACBrECF1.CarregaFormasPagamento ;
  if ACBrECF1.FormasPagamento.Count < 1 then
     raise Exception.Create('Nenhuma Forma de Pagamento programada no ECF');

  cItens := '10' ;
  if not InputQuery('Teste de Velocidade',
                'Numero de Itens a imprimir:', cItens ) then
     exit ;

  cCupons := '1' ;
  if not InputQuery('Teste de Velocidade',
                'Numero de Cupons a imprimir:', cCupons ) then
     exit ;

  Resp := MessageDlg('Monitorar estado do ECF ?',mtConfirmation,
                             mbYesNoCancel,0) ;
  if Resp = mrCancel then
     exit ;

  nItens := StrToIntDef(cItens,0) ;
  if nItens < 1 then
     exit ;
  nCupons := StrToIntDef(cCupons,0) ;
  if nCupons < 1 then
     exit ;

  Form1.Enabled := False ;
  try
     For J := 1 to nCupons do
     begin
        tIni := Now ;
        mResp.Lines.Add('Imprimindo '+cItens+ ' itens.') ;
        mResp.Lines.Add('Iniciando Cupom: '+DateTimeToStr(tIni)) ;
        ACBrECF1.AbreCupom();
        mResp.Lines.Add('Cupom Aberto: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos') ;
        if Resp = mrYes then
           mResp.Lines.Add('Estado ECF: '+EstadoECF) ;

        For i := 1 to nItens do
        begin
           if i = 1 then
              if Resp = mrYes then
                 mResp.Lines.Add('Estado ECF: '+EstadoECF) ;

           ACBrECF1.VendeItem( IntToStrZero(i,3),
                               'DESCRICAO PRODUTO: '+IntToStrZero(i,3),
                               'NN',1,i/100,0,'UN') ;
          { Aguarda 1 segundo ou até o ECF ficar Em linha novamente }
          ACBrECF1.EmLinha( 1 ) ;
          mResp.Lines.Add('Item '+IntToStr(i)+': '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos');
          { Semelhante ao "AguardaImpressao := True", porém é mais rápido, pois no
            método "VerificaFimImpressao" alem de verificado o "EmLinha" também é
            solicitado o Status do ECF }
        end ;

        SubTot := ACBrECF1.Subtotal ;
        Desc   := 0 ;
        if SubTot >= 1  then
           Desc := Frac( SubTot ) * -1 ;
        ACBrECF1.SubtotalizaCupom( Desc );
        mResp.Lines.Add('SubTotalizado: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos');

        if Resp = mrYes then
           mResp.Lines.Add('Estado ECF: '+EstadoECF) ;

      //  ACBrECF1.AbreGaveta ;

        { Executando todos os Pagamentos disponiveis }
      (*  Parcela := max(  RoundTo(ACBrECF1.Subtotal/ACBrECF1.FormasPagamento.Count,-2),
                         0.01) ;
        For i := 1 to ACBrECF1.FormasPagamento.Count - 1 do
           Try
              ACBrECF1.EfetuaPagamento(ACBrECF1.FormasPagamento[i].Indice,  Parcela,
                                  'OBSERVACAO PAGAMENTO: '+ IntToStrZero(i+1,2) );
           except
              Break ;
           end ;
      *)
        { Efetuando ultimo pagamento no Item 0, deve zerar o Saldo a pagar }
        ACBrECF1.EfetuaPagamento(ACBrECF1.FormasPagamento[0].Indice,
           (ACBrECF1.Subtotal - ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE');
        mResp.Lines.Add('Pagamento Efetuado: '+  FormatFloat('###.##',SecondSpan(tIni,Now))+' segundos');
        if Resp = mrYes then
           mResp.Lines.Add('Estado ECF: '+EstadoECF) ;

        ACBrECF1.FechaCupom('TESTE DE CUPOM');
        tFim := Now ;
        mResp.Lines.Add('Finalizado em: '+DateTimeToStr(tFim)) ;
        mResp.Lines.Add('Diferença: '+ FormatFloat('###.##',SecondSpan(tIni,tFim))+' segundos' ) ;
        mResp.Lines.Add('---------------------------------');
        AtualizaMemos ;
     end ;
  finally
     Form1.Enabled := True ;
  end ;
end;

procedure TForm1.CapturaporNReduaoZ1Click(Sender: TObject);
Var Linhas : TStringList ;
    cRedIni, cRedFim : String ;
    I, nRedIni, nRedFim : Integer ;
begin
  cRedIni := '0' ;
  cRedFim := '0' ;

  if not InputQuery('Captura da Memoria Fiscal',
                'Entre com o a Reduçao Z Inicial:', cRedIni ) then
     exit ;
  nRedIni := StrToIntDef(cRedIni,-1) ;
  if nRedIni < 0 then exit ;

  if not InputQuery('Captura da Memoria Fiscal',
                'Entre com o a Reduçao Z Final:', cRedFim ) then
     exit ;
  nRedFim := StrToIntDef(cRedFim,-1) ;
  if nRedFim < 0 then exit ;

  Linhas := TStringList.Create ;
  try
     ACBrECF1.LeituraMemoriaFiscalSerial(nRedIni, nRedFim, Linhas);

     For I := 0 to Linhas.Count - 1 do
        mResp.Lines.Add(Linhas[I]) ;
  finally
     Linhas.Free ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.ImprimeporNReduaoZ1Click(Sender: TObject);
Var cRedIni, cRedFim : String ;
    nRedIni, nRedFim : Integer ;
begin
  cRedIni := '0' ;
  cRedFim := '0' ;

  if not InputQuery('Impressão da Memoria Fiscal',
                'Entre com o a Reduçao Z Inicial:', cRedIni ) then
     exit ;
  nRedIni := StrToIntDef(cRedIni,-1) ;
  if nRedIni < 0 then exit ;

  if not InputQuery('Impressão da Memoria Fiscal',
                'Entre com o a Reduçao Z Final:', cRedFim ) then
     exit ;
  nRedFim := StrToIntDef(cRedFim,-1) ;
  if nRedFim < 0 then exit ;

  ACBrECF1.LeituraMemoriaFiscal(nRedIni, nRedFim);
  mResp.Lines.Add('Leitura da Memoria Fiscal por Reduçao');
end;

procedure TForm1.CapturaporPeriodo1Click(Sender: TObject);
Var Linhas : TStringList ;
    cDatIni, cDatFim : String ;
    dDatIni, dDatFim : TDateTime ;
    I : Integer ;
begin
  cDatIni := '01/'+FormatDateTime('mm/yy',now) ;
  cDatFim := FormatDateTime('dd/mm/yy',now) ;

  if not InputQuery('Captura da Memoria Fiscal',
                'Entre com o a Data Inicial (DD/MM/AA):', cDatIni ) then
     exit ;
  try
     dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit ;
  end ;

  if not InputQuery('Captura da Memoria Fiscal',
                'Entre com o a Data Final (DD/MM/AA):', cDatFim ) then
     exit ;
  try
     dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit
  end ;

  Linhas := TStringList.Create ;
  try
     ACBrECF1.LeituraMemoriaFiscalSerial(dDatIni, dDatFim, Linhas);

     For I := 0 to Linhas.Count - 1 do
        mResp.Lines.Add(Linhas[I]) ;
  finally
     Linhas.Free ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.ImprimeporPeriodo1Click(Sender: TObject);
Var cDatIni, cDatFim : String ;
    dDatIni, dDatFim : TDateTime ;
begin
  cDatIni := '01/'+FormatDateTime('mm/yy',now) ;
  cDatFim := FormatDateTime('dd/mm/yy',now) ;

  if not InputQuery('Captura da Memoria Fiscal',
                'Entre com o a Data Inicial (DD/MM/AA):', cDatIni ) then
     exit ;
  try
     dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit ;
  end ;

  if not InputQuery('Captura da Memoria Fiscal',
                'Entre com o a Data Final (DD/MM/AA):', cDatFim ) then
     exit ;
  try
     dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit
  end ;

  ACBrECF1.LeituraMemoriaFiscal(dDatIni, dDatFim );
  mResp.Lines.Add('Leitura da Memoria Fiscal por Datas');
end;

procedure TForm1.ProgramaAliquota1Click(Sender: TObject);
Var cAliq : String ;
    nAliq : Double ;
    Tipo  : Char ;
    Resp  : TModalResult ;
begin
  cAliq := '18,00' ;

  if not InputQuery('Programaçao de Aliquotas',
                    'Entre com o valor da Aliquota:', cAliq ) then
     exit ;

  cAliq := StringReplace(StringReplace(cAliq,'.',DecimalSeparator,[]),
                                             ',',DecimalSeparator,[]) ;
  nAliq := StrToFloatDef(cAliq,0) ;
  if nAliq = 0 then
     exit ;

  Resp := MessageDlg('Aliquota do ICMS ?'+sLineBreak+'SIM = ICMS, NAO = ISS',
                mtConfirmation,mbYesNoCancel,0) ;
  case Resp of
    mrCancel : exit ;
    mrYes    : Tipo := 'T' ;
  else ;
    Tipo := 'S' ;
  end;

  if MessageDlg('A aliquota: ['+FloatToStr(nAliq)+'] do Tipo: ['+Tipo+
                '] será programada.'+sLineBreak+sLineBreak+
                'Cuidado !! A programação de Aliquotas é irreversivel'+sLineBreak+
                'Confirma a operação ?',mtConfirmation,mbYesNoCancel,0) <> mrYes then
     exit ;

  ACBrECF1.ProgramaAliquota(nAliq,Tipo);
  AliquotasICMS1Click(Sender);
end;

procedure TForm1.ProgramaFormadePagamento1Click(Sender: TObject);
Var cDescricao : String ;
    Vinculado  : Boolean ;
    Resp       : TModalResult ;
begin
  cDescricao := 'CARTAO' ;
  Vinculado  := true ;

  if not InputQuery('Programaçao de Formas de Pagamento (FPG)',
                    'Entre com a Descriçao:', cDescricao ) then
     exit ;

  if not (ACBrECF1.Modelo in [ecfBematech, ecfNaoFiscal, ecfMecaf]) then
  begin
     Resp := MessageDlg('Permite Vinculado nessa Forma de Pagamento ?',
                   mtConfirmation,mbYesNoCancel,0) ;
     if Resp = mrCancel then
        exit
     else
        Vinculado := (Resp = mrYes) ;
  end ;

  if MessageDlg('A Forma de Pagamento: ['+cDescricao+'] '+
                'será programada.'+sLineBreak+sLineBreak+
                'Cuidado !! A programação de Formas de Pagamento é irreversivel'+sLineBreak+
                'Confirma a operação ?',mtConfirmation,mbYesNoCancel,0) <> mrYes then
     exit ;

  ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
  FormasdePagamento1Click(Sender);
end;

procedure TForm1.ProgramaComprovanteNAOFiscal1Click(Sender: TObject);
Var cDescricao, cTipo : String ;
begin
  cDescricao := 'CARTAO' ;
  cTipo      := '' ;

  if not InputQuery('Programaçao de Comprovantes NAO Fiscais (CNF)',
                    'Entre com a Descriçao:', cDescricao ) then
     exit ;

  case ACBrECF1.Modelo of
    ecfSchalter :
       if not InputQuery('Comprovantes NAO Fiscal '+ACBrECF1.ModeloStr,
                         'Entre com a String do parametro "Tipo".'+sLineBreak+
                         'D - Permite Desconto e Item '+sLineBreak+
                         'A - Permite Acrescimo no Subtotal'+sLineBreak+
                         'C - Permite Cancelamento de Item'+sLineBreak+
                         'P - Obriga forma de Pagamento'+sLineBreak+sLineBreak+
                         'Vnn - Obriga emissao de vinculado na Forma de '+
                         'Pagamento nn'+sLineBreak+sLineBreak+
                         'Se vazio assume Default = "DAC"'+sLineBreak+
                         'Exemplos:  V04 -> Torna a Emissao do Cupom Fiscal '+
                         'Vinculado obrigatória para a Forma de Pagamento 04',
                         cTipo ) then
          exit ;

    ecfDaruma :
       if not InputQuery('Comprovantes NAO Fiscal '+ACBrECF1.ModeloStr,
                         'Entre com a String do parametro "Tipo".'+sLineBreak+
                         'V  Comprovante Vinculado'+sLineBreak+
                         '+  Entrada de Recursos'+sLineBreak+
                         '-  Saida de Recursos'+sLineBreak+sLineBreak+
                         'Se vazio assume Default = "V"'+sLineBreak+
                         'Informe Apenas uma das Opçoes',
                         cTipo ) then
          exit ;

    ecfSweda, ecfQuattro :
       if not InputQuery('Comprovantes NAO Fiscal '+ACBrECF1.ModeloStr,
                         'Entre com a String do parametro "Tipo".'+sLineBreak+
                         '&  Criaçao de um novo Grupo (Titulo)'+sLineBreak+
                         '+  Entrada de Recursos'+sLineBreak+
                         '-  Saida de Recursos'+sLineBreak+sLineBreak+
                         'Se vazio assume Default = "+"'+sLineBreak+
                         'Informe Apenas uma das Opçoes',
                         cTipo ) then
          exit ;

    ecfFiscNET :
       if not InputQuery('Comprovantes NAO Fiscal '+ACBrECF1.ModeloStr,
                         'Entre com a String do parametro "Tipo".'+sLineBreak+
                         '+  Entrada de Recursos'+sLineBreak+
                         '-  Saida de Recursos'+sLineBreak+sLineBreak+
                         'Se vazio assume Default = "+"'+sLineBreak+
                         'Informe Apenas uma das Opçoes',
                         cTipo ) then
          exit ;

  end;

  if MessageDlg('O Comprovante Nao Fiscal: ['+cDescricao+'] '+
                IfThen(ACBrECF1.Modelo in
                       [ecfDaruma,ecfSchalter,ecfSweda,ecfQuattro,ecfFiscNET],
                       ' do Tipo: ['+cTipo+'] ','') +
                'será programado.'+sLineBreak+sLineBreak+
                'Cuidado !! A programação de CNFs é irreversivel'+sLineBreak+
                'Confirma a operação ?',mtConfirmation,mbYesNoCancel,0) <> mrYes then
     exit ;

  ACBrECF1.ProgramaComprovanteNaoFiscal(cDescricao,cTipo);
  CarregaComprovantesNAOFiscais1Click(Sender);
end;

procedure TForm1.ACBrECF1MsgPoucoPapel(Sender: TObject);
begin
  mResp.Lines.Add('ATENÇÃO... POUCO PAPEL') ;
end;

procedure TForm1.CorrigeEstadodeErro1Click(Sender: TObject);
begin
  ACBrECF1.CorrigeEstadoErro ;
end;

procedure TForm1.ChequePronto1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Cheque Pronto: '+
     IfThen( ACBrECF1.ChequePronto,'SIM','NAO'));
  AtualizaMemos ;
end;

procedure TForm1.ImprimeCheque1Click(Sender: TObject);
Var sValor : String ;
    dValor : Double ;
    sBanco, sFavorecido, sCidade : String ;
begin
  sValor      := '10,00' ;
  sBanco      := '001' ;
  sFavorecido := 'Projeto ACBr' ;
  sCidade     := 'Sao Paulo' ;

  if not InputQuery('Impressão de Cheque',
                    'Entre com o valor do Cheque:', sValor ) then
     exit ;

  sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                               ',',DecimalSeparator,[]) ;
  dValor := StrToFloatDef(sValor,0) ;
  if dValor = 0 then
     exit ;

  if not InputQuery('Impressão de Cheque',
                    'Entre com o Numero do Banco', sBanco ) then
     exit ;

  if not InputQuery('Impressão de Cheque',
                    'Entre com o Favorecido', sFavorecido ) then
     exit ;

  if not InputQuery('Impressão de Cheque',
                    'Entre com a Cidade', sCidade ) then
     exit ;

  while not ACBrECF1.ChequePronto do
     if (MessageDlg('Favor inserir o cheque e pressionar OK',
          mtConfirmation,[mbOk,mbCancel],0) = mrCancel) then
        exit ;

  ACBrECF1.ImprimeCheque(sBanco,dValor,sFavorecido,sCidade,now,
      'TESTE DE IMPRESSAO DE CHEQUE');

  mResp.Lines.Add('ImprimeCheque Banco:'+sBanco+
                  ' Valor:'+sValor+
                  ' Favorecido:'+sFavorecido+
                  ' Cidade:'+sCidade+
                  ' Data:'+FormatDateTime('dd/mm/yy',now) );
  AtualizaMemos ;
end;

procedure TForm1.CancelaImpressoCheque1Click(Sender: TObject);
begin
  ACBrECF1.CancelaImpressaoCheque ;
  mResp.Lines.Add( 'CancelaImpressaoCheque');
  AtualizaMemos ;
end;


procedure TForm1.CarregaUnidadesdeMedida1Click(Sender: TObject);
var
   A: Integer;
begin
  ACBrECF1.CarregaUnidadesMedida ;

  for A := 0 to ACBrECF1.UnidadesMedida.Count -1 do
  begin
     if ACBrECF1.UnidadesMedida[A].Descricao <> '' then
        mResp.Lines.Add( 'Unid Medida: '+ACBrECF1.UnidadesMedida[A].Indice+' -> '+
           ACBrECF1.UnidadesMedida[A].Descricao);
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.ProgramaUnidadeMedida1Click(Sender: TObject);
var
   um:String;
begin
  um := '' ;
  if not InputQuery('Programaçao de Unidades de Medida',
                    'Entre com a Descrição da Unidade de Medida:', um ) then
     exit ;
  if MessageDlg('A Unidade de Medida: ['+um+'] será programada.'+sLineBreak+sLineBreak+
                'Cuidado a programação de Unidades de Medida é irreversivel'+sLineBreak+
                'Confirma a operação ?',mtConfirmation,mbYesNoCancel,0) <> mrYes then
     exit ;
  ACBrECF1.ProgramaUnidadeMedida( um );
end;

procedure TForm1.AbreRelatorioGerencial1Click(Sender: TObject);
begin
  ACBrECF1.AbreRelatorioGerencial ;
end;

procedure TForm1.AbreCupomVinculado1Click(Sender: TObject);
Var COO, CodFormaPagamento, CodComprovanteNaoFiscal : String;
    sValor : String ;
    dValor : Double ;
begin
  COO := ACBrECF1.NumCupom ;
  CodFormaPagamento := '01' ;
  CodComprovanteNaoFiscal := ' ' ;
  sValor := '0' ;

  if not InputQuery('Abertura de Cupom Vinculado',
                    'Digite o Cod.Forma Pagamento utilizada no cupom anterior',
                    CodFormaPagamento ) then
     exit ;

  if not InputQuery('Abertura de Cupom Vinculado',
                    'Digite o Cod.Comprovante Não Fiscal'+sLineBreak+
                    '(Não é necessário na maioria dos modelos)',
                     CodComprovanteNaoFiscal ) then
     exit ;

  if not InputQuery('Abertura de Cupom Vinculado',
                    'Digite o Valor a vincular no cupom anterior'+sLineBreak+
                    '(Não é necessário em alguns modelos)',
                    sValor ) then
     exit ;


  sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                               ',',DecimalSeparator,[]) ;
  dValor := StrToFloatDef(sValor,0) ;
  if dValor = 0 then
     exit ;

  if Trim(CodComprovanteNaoFiscal) <> '' then
     ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                  dValor)
  else
     ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
end;

procedure TForm1.ImprimeLinhaRelatorio1Click(Sender: TObject);
var
   Linha :String;
begin
  Linha := '' ;
  if not InputQuery('Inpressão de Linha NÃO Fiscal',
                    'Digite a linha a imprimir',
                    Linha ) then
     exit ;
  ACBrECF1.LinhaRelatorioGerencial( Linha );
end;

procedure TForm1.ImprimeLinhaVinculado1Click(Sender: TObject);
var
   Linha :String;
begin
  Linha := '' ;
  if not InputQuery('Digite a linha a imprimir',
                    '', Linha ) then
     exit ;
  ACBrECF1.LinhaCupomVinculado( Linha );
end;

procedure TForm1.ListaRelatorioGerencial1Click(Sender: TObject);
begin
  frRelatorio.TipoRelatorio := 'G' ;
  frRelatorio.ShowModal ;
end;

procedure TForm1.ListaCupomVinculado1Click(Sender: TObject);
begin
  MessageDlg('Para imprimir um Cupom Vinculado você deve ter '+
             'informaçoes dos Pagamentos Efetuados no último Cupom Fiscal',
             mtInformation,[mbOk],0) ;
  frRelatorio.TipoRelatorio := 'V' ;
  frRelatorio.ShowModal ;
end;

procedure TForm1.PularLinhas1Click(Sender: TObject);
Var Linhas : String ;
begin
  Linhas := IntToStr( ACBrECF1.LinhasEntreCupons ) ;
  if not InputQuery('Pular Linhas',
                    'Digite o Numero de Linhas a Pular', Linhas ) then
     exit ;

  ACBrECF1.PulaLinhas( StrToIntDef(Linhas,0) ) ;
end;

procedure TForm1.LerTodasasVariveis1Click(Sender: TObject);
begin
  DataHora1.Click ;
  NumECF1.Click ;
  NumLoja1.Click ;
  NSrie1.Click ;
  NVerso1.Click ;
  NumCRO1.Click ;
  NUltimoCupom1.Click ;
  SubTotal1.Click ;
  TotalPago1.Click ;

  PoucoPapel1.Click ;
  HorarioVerao2.Click ;
  Arredonda1.Click ;

  AliquotasICMS1.Click ;
  FormasdePagamento1.Click ;
  CarregaComprovantesNAOFiscais1.Click ;
  CarregaUnidadesdeMedida1.Click ;
end;

procedure TForm1.MFD1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'É MFD: '+
     IfThen( ACBrECF1.MFD , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.Termica1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'É Termica: '+
     IfThen( ACBrECF1.Termica , 'SIM', 'NAO') );
  AtualizaMemos ;
end;

procedure TForm1.SbArqLogClick(Sender: TObject);
begin
  OpenURL( ExtractFilePath( Application.ExeName ) + edLog.Text);
end;

procedure TForm1.cbMemoHTMLClick(Sender: TObject);
begin
  if cbMemoHTML.Checked then
   begin
     ACBrECF1.MemoParams.Values['HTML'] := '1' ;
     wbBobina.BringToFront ;
   end
  else
   begin
     ACBrECF1.MemoParams.Values['HTML'] := '0' ;
     wbBobina.SendToBack ;
   end ;

  mBobina.Visible  := not cbMemoHTML.Checked ;
  ACBrECF1.MemoLeParams ;
end;

procedure TForm1.bBobinaLimparClick(Sender: TObject);
begin
  WB_LoadHTML(wbBobina, '<html></html>');
  mBobina.Clear ;
  if bBobinaParams.Caption = 'Salvar' then
  begin
     cbMemoHTMLClick(Sender);
     bBobinaParams.Caption := 'Parametros' ;
  end ;
end;

procedure TForm1.bBobinaParamsClick(Sender: TObject);
begin
  if bBobinaParams.Caption = 'Parametros' then
   begin
     mBobina.Text := ACBrECF1.MemoParams.Text ;
     mBobina.Visible  := True ;
     wbBobina.SendToBack ;
     bBobinaParams.Caption := 'Salvar' ;
   end
  else
   begin
     ACBrECF1.MemoParams.Text := mBobina.Text ;
     ACBrECF1.MemoParams.SaveToFile('ACBrECFMemoParams.ini');
     cbMemoHTMLClick(Sender);
     bBobinaParams.Caption := 'Parametros' ;
     bBobinaLimpar.Click ;
   end ;
end;

procedure TForm1.ACBrECF1BobinaAdicionaLinhas(const Linhas,
  Operacao: String);
begin
  if bBobinaParams.Caption = 'Salvar' then
  begin
     mBobina.Clear ;
     cbMemoHTMLClick(nil);
     bBobinaParams.Caption := 'Parametros' ;
  end ;

  WB_LoadHTML(wbBobina, mBobina.Text);
//  Application.ProcessMessages ;

  WB_ScrollToBottom(wbBobina);
end;

procedure TForm1.WB_LoadHTML(WebBrowser: TIpHtmlPanel; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
  NewHTML: TSimpleIpHtml;
begin
  sl := TStringList.Create;
  ms := TMemoryStream.Create;
  NewHTML := TSimpleIpHtml.Create; // Beware: Will be freed automatically by IpHtmlPanel
  try
     sl.Text := HTMLCode;
     sl.SaveToStream(ms);
     ms.Seek(0, 0);

     NewHTML.OnGetImageX:=@HTMLGetImageX;
     NewHTML.LoadFromStream(ms);

     WebBrowser.SetHtml(NewHTML);
  finally
     ms.Free;
     sl.Free;
  end;
end;

procedure TForm1.WB_ScrollToTop(WebBrowser1: TIpHtmlPanel);
begin
  WebBrowser1.Scroll(hsaHome);
  Application.ProcessMessages;
end;

procedure TForm1.WB_ScrollToBottom(WebBrowser1: TIpHtmlPanel);
begin
  WebBrowser1.Scroll(hsaEnd);
  Application.ProcessMessages;
end;

procedure TForm1.HTMLGetImageX(Sender: TIpHtmlNode; const URL: string;
  var Picture: TPicture);
begin
  Picture := nil;
end;

procedure TForm1.DadosReducaoZ1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Dados da Redução Z' + sLineBreak + ACBrECF1.DadosReducaoZ );
  AtualizaMemos ;
end;

procedure TForm1.CNPJIE1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'CNPJ: ('+ ACBrECF1.CNPJ+')' );
  AtualizaMemos ;
end;

procedure TForm1.IE1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'IE: ('+ ACBrECF1.IE+')' );
  AtualizaMemos ;
end;

procedure TForm1.NumCRZ1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Num CRZ: ('+ ACBrECF1.NumCRZ+')' );
  AtualizaMemos ;
end;

procedure TForm1.NumCOOInicial1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Num NumCOOInicial: ('+ ACBrECF1.NumCOOInicial+')' );
  AtualizaMemos ;
end;

procedure TForm1.VendaBruta1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'VendaBruta: ('+ FloatToStr(ACBrECF1.VendaBruta)+')' );
  AtualizaMemos ;
end;

procedure TForm1.GrandeTotal1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'GrandeTotal: ('+ FloatToStr(ACBrECF1.GrandeTotal)+')' );
  AtualizaMemos ;
end;

procedure TForm1.otalNoFiscal1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'TotalNaoFiscal: ('+ FloatToStr(ACBrECF1.TotalNaoFiscal)+')' );
  AtualizaMemos ;
end;

procedure TForm1.UltimoItemVendido1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'NumUltItem: ('+ IntToStr(ACBrECF1.NumUltItem)+')' );
  AtualizaMemos ;
end;

procedure TForm1.PorCOO1Click(Sender: TObject);
Var Linhas : TStringList ;
    cCOOIni, cCOOFim : String ;
    I, nCOOIni, nCOOFim : Integer ;
begin
  cCOOIni := '0' ;
  cCOOFim := '0' ;

  if not InputQuery('Captura da MFD',
                'Entre com o COO Inicial:', cCOOIni ) then
     exit ;
  nCOOIni := StrToIntDef(cCOOIni,-1) ;
  if nCOOIni < 0 then exit ;

  if not InputQuery('Captura da MFD',
                'Entre com o COO Final:', cCOOFim ) then
     exit ;
  nCOOFim := StrToIntDef(cCOOFim,-1) ;
  if nCOOFim < 0 then exit ;

  Linhas := TStringList.Create ;
  try
     ACBrECF1.LeituraMFDSerial(nCOOIni, nCOOFim, Linhas);

     For I := 0 to Linhas.Count - 1 do
        mResp.Lines.Add(Linhas[I]) ;
  finally
     Linhas.Free ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.PorPeriodo1Click(Sender: TObject);
Var Linhas : TStringList ;
    cDatIni, cDatFim : String ;
    dDatIni, dDatFim : TDateTime ;
    I : Integer ;
begin
  cDatIni := '01/'+FormatDateTime('mm/yy',now) ;
  cDatFim := FormatDateTime('dd/mm/yy',now) ;

  if not InputQuery('Captura da MFD',
                'Entre com o a Data Inicial (DD/MM/AA):', cDatIni ) then
     exit ;
  try
     dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit ;
  end ;

  if not InputQuery('Captura da MFD',
                'Entre com o a Data Final (DD/MM/AA):', cDatFim ) then
     exit ;
  try
     dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator,
                                [rfReplaceAll] ) ) ;
  except
     exit
  end ;

  Linhas := TStringList.Create ;
  try
     ACBrECF1.LeituraMFDSerial(dDatIni, dDatFim, Linhas);

     For I := 0 to Linhas.Count - 1 do
        mResp.Lines.Add(Linhas[I]) ;
  finally
     Linhas.Free ;
  end ;
  mResp.Lines.Add('---------------------------------');
end;

procedure TForm1.Estado1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Estado: '+ Estados[ ACBrECF1.Estado ] );
  AtualizaMemos ;
end;

procedure TForm1.NoFiscalCompleto1Click(Sender: TObject);
  Var Valor, CodCNF, CodFPG : String ;
begin
  CodCNF := '01' ;
  CodFPG := '01' ;
  Valor  := '0' ;

  if not InputQuery('Comprovante Não Fiscal Completo',
                    'Entre com o indice do Comprovante Não Fiscal', CodCNF ) then
     exit ;

  if not InputQuery('Comprovante Não Fiscal Completo',
                    'Entre com o Valor do Comprovante Não Fiscal', Valor ) then
     exit ;

  if not InputQuery('Comprovante Não Fiscal Completo',
                    'Entre com o indice da Forma de Pagamento', CodFPG ) then
     exit ;

  ACBrECF1.NaoFiscalCompleto(CodCNF, StrToFloatDef( Valor,0 ), CodFPG,
     'TESTE DE COMPROVANTE NAO FISCAL');
  mResp.Lines.Add( 'Nao Fiscal Completo: '+ CodCNF +' '+ Valor+' '+
                   CodFPG );
  AtualizaMemos ;
end;

procedure TForm1.AbreNoFiscal1Click(Sender: TObject);
  Var CPF_CNPJ : String ;
begin
  CPF_CNPJ := '' ;
  if not InputQuery('Abre Comprovante Não Fiscal',
                    'Se necessário, informe o CPF ou CNPJ do cliente', CPF_CNPJ ) then
     exit ;

  ACBrECF1.AbreNaoFiscal(CPF_CNPJ);
  mResp.Lines.Add( 'Abre Não Fiscal: '+ CPF_CNPJ );
  AtualizaMemos ;
end;

procedure TForm1.RegistraItemNaoFiscal1Click(Sender: TObject);
  Var Valor, CodCNF : String ;
begin
  CodCNF := '01' ;
  Valor  := '0' ;

  if not InputQuery('Registra Item Não Fiscal',
                    'Entre com o indice do Comprovante Não Fiscal', CodCNF ) then
     exit ;

  if not InputQuery('Registra Item Não Fiscal',
                    'Entre com o Valor do Comprovante Não Fiscal', Valor ) then
     exit ;

  ACBrECF1.RegistraItemNaoFiscal(CodCNF, StrToFloatDef(Valor,0),
     'TESTE DE COMPROVANTE NAO FISCAL');
  mResp.Lines.Add( 'Registra Item Nao Fiscal: '+ CodCNF +' '+ Valor );
  AtualizaMemos ;
end;

procedure TForm1.SubTotalizaNaoFiscal1Click(Sender: TObject);
Var Desc : String ;
begin
  Desc := '0' ;

  if InputQuery('Subtotaliza Não Fiscal',
                'Digite Valor negativo para Desconto'+#10+
                'ou Valor Positivo para Acrescimo' , Desc ) then
  begin
     ACBrECF1.SubtotalizaNaoFiscal( StrToFloat(Desc) );
     mResp.Lines.Add( 'Subtotaliza Não Fiscal '+ Desc );
     AtualizaMemos ;
  end ;
end;

procedure TForm1.EfetuaPagamentoNaoFiscal1Click(Sender: TObject);
begin
  frPagamento.Show ;
  frPagamento.TipoCupom := 'N' ;
end;

procedure TForm1.FechaNoFiscal1Click(Sender: TObject);
Var Obs : String ;
begin
  Obs := 'Componentes ACBr|http://acbr.sourceforge.net' ;
  if InputQuery('Fecha Não Fiscal',
                'Se Necessário digite alguma Observaçao (até 8 linhas)'+#10+
                'O sinal | (pipe) será convertido para #10 (quebra de linha)' ,
                Obs ) then
  begin
     Obs := StringReplace(Obs,'|',#10,[rfReplaceAll,rfIgnoreCase]) ;
     ACBrECF1.FechaNaoFiscal( Obs );
     mResp.Lines.Add( 'Fecha Não Fiscal: '+#10+Obs );
     AtualizaMemos ;
  end ;
end;

procedure TForm1.CancelaNoFiscal1Click(Sender: TObject);
begin
  ACBrECF1.CancelaNaoFiscal ;
  mResp.Lines.Add( 'Cancela Não Fiscal' );
  AtualizaMemos ;
end;

procedure TForm1.NumCCF1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Num.CCF: ('+ ACBrECF1.NumCCF +')' );
  AtualizaMemos ;
end;

procedure TForm1.NumCOO1Click(Sender: TObject);
begin
  NUltimoCupom1Click(Sender);
end;

procedure TForm1.IdentificaConsumidor1Click(Sender: TObject);
Var CPF, NOME, ENDERECO : String ;
begin
  CPF      := ACBrECF1.Consumidor.Documento ;
  NOME     := ACBrECF1.Consumidor.Nome ;
  ENDERECO := ACBrECF1.Consumidor.Endereco ;

  InputQuery('Identifica Consumidor',
             'Informe o Documento' ,CPF) ;
  InputQuery('Identifica Consumidor',
             'Informe o Nome do Consumidor' ,NOME) ;
  InputQuery('Identifica Consumidor',
             'Se necessários, informe o Endereço do Consumidor' ,ENDERECO) ;

  ACBrECF1.IdentificaConsumidor( CPF, NOME, ENDERECO );
end;

procedure TForm1.edDirRFDChange(Sender: TObject);
begin
  ACBrRFD1.DirRFD := edDirRFD.Text ;
end;

procedure TForm1.sbDirRFDClick(Sender: TObject);
begin
  OpenURL( ACBrRFD1.DirRFD );
end;

procedure TForm1.bRFDLerClick(Sender: TObject);
begin
  if not ACBrRFD1.Ativo then
     raise Exception.Create('ACBrRFD não está ativo');

  mRFDParam.Lines.LoadFromFile(ACBrRFD1.ArqINI);
end;

procedure TForm1.bRFDSalvarClick(Sender: TObject);
 Var OldAtivo : Boolean ;
begin
  OldAtivo := ACBrRFD1.Ativo ;
  try
     mRFDParam.Lines.SaveToFile(ACBrRFD1.ArqINI);
     ACBrRFD1.Desativar ;
  finally
     ACBrRFD1.Ativo := OldAtivo ;
  end ;
end;

procedure TForm1.chRFDClick(Sender: TObject);
 Var OldAtivo : Boolean ;
begin
  OldAtivo := ACBrECF1.Ativo ;
  try
     try
        ACBrECF1.Desativar ;

        if chRFD.Checked then
           ACBrECF1.RFD := ACBrRFD1
        else
           ACBrECF1.RFD := nil ;
     except
        chRFD.OnClick := nil ;
        chRFD.Checked := Assigned( ACBrECF1.RFD )  ;
        chRFD.OnClick := @chRFDClick ;

        raise ;
     end ;
  finally
     ACBrECF1.Ativo := OldAtivo ;
  end ;
end;

procedure TForm1.GravarINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     INI.WriteInteger('ECF','Modelo',cbxModelo.ItemIndex);
     INI.WriteString('ECF','Porta',cbxPorta.Text);
     INI.WriteInteger('ECF','TimeOut',seTimeOut.Value);
     INI.WriteInteger('ECF','IntervaloAposComando',seIntervaloAposComando.Value);
     INI.WriteBool('ECF','TentarNovamente',chTentar.Checked);
     INI.WriteBool('ECF','BloqueiaMouseTeclado',chBloqueia.Checked);
     INI.WriteBool('ECF','ExibeMsgAguarde',chExibeMsg.Checked);
     INI.WriteBool('ECF','ArredondaPorQtd',chArredondaPorQtd.Checked);
     INI.WriteBool('ECF','GavetaSinalInvertido',chGavetaSinalInvertido.Checked);
     INI.WriteBool('ECF','DescricaoGrande',chDescricaoGrande.Checked);
     INI.WriteBool('ECF','ArredondamentoItemMFD',chArredondamentoItemMFD.Checked);
     INI.WriteString('ECF','MensagemAguarde',StringReplace(mMsg.Text,sLineBreak,'|',[rfReplaceAll]));
     INI.WriteString('ECF','ArqLog',edLog.Text);
     INI.WriteString('ECF','SerialParams',ACBrECF1.Device.ParamsString);
     INI.WriteString('ECF','Operador',ACBrECF1.Operador);
     INI.WriteInteger('ECF','BandWidth',seBandWidth.Value);

     INI.WriteBool('RFD','GerarRFD',chRFD.Checked);
     INI.WriteString('RFD','DirRFD',edDirRFD.Text);
     INI.WriteString('RFD','SH_RazaoSocial',edSH_RazaoSocial.Text);
     INI.WriteString('RFD','SH_COO',edSH_COO.Text);
     INI.WriteString('RFD','SH_CNPJ',edSH_CNPJ.Text);
     INI.WriteString('RFD','SH_IE',edSH_IE.Text);
     INI.WriteString('RFD','SH_IM',edSH_IM.Text);
     INI.WriteString('RFD','SH_Aplicativo',edSH_Aplicativo.Text);
     INI.WriteString('RFD','SH_NumeroAplicativo',edSH_NumeroAP.Text);
     INI.WriteString('RFD','SH_VersaoAplicativo',edSH_VersaoAP.Text);
     INI.WriteString('RFD','SH_Linha1',edSH_Linha1.Text);
     INI.WriteString('RFD','SH_Linha2',edSH_Linha2.Text);

     INI.WriteBool('AAC','GerarAAC',chAACUsar.Checked);
     INI.WriteString('AAC','NomeArquivo',edAACNomeArq.Text);
     INI.WriteString('AAC','ArqLog',edAACLog.Text);
  finally
     INI.Free ;
  end ;
end;

procedure TForm1.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbxModelo.ItemIndex := INI.ReadInteger('ECF','Modelo',cbxModelo.ItemIndex);
     cbxModeloChange(nil);
     cbxPorta.Text := INI.ReadString('ECF','Porta',cbxPorta.Text);
     seTimeOut.Value := INI.ReadInteger('ECF','TimeOut',seTimeOut.Value);
     seIntervaloAposComando.Value := INI.ReadInteger('ECF','IntervaloAposComando',seIntervaloAposComando.Value);
     chTentar.Checked := INI.ReadBool('ECF','TentarNovamente',chTentar.Checked);
     chBloqueia.Checked := INI.ReadBool('ECF','BloqueiaMouseTeclado',chBloqueia.Checked);
     chExibeMsg.Checked := INI.ReadBool('ECF','ExibeMsgAguarde',chExibeMsg.Checked);
     chArredondaPorQtd.Checked := INI.ReadBool('ECF','ArredondaPorQtd',chArredondaPorQtd.Checked);
     chDescricaoGrande.Checked := INI.ReadBool('ECF','DescricaoGrande',chDescricaoGrande.Checked);
     chArredondamentoItemMFD.Checked := INI.ReadBool('ECF','ArredondamentoItemMFD',chArredondamentoItemMFD.Checked);
     chGavetaSinalInvertido.Checked := INI.ReadBool('ECF','GavetaSinalInvertido',chGavetaSinalInvertido.Checked);
     mMsg.Text := StringReplace(INI.ReadString('ECF','MensagemAguarde',mMsg.Text),'|',sLineBreak,[rfReplaceAll]);
     edLog.Text := INI.ReadString('ECF','ArqLog',edLog.Text);
     ACBrECF1.Device.ParamsString := INI.ReadString('ECF','SerialParams','');
     edOperador.Text := INI.ReadString('ECF','Operador','');
     seBandWidth.Value := INI.ReadInteger('ECF','BandWidth',seBandWidth.Value);

     chRFD.Checked := INI.ReadBool('RFD','GerarRFD',chRFD.Checked);
     edDirRFD.Text := INI.ReadString('RFD','DirRFD',edDirRFD.Text);
     edSH_RazaoSocial.Text := INI.ReadString('RFD','SH_RazaoSocial',edSH_RazaoSocial.Text);
     edSH_COO.Text := INI.ReadString('RFD','SH_COO',edSH_COO.Text);
     edSH_CNPJ.Text := INI.ReadString('RFD','SH_CNPJ',edSH_CNPJ.Text);
     edSH_IE.Text := INI.ReadString('RFD','SH_IE',edSH_IE.Text);
     edSH_IM.Text := INI.ReadString('RFD','SH_IM',edSH_IM.Text);
     edSH_Aplicativo.Text := INI.ReadString('RFD','SH_Aplicativo',edSH_Aplicativo.Text);
     edSH_NumeroAP.Text := INI.ReadString('RFD','SH_NumeroAplicativo',edSH_NumeroAP.Text);
     edSH_VersaoAP.Text := INI.ReadString('RFD','SH_VersaoAplicativo',edSH_VersaoAP.Text);
     edSH_Linha1.Text := INI.ReadString('RFD','SH_Linha1',edSH_Linha1.Text);
     edSH_Linha2.Text := INI.ReadString('RFD','SH_Linha2',edSH_Linha2.Text);

     chAACUsar.Checked := INI.ReadBool('AAC','GerarAAC',False);
     edAACNomeArq.Text := INI.ReadString('AAC','NomeArquivo',edAACNomeArq.Text);
     edAACLog.Text     := INI.ReadString('AAC','ArqLog',edAACLog.Text);
  finally
     INI.Free ;
  end ;
end;

procedure TForm1.seTimeOutChange(Sender: TObject);
begin
  ACBrECF1.TimeOut := seTimeOut.Value ;
end;

procedure TForm1.seIntervaloAposComandoChange(Sender: TObject);
begin
  ACBrECF1.IntervaloAposComando := seIntervaloAposComando.Value ;
end;

procedure TForm1.edSH_RazaoSocialChange(Sender: TObject);
begin
  ACBrRFD1.SH_RazaoSocial := edSH_RazaoSocial.Text ;
end;

procedure TForm1.edSH_COOChange(Sender: TObject);
begin
  ACBrRFD1.SH_COO := edSH_COO.Text ;
end;

procedure TForm1.edSH_CNPJChange(Sender: TObject);
begin
  ACBrRFD1.SH_CNPJ := edSH_CNPJ.Text ;
end;

procedure TForm1.edSH_IEChange(Sender: TObject);
begin
  ACBrRFD1.SH_IE := edSH_IE.Text ;
end;

procedure TForm1.edSH_IMChange(Sender: TObject);
begin
  ACBrRFD1.SH_IM := edSH_IM.Text ;
end;

procedure TForm1.edSH_AplicativoChange(Sender: TObject);
begin
  ACBrRFD1.SH_NomeAplicativo := edSH_Aplicativo.Text ;
end;

procedure TForm1.edSH_NumeroAPChange(Sender: TObject);
begin
  ACBrRFD1.SH_NumeroAplicativo := edSH_NumeroAP.Text ;
end;

procedure TForm1.edSH_VersaoAPChange(Sender: TObject);
begin
  ACBrRFD1.SH_VersaoAplicativo := edSH_VersaoAP.Text ;
end;

procedure TForm1.edSH_Linha1Change(Sender: TObject);
begin
  ACBrRFD1.SH_Linha1 := edSH_Linha1.Text ;
end;

procedure TForm1.edSH_Linha2Change(Sender: TObject);
begin
  ACBrRFD1.SH_Linha2 := edSH_Linha2.Text ;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  frmSobre := TfrmSobre.Create( self );
  try
     frmSobre.lVersao.Caption := 'Ver: '+ECFTeste_VERSAO+' ACBr '+ACBR_VERSAO ;
     frmSobre.ShowModal ;
  finally
     FreeAndNil(frmSobre) ;
  end ;
end;

procedure TForm1.DataMovimento1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Data Movimento: ('+ FormatDateTime('dd/mm/yy',
                   ACBrECF1.DataMovimento) +')' );
  AtualizaMemos ;
end;

procedure TForm1.DadosUltimaReduoZ1Click(Sender: TObject);
begin
  mResp.Lines.Add( 'Dados da Ultima Redução Z' + sLineBreak + ACBrECF1.DadosUltimaReducaoZ );
  AtualizaMemos ;
end;

procedure TForm1.btSerialClick(Sender: TObject);
  Var frConfiguraSerial : TfrConfiguraSerial ;
begin

  frConfiguraSerial := TfrConfiguraSerial.Create(self);

  try
    frConfiguraSerial.Device.Porta        := ACBrECF1.Device.Porta ;
    frConfiguraSerial.cmbPortaSerial.Text := cbxPorta.Text ;
    frConfiguraSerial.Device.ParamsString := ACBrECF1.Device.ParamsString ;

    if frConfiguraSerial.ShowModal = mrOk then
    begin
       cbxPorta.Text                := frConfiguraSerial.Device.Porta ;
       ACBrECF1.Device.ParamsString := frConfiguraSerial.Device.ParamsString ;
    end ;
  finally
     FreeAndNil( frConfiguraSerial ) ;
  end ;
end;

end.
