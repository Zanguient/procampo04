unit RegistroAtividadePlantioEntidade;

interface

uses
  SafraEntidade, VariedadeCulturaEntidade;
  type
    TRegistroAtividadePlantioEntidade = class
    private
      FCodigo: integer;
      FCodigoRegistroAtividade: integer;
      FVariedade: TVariedadeCulturaEntidade;
      FDataPlantio: TDate;

      procedure SetCodigo(const Value: integer);
      procedure SetCodigoRegistroAtividade(const Value: integer);
      procedure SetDataPlantio(const Value: TDate);
      procedure SetVariedade(const Value: TVariedadeCulturaEntidade);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoRegistroAtividade: integer read FCodigoRegistroAtividade write SetCodigoRegistroAtividade;
      property Variedade: TVariedadeCulturaEntidade read FVariedade write SetVariedade;
      property DataPlantio: TDate read FDataPlantio write SetDataPlantio;

    end;
implementation

{ TRegistroAtividadePlantioEntidade }

procedure TRegistroAtividadePlantioEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadePlantioEntidade.SetCodigoRegistroAtividade(
  const Value: integer);
begin
  FCodigoRegistroAtividade := Value;
end;

procedure TRegistroAtividadePlantioEntidade.SetDataPlantio(const Value: TDate);
begin
  FDataPlantio := Value;
end;

procedure TRegistroAtividadePlantioEntidade.SetVariedade(
  const Value: TVariedadeCulturaEntidade);
begin
  FVariedade := Value;
end;

end.
