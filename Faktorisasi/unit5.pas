unit unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    edtJumlah: TEdit;
    edtFaktorial: TEdit;
    gbHasil: TGroupBox;
    btnHitung: TButton;
    edtDeret: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure edtDeretChange(Sender: TObject);
    procedure btnHitungClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
function HitungFaktorial(N: Integer): Int64;
var
  i: Integer;
begin
  Result := 1;
  for i := 1 to N do
    Result := Result * i;
end;

procedure TForm1.edtDeretChange(Sender: TObject);
begin

end;

procedure TForm1.btnHitungClick(Sender: TObject);
var
  N: Integer;
begin
  try
    N := StrToInt(edtDeret.Text);
    edtfaktorial.Text := IntToStr(HitungFaktorial(N));
  except
    on EConvertError do
      ShowMessage('Masukkan angka yang valid.');
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

