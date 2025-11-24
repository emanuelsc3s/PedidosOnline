unit Unit_InserirItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Datasnap.DBClient, Data.Win.ADODB,
  uniButton, uniEdit, uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniLabel,
  Vcl.Imaging.pngimage, uniImage;

type
  TForm_InserirItem = class(TUniForm)
    UniLabel21: TUniLabel;
    Edit_Produto: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    Edit_Qtde: TUniNumberEdit;
    Edit_Preco: TUniNumberEdit;
    bt_Adicionar_Produto: TUniButton;
    LabelTotal: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    DBGrid_Produto: TUniDBGrid;
    DataSource_Produto: TDataSource;
    qProduto: TADOQuery;
    qProdutoB1_COD: TStringField;
    qProdutoB1_DESC: TStringField;
    qAuxiliar: TADOQuery;
    qAuxiliarB1_CONV: TFloatField;
    cdsProdutos: TClientDataSet;
    cdsProdutosIMG: TGraphicField;
    cdsProdutosITEM: TStringField;
    cdsProdutosCODIGO: TStringField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosQUANTIDADE: TFloatField;
    cdsProdutosVALOR: TFloatField;
    cdsProdutosSUBTOTAL: TFloatField;
    DataSource_cdsProdutos: TDataSource;
    UniImage2: TUniImage;
    procedure bt_Adicionar_ProdutoClick(Sender: TObject);
    procedure DBGrid_ProdutoDblClick(Sender: TObject);
    procedure Edit_ProdutoChange(Sender: TObject);
    procedure Edit_ProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_QtdeExit(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure cdsProdutosBeforeInsert(DataSet: TDataSet);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
    procedure CallBack(Sender: TComponent; Result: Integer);
    procedure pCaixaFechada;
    var vItem  : integer;
        vTotal : double;
  public
    { Public declarations }
  end;

function Form_InserirItem: TForm_InserirItem;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_InserirItem: TForm_InserirItem;
begin
  Result := TForm_InserirItem(UniMainModule.GetFormInstance(TForm_InserirItem));
end;

procedure TForm_InserirItem.bt_Adicionar_ProdutoClick(Sender: TObject);
var
  vlQtdeCaixa: double; vlResto : integer;
begin
  if (Edit_Qtde.Value <= 0) then
    begin
      MessageDlg('Verifique se foi informado a quantidade',mtError, [mbOK]);
      Exit;
    end;

  cdsProdutos.Filtered := False;
  cdsProdutos.Filter   := 'CODIGO <> '''' ';
  cdsProdutos.Filtered := True;

  if ((Edit_Produto.Text <> '') and (not qProduto.IsEmpty)) then
    begin
      vItem := vItem +1;

      cdsProdutos.Insert;
      cdsProdutosIMG.AsString          := 'img';
      cdsProdutosITEM.AsString         := FormatFloat('000', vItem);
      cdsProdutosCODIGO.AsString       := qProdutoB1_COD.AsString; //Copy(Edit_Produto.Text, 1, 8);
      cdsProdutosDESCRICAO.AsString    := qProdutoB1_DESC.AsString;//Copy(Edit_Produto.Text, 10, length(Trim(Edit_Produto.Text)));
      cdsProdutosVALOR.AsCurrency      := Edit_Preco.Value;
      cdsProdutosQUANTIDADE.AsCurrency := Edit_Qtde.Value;
      cdsProdutosSUBTOTAL.AsCurrency   := Edit_Preco.Value * Edit_Qtde.Value;
      cdsProdutos.Post;

      vTotal := vTotal + cdsProdutosSUBTOTAL.AsCurrency;
      LabelTotal.Caption := 'Total: ' + FormatFloat('###,###,###,###,##0.00',vtotal);

      pCaixaFechada;

      //Verifica se a quantidade é caixa fechada
      {with qAuxiliar do
        begin
          Close;
          SQL.Text := 'SELECT B1_CONV FROM SB1010 (NOLOCK)';
          SQL.Add(' WHERE B1_COD = '''+ cdsProdutosCODIGO.AsString +''' ');
          Open;
        end;

      vResto := cdsProdutosQUANTIDADE.Value mod qAuxiliar.FieldByName('B1_CONV').Value;

      if vResto = 0 then
        begin
          //MessageDlg('Caixa fechada', mtInformation, [mbok]);
        end
      else
        begin
          MessageDlg('A quantidade informada não é caixa fechada' + #13 +
            'Quantidade fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
        end;

       vQtdeCaixa := 0;}


      Edit_Produto.Clear;
      Edit_Qtde.Value := 1;
      Edit_Preco.Value:= 0.0000;

      DBGrid_Produto.Hide;
      Edit_Produto.SetFocus;
    end;
end;

procedure TForm_InserirItem.CallBack(Sender: TComponent; Result: Integer);
begin
if Result = mrYes then
    begin
      vTotal := vTotal - cdsProdutosSUBTOTAL.AsCurrency;
      LabelTotal.Caption := 'Total: ' + FormatFloat('###,###,###,###,##0.00',vTotal);;

      cdsProdutos.Delete;
      vItem := 0;
      cdsProdutos.First;

      while not cdsProdutos.Eof do
        begin
          vItem := vItem + 1;

          cdsProdutos.Edit;
          cdsProdutosITEM.AsString := FormatFloat('000', vItem);
          cdsProdutos.Post;
          cdsProdutos.Next;
        end;
    end;
end;

procedure TForm_InserirItem.cdsProdutosBeforeInsert(DataSet: TDataSet);
begin
  cdsProdutos.IndexFieldNames := 'ITEM';
end;

procedure TForm_InserirItem.DBGrid_ProdutoDblClick(Sender: TObject);
begin
  Edit_Produto.Text := Trim(qProdutoB1_COD.AsString) +
  '-' + Trim(qProdutoB1_DESC.AsString);
  DBGrid_Produto.Hide;
  Edit_Qtde.SetFocus;
end;

procedure TForm_InserirItem.Edit_ProdutoChange(Sender: TObject);
begin
  if Trim(Edit_Produto.Text) <> '' then
    begin
      DBGrid_Produto.Left := 4;
      DBGrid_Produto.Top := 50;
      DBGrid_Produto.Show;

      with qProduto do
        begin
          Close;
          SQL.Text := 'SELECT B1_COD, B1_DESC FROM SB1010 (NOLOCK)';
          SQL.Add(' WHERE D_E_L_E_T_ <> ''*'' ');
          SQL.Add(' AND B1_TIPO = ''07'' ');
          SQL.Add(' AND B1_MSBLQL <> ''1'' ');
          SQL.Add(' AND B1_DESC LIKE ''%'+ Edit_Produto.Text +'%'' ');
          SQL.Add(' ORDER BY B1_DESC');

          Open;
        end;
    end
  else
    DBGrid_Produto.Hide;
end;

procedure TForm_InserirItem.Edit_ProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    qProduto.Next;

  If Key = VK_UP Then
    qProduto.Prior;
end;

procedure TForm_InserirItem.Edit_ProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
  DBGrid_ProdutoDblClick(Sender);
end;

procedure TForm_InserirItem.Edit_QtdeExit(Sender: TObject);
begin
  pCaixaFechada;
end;

procedure TForm_InserirItem.pCaixaFechada;
var vQtdeCaixa: double; vresto : integer;
begin
  try
   if qProduto.RecordCount > 0 then
     begin
      with qAuxiliar do
        begin
          Close;
          SQL.Text := 'SELECT B1_CONV FROM SB1010 (NOLOCK)';
          SQL.Add(' WHERE B1_COD = '''+ qProdutoB1_COD.AsString +''' ');
          Open;
        end;

      vResto := Edit_Qtde.Value mod qAuxiliar.FieldByName('B1_CONV').Value;

      if vResto = 0 then
        begin
          //MessageDlg('Caixa fechada', mtInformation, [mbok]);
        end
      else
        begin
          MessageDlg('A quantidade informada não é caixa fechada.' + #13 +
            'Quantidade fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
        end;
        vQtdeCaixa := 0;
     end;

  except

  end;
end;

procedure TForm_InserirItem.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    messageDLG('Deseja realmente excluir o item?', mtConfirmation, mbYesNo, CallBack);
end;

procedure TForm_InserirItem.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'IMG') then
  begin
    DoNotDispose := True; // we provide an static image so do not free it.
    if AField.AsString = 'img' then
    begin
      OutImage := UniImage2.Picture.Graphic;
    end
  end;
end;

procedure TForm_InserirItem.UniFormShow(Sender: TObject);
begin
  vItem  := 0;
  vTotal := 0;
end;

end.
