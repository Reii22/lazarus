unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitungi: TButton;
    btnClear: TButton;
    btnClose: TButton;
    cbJabatan: TComboBox;
    edtTunjangan: TEdit;
    edtTotalGaji: TEdit;
    edtNama: TEdit;
    edtGapok: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    rgstatus: TRadioGroup;
    procedure btnClearClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnHitungiClick(Sender: TObject);
    procedure cbJabatanChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure rgstatusClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.rgstatusClick(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.btnHitungiClick(Sender: TObject);
var
  gajiPokok, tunjangan, gajiBersih: Double;
begin
  // Mengambil gaji pokok dari combo box
  case cbJabatan.ItemIndex of
    0: gajiPokok := 5000000; // Direktur
    1: gajiPokok := 2000000; // Manager
    2: gajiPokok := 1000000; // Karyawan
  end;

  // Menghitung tunjangan berdasarkan status
  if rgstatus.ItemIndex = 0 then
    tunjangan := 15000000 // Pegawai tetap
  else
    tunjangan := 5000000; // Honorer

  // Menghitung gaji bersih
  gajiBersih := gajiPokok + tunjangan;

  // Menampilkan hasil perhitungan pada komponen TEdit
  edtGapok.Text := FloatToStr(gajiPokok);
  edtTunjangan.Text := FloatToStr(tunjangan);
  edtTotalGaji.Text := FloatToStr(gajiBersih);
end;

procedure TForm1.cbJabatanChange(Sender: TObject);
begin

end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  // Menghapus semua input dan hasil perhitungan
  edtNama.Text := '';
  cbJabatan.ItemIndex := -1;
  rgstatus.ItemIndex := -1;
  edtGapok.Text := '';
  edtTunjangan.Text := '';
  edtTotalGaji.Text := '';
end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  // Menutup aplikasi
  Close;
end;


end.

