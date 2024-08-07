unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON, Vcl.ComCtrls;

type
   TStringsHelper = class helper for TStrings
      function Contains(const s:string): Boolean;
    end;

  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    mem_xeroYrs: TMemo;
    mem_bbsYrs: TMemo;
    btnCompare: TButton;
    mem_log: TMemo;
    mem_data: TMemo;
    btnAnotherSolution: TButton;
    Button1: TButton;
    btn_Test: TButton;
    mem_xeroJson: TMemo;
    btnExtract: TButton;
    mem_XeroDetails: TMemo;
    procedure btnCompareClick(Sender: TObject);
    procedure btn_TestClick(Sender: TObject);
    procedure btnAnotherSolutionClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
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

procedure TForm1.btnAnotherSolutionClick(Sender: TObject);
var
  List1, List2, MissingItems: TStringList;
  i: Integer;
begin
  List1 := TStringList.Create;
  List2 := TStringList.Create;
  MissingItems := TStringList.Create;
  try
    // Define the contents of the two string lists
    List1.Add('a');
    List1.Add('b');
    List1.Add('c');

    List2.Add('a');
    List2.Add('b');
    List2.Add('c');
    List2.Add('d');
    List2.Add('e');

    // Loop over the first list and check for missing items in the second list
    for i := 0 to List1.Count - 1 do
    begin
      if List2.IndexOf(List1[i]) = -1 then
      begin
        MissingItems.Add(List1[i]);
      end;
    end;

    // Display the missing items
    Showmessage('Items in the first list not present in the second list:');
    for i := 0 to MissingItems.Count - 1 do
    begin
      mem_log.Lines.Add(MissingItems[i]);
    end;

  except
    on E: Exception do
      Showmessage(E.ClassName + ': ' + E.Message);
  end;

  // Wait for user to press Enter before closing the console window
  //Readln;

  // Clean up
  List1.Free;
  List2.Free;
  MissingItems.Free;
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

procedure TForm1.btnExtractClick(Sender: TObject);
var
  jp, JSONArr : TJSONArray;
  i: integer;
  JSONValue: TJSONValue;
  JSONObj: TJSONObject;
begin

  jp := TJSONArray.Create;
  JSONArr := TJSONArray.Create;
  JSONObj := TJSONObject.Create;

  JSONArr := TJSONObject.ParseJSONValue(mem_xerojson.Lines.Text) as TJSONArray;

  showmessage(inttostr(JSONArr.Count));

  for i := 0 to JSONArr.Count - 1 do
    begin
      JSONObj := TJSONObject.ParseJSONValue(JSONArr.Items[i].ToString) as TJSONObject;
      JSONValue := JSONObj.Pairs[0].JsonValue;
      Showmessage(JSONValue.tostring);
      JSONValue := JSONObj.Pairs[5].JsonValue;
      Showmessage(JSONValue.tostring);
//      JSONValue := JSONObj.Pairs[].JsonValue;
//      Showmessage(JSONValue.tostring);
    end;

end;

procedure TForm1.btn_TestClick(Sender: TObject);
var
  jp, JSONArr : TJSONArray;
  i: integer;
  JSONValue: TJSONValue;
begin
 jp := TJSONArray.Create;

 jp.Add('a');
 jp.Add('b');
 jp.Add('c');

 //JSONArr := TJSONObject.ParseJSONValue(jp) as TJSONArray;

for i := 0 to jp.Count - 1 do
    begin
      JSONValue := jp.Items[i];
      Showmessage(JSONValue.Value);
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 st, stValue: string;
 sObject: TJSONObject;

begin

sObject := TJSONObject.Create;

st := '{"value":"datamap","label":"Data Mapping Request"}';

sObject := TJSONObject.ParseJSONValue(st) as TJSONObject;

stValue := sObject.Pairs[0].JsonValue.tostring;

showmessage(stValue);

end;

end.
