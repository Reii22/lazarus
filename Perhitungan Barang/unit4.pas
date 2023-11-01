unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtDlgs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BTNHitung: TButton;
    BTNUlang: TButton;
    BTNKeluar: TButton;
    CBKode: TComboBox;
    EQTY: TEdit;
    ENama: TEdit;
    EHarga: TEdit;
    ESubTotal: TEdit;
    EDiskon: TEdit;
    ETotal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BTNHitungClick(Sender: TObject);
    procedure BTNKeluarClick(Sender: TObject);
    procedure BTNUlangClick(Sender: TObject);
    procedure CBKodeChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.BTNHitungClick(Sender: TObject);
var
  HargaBarang: array[0..3] of integer = (50000, 2500, 750000, 5000);
  Diskon: array[0..3] of integer = (15, 10, 5, 0);
  KodeIndex: integer;
  SubTotal: integer;
begin
  KodeIndex := cbKode.ItemIndex;
  if (KodeIndex >= 0) and (KodeIndex <= 3) then
  begin
    SubTotal := StrToIntDef(EQTY.Text, 0) * HargaBarang[KodeIndex];
    ESubTotal.Text := IntToStr(SubTotal);

    if SubTotal >= 100000 then
      EDiskon.Text := IntToStr(Diskon[0])
    else if SubTotal >= 50000 then
      EDiskon.Text := IntToStr(Diskon[1])
    else if SubTotal >= 25000 then
      EDiskon.Text := IntToStr(Diskon[2])
    else
      EDiskon.Text := IntToStr(Diskon[3]);

    ETotal.Text := IntToStr(SubTotal - (SubTotal * StrToIntDef(EDiskon.Text, 0) div 100));
  end;
end;


procedure TForm1.BTNKeluarClick(Sender: TObject);
begin
  // Menutup aplikasi
  Close;
end;

procedure TForm1.BTNUlangClick(Sender: TObject);
begin
  CBKode.ItemIndex := -1;
  EQTY.Text := '';
  EHarga.Text := '';
  ENama.Text := '';
  ESubTotal.Text := '';
  EDiskon.Text := '';
  ETotal.Text := '';
end;

procedure TForm1.CBKodeChange(Sender: TObject);
begin

end;


end.

