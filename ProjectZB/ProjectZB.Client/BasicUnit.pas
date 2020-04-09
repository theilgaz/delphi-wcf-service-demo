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
    btnUser: TButton;
    procedure btnInvokeClick(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
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

procedure TForm1.btnUserClick(Sender: TObject);
var
  service:IBasicService;
  user:BasicUser;
begin
  user := BasicUser.Create;
  user.Username := 'Pinkman';
  user.Password := '123';
  Memo1.Lines.Add('Username : ' + user.Username);
  Memo1.Lines.Add('Password : ' + user.Password);

  service := GetIBasicService(true,'',nil);
  user := service.GetBasicUser;
  Memo1.Lines.Add('GetBasicUser Method invoked.');
  Memo1.Lines.Add('Username : ' + user.Username);
  Memo1.Lines.Add('Password : ' + user.Password);
end;

end.
