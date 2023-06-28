unit Funcoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

procedure PermitirDouble(textBox: TEdit; var Key: Char);
procedure PermitirDoubleNegativo(textBox: TEdit; var Key: Char);
procedure PermitirInt(var Key: Char);
procedure PermitirIntNegativo(textBox: TEdit; var Key: Char);
procedure PermitirString(var Key: Char);
procedure LimparControles(form: TWinControl);
procedure DesativarTabIndexes(control: TWinControl);
function verificarCPF(CPFstr: string): boolean;

implementation

procedure PermitirDouble(textBox: TEdit; var Key: Char);
// PermitirDouble(TEdit(Sender), Key);
begin
  if (Key = ',') and (Pos(',', textBox.Text) > 0) then
    Key := #0
  else if not CharInSet(Key, ['0' .. '9', ',', #8]) then
    Key := #0;
end;

procedure PermitirDoubleNegativo(textBox: TEdit; var Key: Char);
// PermitirDoubleNegativo(TEdit(Sender), Key);
begin
  if (Key = '-') and ((textBox.SelStart <> 0) or (Pos('-', textBox.Text) > 0))
  then
    Key := #0
  else if (Key = ',') and (Pos(',', textBox.Text) > 0) then
    Key := #0
  else if not CharInSet(Key, ['0' .. '9', ',', '-', #8]) then
    Key := #0;
end;

procedure PermitirInt(var Key: Char); // PermitirInt(Key);
begin
  if not CharInSet(Key, ['0' .. '9', #8]) then
    Key := #0;
end;

procedure PermitirIntNegativo(textBox: TEdit; var Key: Char);
// PermitirIntNegativo(TEdit(Sender), Key);
begin
  if ((Key = '-') and ((textBox.SelStart <> 0) or (Pos('-', textBox.Text) > 0)))
    or not CharInSet(Key, ['0' .. '9', '-', #8]) then
  begin
    Key := #0;
  end;
end;

procedure PermitirString(var Key: Char); // PermitirString(Key);
begin
  if not CharInSet(Key, ['A' .. 'Z', 'a' .. 'z', 'Á' .. 'Ú', 'á' .. 'ú',
    'Â' .. 'Û', 'â' .. 'û', 'Ã', 'ã', #8, ' ']) then
    Key := #0;
end;

procedure LimparControles(form: TWinControl); // LimparControles(Self);
var
  i: Integer;
begin
  for i := 0 to form.ControlCount - 1 do
  begin
    if form.Controls[i] is TEdit then
      TEdit(form.Controls[i]).Text := ''
    else if form.Controls[i] is TComboBox then
      TComboBox(form.Controls[i]).ItemIndex := -1
    else if form.Controls[i] is TWinControl then
      LimparControles(TWinControl(form.Controls[i]));
  end;
end;

procedure DesativarTabIndexes(control: TWinControl);
// DesativarTabIndexes(Self);
var
  i: Integer;
begin
  control.TabStop := False;
  for i := 0 to control.ControlCount - 1 do
  begin
    if control.Controls[i] is TWinControl then
      DesativarTabIndexes(TWinControl(control.Controls[i]));
  end;
end;

function verificarCPF(CPFstr: string): boolean;
var
  y, i, calc, cpfP, cpfU: Integer;
  cpf: array [1 .. 11] of Integer;
begin
  i := 1;
  for y := 1 to 14 do
    if (CPFstr[y] <> '.') and (CPFstr[y] <> '-') then
    begin
      cpf[i] := strtoint(CPFstr[y]);
      i := i + 1;
    end;
  calc := 0;
  y := 1;
  for i := 10 downto 2 do
  begin
    calc := (calc + cpf[y] * i);
    y := y + 1;
  end;
  if (calc mod 11) <= 1 then
    cpfP := 0
  else
    cpfP := 11 - (calc mod 11);
  calc := 0;
  y := 1;
  for i := 11 downto 2 do
  begin
    calc := calc + cpf[y] * i;
    y := y + 1;
  end;

  if (calc mod 11) <= 1 then
    cpfU := 0
  else
    cpfU := 11 - (calc mod 11);
  if (cpfP = cpf[10]) and (cpfU = cpf[11]) then
    result := True;

end;

end.
