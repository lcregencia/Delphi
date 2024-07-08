unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TStringsHelper = class helper for TStrings
      function Contains(const s:string): Boolean;
    end;

  TForm1 = class(TForm)
    mem_xeroYrs: TMemo;
    mem_bbsYrs: TMemo;
    btnCompare: TButton;
    Label1: TLabel;
    Label2: TLabel;
    mem_log: TMemo;
    procedure btnCompareClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;




var
  Form1: TForm1;

implementation

{$R *.dfm}
function TStringsHelper.Contains(const s:string): Boolean;
    begin
        Result := self.IndexOf(s) <> -1;
    end;

procedure TForm1.btnCompareClick(Sender: TObject);
var
  xeroYrs, bbsYrs, YrsNotInBBs: TStringlist;
  x, y, j, i, z: integer;
  matchFlag: integer;
begin

  x := mem_xeroYrs.Lines.Count;
  y := mem_bbsYrs.Lines.Count;
  xeroYrs := TStringlist.Create;
  bbsYrs := TStringlist.Create;
  YrsNotInBBs := TStringlist.Create;
  mem_log.Lines.Clear;

  TRY

  for i := 0 to x - 1 do
    begin
       xeroYrs.Add(mem_xeroYrs.Lines[i]);
    end;

  for i := 0 to y - 1 do
    begin
       bbsYrs.Add(mem_bbsYrs.Lines[i]);
    end;

   mem_Log.Lines.Add('xero yrs count: ' + inttostr(x));
   mem_Log.Lines.Add('bbs yrs count: ' + inttostr(y));

//   for i := 0 to bbsYrs.Count-1 do
//    begin
      for j := 0 to xeroYrs.Count-1 do
        begin
//           mem_Log.Lines.Add('bbsYrs: ' + bbsYrs[i] + ' = ' + 'xeroYrs: ' + xeroYrs[j]);
           //if (xeroYrs[j] = bbsYrs[i]) then
           if bbsYrs.Contains(xeroYrs[j]) then
             begin
               matchFlag := 1;
             end
           else
             YrsNotInBBs.Add(xeroYrs[j]);

           {if matchFlag = 1 then
             begin
              YrsNotInBBs.Add(xeroYrs[j]);
              matchFlag := 0;
             end;}
        end;

      // ShowMessage(bbsYrs[i]);
  //  end;

    for z := 0 to YrsNotInBBs.Count-1 do
      begin
       showmessage('Yrsnotinbbs: ' + Yrsnotinbbs[z]);
      end;


  FINALLY
   xeroYrs.Free;
   bbsYrs.Free;
   YrsNotInBBs.free;
  END;

end;

end.
