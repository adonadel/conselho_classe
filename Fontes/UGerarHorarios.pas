unit UGerarHorarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBorder, ExtCtrls, RzPanel, StdCtrls, RzLabel, RzButton, Mask,
  RzEdit, RzPrgres, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TFrm_GerarHorarios = class(TForm)
    RzPanel1: TRzPanel;
    RzProgressBar1: TRzProgressBar;
    DBano: TRzEdit;
    RzBtnGerar: TRzBitBtn;
    DBsemestre: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    DSHorario: TDataSource;
    CDSHorario: TClientDataSet;
    Provider: TDataSetProvider;
    SQLHorario: TSQLDataSet;
    Rzbtnvisualizar: TRzBitBtn;
    SQLHorarioIDHOR: TIntegerField;
    SQLHorarioIDRELACAO: TIntegerField;
    SQLHorarioDIA_HOR: TIntegerField;
    SQLHorarioAULA_HOR: TIntegerField;
    SQLHorarioTURNO_HOR: TStringField;
    SQLHorarioSTATUS_HOR: TStringField;
    SQLHorarioIDTURMA: TIntegerField;
    SQLHorarioNUM_TUR: TStringField;
    SQLHorarioIDDISC: TIntegerField;
    SQLHorarioIDFUNC: TIntegerField;
    SQLHorarioDESCR_DISC: TStringField;
    SQLHorarioNOME_FUNC: TStringField;
    CDSHorarioIDHOR: TIntegerField;
    CDSHorarioIDRELACAO: TIntegerField;
    CDSHorarioDIA_HOR: TIntegerField;
    CDSHorarioAULA_HOR: TIntegerField;
    CDSHorarioTURNO_HOR: TStringField;
    CDSHorarioSTATUS_HOR: TStringField;
    CDSHorarioIDTURMA: TIntegerField;
    CDSHorarioNUM_TUR: TStringField;
    CDSHorarioIDDISC: TIntegerField;
    CDSHorarioIDFUNC: TIntegerField;
    CDSHorarioDESCR_DISC: TStringField;
    CDSHorarioNOME_FUNC: TStringField;
    procedure RzBtnGerarClick(Sender: TObject);
    procedure RzbtnvisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GerarHorarios: TFrm_GerarHorarios;

implementation

uses UDM, U_BusDis, U_Horarios;

{$R *.dfm}

function verificarQtdeAulasSemanais( idCurso : string ): boolean;
var
  qtdeHorarios : integer; 
begin
  /// Validar a quantidade de aulas semanais do curso, dever� ter exatamente 25 aulas
  DM.SQLAux.Close;
  DM.SQLAux.CommandText := 'SELECT SUM(DISCURSO.NUMAULAS_DISCUR) FROM DISCURSO WHERE DISCURSO.IDCURSO = ' + idCurso;
  DM.SQLAux.Open;

  qtdeHorarios := DM.SQLAux.FieldByName('SUM').AsInteger;

  // Resultado ir� retornar TRUE se for 25 aulas e FALSE se for diferente
  Result := (qtdeHorarios = 25);
end;


procedure TFrm_GerarHorarios.RzBtnGerarClick(Sender: TObject);
var
    qtdeHorarios, indiceHorario, indiceDisciplinaCurso, i: integer;
    idCurso : string;
    arrayDisciplinaCurso : array of array of integer;
    dia, aula : integer;
    ano, turno, semestre : string;
    x : Integer;
    dsTurmas, dsDisciplinasCurso, dsProposta : TSQLDataSet;
    percProgressBar : integer;
    idHorario : integer;
begin
   
   //Verifica��es de digita��o do usuario
   if (DBano.Text = '') or (DBsemestre.Text = '') then
   begin
      ShowMessage('Digitar ano e semestre!');
      DBano.SetFocus;
      Exit;
   end;
   if (Length(DBano.Text)<>4) then
   begin
      ShowMessage('Ano inv�lido!');
      DBsemestre.SetFocus;
      Exit;
   end;
   if ((DBsemestre.Text <> 'A') and (DBsemestre.Text <> 'B')) then
   begin
      ShowMessage('Semestre Inv�lido!');
      DBsemestre.SetFocus;
      Exit;
   end;

   ano          := DBano.Text;
   semestre     := DBsemestre.Text;
   qtdeHorarios := 25;

   DM.SQLAux.Close;
   DM.SQLAux.CommandText := 'SELECT (COALESCE(MAX(IDHOR),0)+1) AS IDHORARIO FROM HORARIOS';
   DM.SQLAux.Open;
   idHorario := DM.SQLAux.fieldByName('IDHORARIO').AsInteger;

   /// Criando SQLDataSet(em tempo de execu��o) de disciplina do curso
   dsDisciplinasCurso := TSQLDataSet.Create(Self);
   dsDisciplinasCurso.SQLConnection := DM.Conexao;

   /// Criando SQLDataSet(em tempo de execu��o) de proposta
   dsProposta := TSQLDataSet.Create(Self);
   dsProposta.SQLConnection := DM.Conexao;

   /// Criando SQLDataSet em tempo de execu��o para consulta tempor�ria
   dsTurmas := TSQLDataSet.Create(Self);
   dsTurmas.SQLConnection := DM.Conexao;
   dsTurmas.Close;
   dsTurmas.CommandText := 'SELECT * FROM TURMAS WHERE ANO_TUR = ' + ano;
   dsTurmas.Open;

   ///Carregando a barra de progresso de conforme os horarios v�o sendo gerados
   percProgressBar        := 100 div dsTurmas.RecordCount;
   RzProgressBar1.Percent := 0;

   while not (dsTurmas.Eof) do
   begin
     RzProgressBar1.Percent := RzProgressBar1.Percent + percProgressBar;

     idCurso := dsTurmas.FieldByName('IDCURSO').AsString;
     turno   := dsTurmas.FieldByName('TURNO_TUR').AsString;

     //ShowMessage(dsTurmas.FieldByName('NUM_TUR').AsString + ' - ' + idCurso + ' - ' + turno);

     // Se o resultado da fun��o criada acima for diferente de 25 entra aqui!
     if (not verificarQtdeAulasSemanais(idCurso)) then
     begin
        ShowMessage('Para o curso ' + idCurso + ' a quantidade de aulas semanais est� incompleta!');
        Exit;
     end;

      // Neste bloco � setado em um array a quantidade de aulas dispon�veis para cada disciplina do curso
     dsDisciplinasCurso.Close;
     dsDisciplinasCurso.CommandText := 'SELECT * FROM DISCURSO WHERE DISCURSO.IDCURSO = '+ idCurso;
     dsDisciplinasCurso.Open;

     SetLength(arrayDisciplinaCurso, dsDisciplinasCurso.RecordCount);
     for i := 0 to dsDisciplinasCurso.RecordCount-1 do
     begin
        SetLength(arrayDisciplinaCurso[i], 2);
        arrayDisciplinaCurso[i,0] := dsDisciplinasCurso.FieldByName('IDDISC').AsInteger;
        arrayDisciplinaCurso[i,1] := dsDisciplinasCurso.FieldByName('NUMAULAS_DISCUR').AsInteger;
        dsDisciplinasCurso.Next;
     end;

     for indiceHorario := 1 to qtdeHorarios do
     begin
        for indiceDisciplinaCurso := low(arrayDisciplinaCurso) to high(arrayDisciplinaCurso) do
        begin
          if arrayDisciplinaCurso[indiceDisciplinaCurso, 1] > 0 then // Verifica disponibilidade da disciplina
          begin
              // Verificar disponibilidade do professor de acordo com a proposta
              dia := (indiceHorario div 5);  // Div pega inteiro
              aula := (indiceHorario mod 5); // Mod pega resto
              if aula = 0 then
              begin
                aula := 5;
              end else begin
                dia := dia + 1;
              end;

              /// Verificar se j� existe aula atribuida para a turma neste dia e hor�rio
              DM.SQLAux.Close;
              DM.SQLAux.CommandText := '';
              DM.SQLAux.CommandText :=
                  ' SELECT * FROM HORARIOS ' +
                  ' WHERE DIA_HOR = ' + IntToStr(dia) + ' AND AULA_HOR = ' + IntToStr(aula) + ' AND TURNO_HOR = ''' + turno + '''' +
                  ' AND IDTURMA = ' + dsTurmas.FieldByName('IDTUR').AsString;
              DM.SQLAux.Open;

              if (DM.SQLAux.RecordCount = 1) then
                Continue;  ///Continue interrompe o FOR e pula ao proximo item da sequencia
                           ///Se j� existir horario definido para o dia e aula daquele turma naquele turno

              dsProposta.Close;
              dsProposta.CommandText := '' +        ///Buscando propostas disponiveis pro dia e horario
                  ' SELECT' +
                  '   IDFUNC' +
                  ' FROM PROPHOR' +
                  ' WHERE DIA_PROPHOR = ' + IntToStr(dia) + ' AND AULA_PROPHOR = ' + IntToStr(aula) + ' AND VALOR = ''X''' +
                  ' AND ANO_PROPHOR = ' + ano + ' AND SEMESTRE_PROPHOR = ''' + semestre + ''' AND TURNO_PROPHOR = ''' + turno +''''+
                  ' AND IDFUNC IN (' +
                  '   SELECT IDFUNC FROM DISCPROF WHERE IDDISCUR IN (' +
                  '     SELECT IDDISCUR FROM DISCURSO WHERE IDCURSO = ' + idCurso + ' AND IDDISC = ' + IntToStr(arrayDisciplinaCurso[indiceDisciplinaCurso,0]) +
                  '   )' +
                  ' )';
              dsProposta.Open;

              if dsProposta.RecordCount > 1 then
              begin
                ShowMessage('O Sistema n�o atribuiu professor automaticamente pois existem ' + IntToStr(dsProposta.RecordCount) + ' dispon�veis para dar esta aula');
              end;

              while (not dsProposta.Eof) do
              begin
                // Verificar disponibilidade dos professores de acordo com as outras turmas
                DM.SQLAux.Close;
                DM.SQLAux.CommandText :=
                    ' SELECT * FROM HORARIOS ' +
                    ' WHERE DIA_HOR = ' + IntToStr(dia) + ' AND AULA_HOR = ' + IntToStr(aula) + ' AND TURNO_HOR = ''' + turno + '''' +
                    ' AND IDRELACAO IN ( ' +
                    '   SELECT IDRELACAO FROM DISCPROF ' +
                    '   WHERE ANO_REL = ' + ano + ' AND SEMESTRE_REL = ''' + semestre + '''' +
                    '   AND IDFUNC = ' + dsProposta.fieldByName('IDFUNC').AsString +
                    ' )';
                DM.SQLAux.Open;

                if (DM.SQLAux.RecordCount = 0) then
                begin

                  arrayDisciplinaCurso[indiceDisciplinaCurso, 1] := arrayDisciplinaCurso[indiceDisciplinaCurso, 1] - 1;
                  /// Busca o ID da rela��o do professor com a disciplina do curso
                  DM.SQLAux.Close;
                  DM.SQLAux.CommandText :=
                      ' SELECT ' +
                      '   IDRELACAO ' +
                      ' FROM DISCPROF ' +
                      ' WHERE ANO_REL = ' + ano + ' AND SEMESTRE_REL = ''' + semestre + '''' +
                      ' AND IDFUNC = ' + dsProposta.fieldByName('IDFUNC').AsString +
                      ' AND IDDISCUR = (SELECT IDDISCUR FROM DISCURSO WHERE IDCURSO = ' + idCurso + ' AND IDDISC = ' + IntToStr(arrayDisciplinaCurso[indiceDisciplinaCurso,0]) + ')';
                  DM.SQLAux.Open;

                  if (not SQLHorario.Active) then
                  begin
                    SQLHorario.Open;
                    CDSHorario.Open;
                  end;
                  CDSHorario.Append;
                  CDSHorarioIDHOR.Value       := idHorario;
                  CDSHorarioIDRELACAO.Value   := DM.SQLAux.fieldByName('IDRELACAO').AsInteger;
                  CDSHorarioIDTURMA.Value     := dsTurmas.FieldByName('IDTUR').AsInteger;
                  CDSHorarioDIA_HOR.Value     := dia;
                  CDSHorarioAULA_HOR.Value    := aula;
                  CDSHorarioTURNO_HOR.Value   := turno;
                  CDSHorarioSTATUS_HOR.Value  := 'A';
                  CDSHorario.Post;
                  CDSHorario.ApplyUpdates(0);
                  idHorario := idHorario + 1;
                  Break;
                end;
                dsProposta.Next;
              end;
          end;
        end;
     end;

     dsTurmas.Next;

   end;

   RzProgressBar1.Percent := 100;

   /// Pegar todos os cursos e turmas do ano e semestre informados

   ShowMessage('Fim!!');

   RzProgressBar1.Percent:=0;
   MessageDlg('Hor�rios gerados com �xito!',mtCustom,[mbYes],0);
   Rzbtnvisualizar.Enabled := True;

   /// Desalocar objetos criados em tempo de execu��o da mem�ria
   SQLHorario.Close;
   CDSHorario.Close;
   dsTurmas.Destroy;
   dsDisciplinasCurso.Destroy;

end;

procedure TFrm_GerarHorarios.RzbtnvisualizarClick(Sender: TObject);
begin
   Application.CreateForm(TFrm_Horarios, Frm_Horarios);
   Frm_Horarios.ShowModal;
   Frm_Horarios.Free;
end;

end.
