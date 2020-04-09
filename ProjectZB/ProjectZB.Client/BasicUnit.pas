unit BasicUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, BasicService;

type
  TForm1 = class(TForm)
    txtName: TEdit;
    lblSayMyName: TLabel;
    btnInvoke: TButton;
    Memo1: TMemo;
    procedure btnInvokeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnInvokeClick(Sender: TObject);
var
  service:IBasicService;
  result:string;
begin
  service := GetIBasicService(true,'',nil);
  result :=   service.HelloWorld(txtName.Text);
  Memo1.Lines.Add('Method invoked. Result is : "' +result + '"');
end;

end.
