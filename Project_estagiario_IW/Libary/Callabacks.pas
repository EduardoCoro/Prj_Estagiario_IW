unit Callabacks;

interface

uses

  uServerController,

  System.Classes, System.StrUtils, System.SysUtils, FireDAC.Comp.Client;

  function ReturnCountSQL(var Query: TFDQuery): LongInt;
//  procedure Get_Lista_Pessoa(aParams: TStrings; out aResult: string);

implementation

function ReturnCountSQL(var Query: TFDQuery): LongInt;
var
  Qry: TFDquery;
begin
  Qry := TFDQuery.Create(nil);
  Qry.Connection := UserSession.Conexao;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('SELECT COUNT(*) FROM (' + Query.SQL.Text + ') AS TEMP1');

  try
      Qry.Open;
      Result := Qry.Fields[0].AsInteger;
  except

  end;

  Qry.Free;
end;

//procedure Get_Lista_Pessoa(aParams: TStrings; out aResult: string);
//var
//  Qry       : TFDquery;
//  Json      : string;
//  Registros : LongInt;
//begin
//  Qry := TFDQuery.Create(Nil);
//  //Para simplificar a utilização do comando
//  Qry.Connection := UserSession.Conexao;
//
//  Qry.Close;
//  Qry.SQL.Clear;
//  Qry.SQL.Add('SELECT COD_PESSOA, PES_NOME, PES_DATA_CADASTRO FROM PESSOA');
//  Qry.SQL.Add('WHERE PES_NOME LIKE ''%'+StringReplace(UpperCase(aP)
//end;

end.
