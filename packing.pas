unit packing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.OleCtrls, SHDocVw, MSHTML,
  Vcl.Grids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Memo1: TMemo;
    Memo2: TMemo;
    carMemo1: TMemo;
    carMemo2: TMemo;
    carMemo3: TMemo;
    carMemo4: TMemo;
    carMemo5: TMemo;
    carMemo6: TMemo;
    carMemo7: TMemo;
    Panel1: TPanel;
    Memo3: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit8: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Memo4: TMemo;
    Panel2: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    loginBtn: TButton;
    Edit3: TEdit;
    carSerchStartBtn: TButton;
    day1Btn: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    pkeyEdit: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure loginBtnClick(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure carSerchStartBtnClick(Sender: TObject);
    procedure day1BtnClick(Sender: TObject);
    procedure SetCurrLine(Memo : TMemo; Value : integer);
    function GetCurrLine(Memo : TMemo) : integer;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i :Integer;
  EncodedStr : string;
  Header : OleVariant;
  Post : OleVariant;
begin
  EncodedStr := '';
  Post := VarArrayCreate([0, Length(EncodedStr)-1], varByte);

  for I := 1 to Length(EncodedStr) do
      post[I-1] := Ord(EncodedStr[I]);

    Header := 'Content-Type: application/x-www-form-urlencoded' + #10#13;

  WebBrowser1.Navigate('http://ajsunhwa15.iptime.org', EmptyParam, EmptyParam, Post, Header);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memo1.Text := WebBrowser1.OleObject.Document.documentElement.InnerHTML;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i :Integer;
  EncodedStr : string;
  Header : OleVariant;
  Post : OleVariant;
begin
  EncodedStr := 'carNumber='+edit1.Text;
  Post := VarArrayCreate([0, Length(EncodedStr)-1], varByte);

  for I := 1 to Length(EncodedStr) do
      post[I-1] := Ord(EncodedStr[I]);

    Header := 'Content-Type: application/x-www-form-urlencoded' + #10#13;

  WebBrowser1.Navigate('http://ajsunhwa15.iptime.org/discount/carSearch.cs?userID=daniel&contextPath', EmptyParam, EmptyParam, Post, Header);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i :Integer;
  EncodedStr : string;
  Header : OleVariant;
  Post : OleVariant;
begin
  EncodedStr := '';
  Post := VarArrayCreate([0, Length(EncodedStr)-1], varByte);

  for I := 1 to Length(EncodedStr) do
      post[I-1] := Ord(EncodedStr[I]);

    Header := 'Content-Type: application/x-www-form-urlencoded' + #10#13;

  WebBrowser1.Navigate('http://ajsunhwa15.iptime.org/discount/carSearch.cs?contextPath=&userID=daniel', EmptyParam, EmptyParam, Post, Header);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  i :Integer;
  EncodedStr, sUrl : string;
  Header : OleVariant;
  Post : OleVariant;
begin
  EncodedStr := '';
  Post := VarArrayCreate([0, Length(EncodedStr)-1], varByte);

  for I := 1 to Length(EncodedStr) do
      post[I-1] := Ord(EncodedStr[I]);

  Header := 'Content-Type: application/x-www-form-urlencoded' + #10#13;
  sUrl := 'http://ajsunhwa15.iptime.org/discount/discountApplyProc.cs?pKey=' + Edit4.Text + '&dCode=00004';

  WebBrowser1.Navigate(sUrl, EmptyParam, EmptyParam, Post, Header);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i :Integer;
  EncodedStr : string;
  Header : OleVariant;
  Post : OleVariant;
begin
  EncodedStr := '';
  Post := VarArrayCreate([0, Length(EncodedStr)-1], varByte);

  for I := 1 to Length(EncodedStr) do
      post[I-1] := Ord(EncodedStr[I]);

  Header := 'Content-Type: application/x-www-form-urlencoded' + #10#13;

  WebBrowser1.Navigate('http://ajsunhwa15.iptime.org/discount/carSearch.cs?contextPath=&userID=daniel', EmptyParam, EmptyParam, Post, Header);

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i :Integer;
  EncodedStr, sUrl : string;
  Header : OleVariant;
  Post : OleVariant;
begin
  EncodedStr := '';
  Post := VarArrayCreate([0, Length(EncodedStr)-1], varByte);

  for I := 1 to Length(EncodedStr) do
      post[I-1] := Ord(EncodedStr[I]);

  Header := 'Content-Type: application/x-www-form-urlencoded' + #10#13;
  sUrl := 'http://ajsunhwa15.iptime.org/discount/discountApply.cs?pKey='+pkeyEdit.Text ;
  WebBrowser1.Navigate(sUrl, EmptyParam, EmptyParam, Post, Header);

end;

procedure TForm1.day1BtnClick(Sender: TObject);
var
  i : integer;
  tags, tags2 : variant;
begin
  tags := WebBrowser1.OleObject.Document.Body.getElementsByTagName('input');

  for i := 0 to tags.Length - 1 do
  begin
    if (tags.Item(i).NAME = 'carNumber') then
    begin
        tags.Item(i).value := '0942';
    end;

    if (tags.Item(i).NAME = 'from') then
    begin
        tags.item(i).focus;//키보드 이벤트를 위해 포커스 지정
        tags.Item(i).value := '2017-08-13';
    end;
  end;

  tags2 := WebBrowser1.OleObject.Document.Body.getElementsByTagName('input');
  for i := 0 to tags2.Length - 1 do
  begin
    if (tags2.Item(i).type = 'submit') then
    begin
        tags2.Item(i).click;
        exit;
    end;
  end;
end;

procedure TForm1.loginBtnClick(Sender: TObject);
var
  i : integer;
  tags, tags2 : variant;
begin
  tags := WebBrowser1.OleObject.Document.Body.getElementsByTagName('input');

  for i := 0 to tags.Length - 1 do
  begin
    if (tags.Item(i).NAME = 'j_username') then
    begin
        tags.Item(i).value := 'daniel';
    end;

    if (tags.Item(i).NAME = 'j_password') then
    begin
        tags.item(i).focus;//키보드 이벤트를 위해 포커스 지정
        tags.Item(i).value := '1854';
    end;
  end;

  tags2 := WebBrowser1.OleObject.Document.Body.getElementsByTagName('input');
  for i := 0 to tags2.Length - 1 do
  begin
    if (tags2.Item(i).type = 'button') then
    begin
        tags2.Item(i).click;
        memo2.Lines.LoadFromFile('carlist.txt');
        edit6.Text := inttostr(memo2.Lines.Count);
        exit;
    end;
  end;
end;

procedure TForm1.carSerchStartBtnClick(Sender: TObject);
var
  i, m2lineno : integer;
  tags, tags2 : variant;
  carNo : string;
begin
  m2lineno := GetCurrLine(Memo2);
  carNo := copy(memo2.Lines[m2lineno],length(memo2.Lines[m2lineno])-3,4);
  tags := WebBrowser1.OleObject.Document.Body.getElementsByTagName('input');

  for i := 0 to tags.Length - 1 do
  begin
    if (tags.Item(i).NAME = 'carNumber') then
    begin
        tags.Item(i).value := carNo;
    end;

//    if (tags.Item(i).NAME = 'from') then
//    begin
//        tags.item(i).focus;//키보드 이벤트를 위해 포커스 지정
//        tags.Item(i).value := '2017-08-13';
//    end;
  end;

  tags2 := WebBrowser1.OleObject.Document.Body.getElementsByTagName('input');
  for i := 0 to tags2.Length - 1 do
  begin
    if (tags2.Item(i).type = 'submit') then
    begin
        tags2.Item(i).click;
        exit;
    end;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
  idx, lineNo, m2lineno, multiChk : Integer;
  sURL, sCarKey, sDay, scarNo : string;
begin
  memo1.Text := WebBrowser1.OleObject.Document.documentElement.InnerHTML;
  sURL := URL; // http://ajsunhwa15.iptime.org/login.cs
  Edit3.Text := sURL;
  if copy(sURL,30,8) = 'login.cs' then
  begin
    loginBtn.Click;
  end;

  if sURL = 'http://ajsunhwa15.iptime.org/discount/carSearch.cs?contextPath=&userID=daniel' then
  begin
    memo1.Text := '';
    memo1.Text := WebBrowser1.OleObject.Document.documentElement.InnerHTML;
    idx := pos('입차 차량 조회 내역',memo1.Text);
    if idx > 0 then // 차량 다중 검색
    begin
      multiChk := 1;
      sDay := datetostr(date);
      m2lineno := GetCurrLine(Memo2);
      scarNo := memo2.Lines[m2lineno];

      idx := 0;
      idx := pos('onclick="location.href=',memo1.Text);
      if idx > 0 then
      begin

        carMemo1.Text := '';
        carMemo2.Text := '';
        carMemo3.Text := '';
        carMemo4.Text := '';
        carMemo5.Text := '';
        carMemo6.Text := '';
        carMemo7.Text := '';

        lineNo := SendMessage(Memo1.Handle, EM_LINEFROMCHAR, idx - 1, 0);
        carMemo1.Lines.Add(copy(memo1.Lines[lineNo],51,20));
        carMemo1.Lines.Add(memo1.Lines[lineNo+2]);
        carMemo1.Lines.Add(memo1.Lines[lineNo+3]);

        if length(carMemo1.Text) > 10 then
        begin
          idx:= 0;
          idx:= pos(scarNo,carMemo1.Text);
          if idx>0 then // 차량번호가 있으면
          begin
            idx := 0;
            idx := pos(sday,carMemo1.Text);
            if idx > 0 then
            begin
              pkeyEdit.Text := carMemo1.Lines[0];
              multiChk := 0;
              Button7.Click;
            end;
          end;
        end;

        carMemo2.Lines.Add(copy(memo1.Lines[lineNo+5],51,20));
        carMemo2.Lines.Add(memo1.Lines[lineNo+7]);
        carMemo2.Lines.Add(memo1.Lines[lineNo+8]);

        if length(carMemo2.Text) > 10 then
        begin
          idx:= 0;
          idx:= pos(scarNo,carMemo2.Text);
          if idx>0 then // 차량번호가 있으면
          begin
            idx := 0;
            idx := pos(sday,carMemo2.Text);
            if idx > 0 then
            begin
              pkeyEdit.Text := carMemo2.Lines[0];
              multiChk := 0;
              Button7.Click;
            end;
          end;
        end;

        if memo1.Lines.Count > lineNo+9 then
        begin
          carMemo3.Lines.Add(copy(memo1.Lines[lineNo+10],51,20));
          carMemo3.Lines.Add(memo1.Lines[lineNo+12]);
          carMemo3.Lines.Add(memo1.Lines[lineNo+13]);

          if length(carMemo3.Text) > 10 then
          begin
            idx:= 0;
            idx:= pos(scarNo,carMemo3.Text);
            if idx>0 then // 차량번호가 있으면
            begin
              idx := 0;
              idx := pos(sday,carMemo3.Text);
              if idx > 0 then
              begin
                pkeyEdit.Text := carMemo3.Lines[0];
                multiChk := 0;
                Button7.Click;
              end;
            end;
          end;

        end;

        if memo1.Lines.Count > lineNo+14 then
        begin
          carMemo4.Lines.Add(copy(memo1.Lines[lineNo+15],51,20));
          carMemo4.Lines.Add(memo1.Lines[lineNo+17]);
          carMemo4.Lines.Add(memo1.Lines[lineNo+18]);

          if length(carMemo4.Text) > 10 then
          begin
            idx:= 0;
            idx:= pos(scarNo,carMemo4.Text);
            if idx>0 then // 차량번호가 있으면
            begin
              idx := 0;
              idx := pos(sday,carMemo4.Text);
              if idx > 0 then
              begin
                pkeyEdit.Text := carMemo4.Lines[0];
                multiChk := 0;
                Button7.Click;
              end;
            end;
          end;
        end;

        if memo1.Lines.Count > lineNo+19 then
        begin
          carMemo5.Lines.Add(copy(memo1.Lines[lineNo+20],51,20));
          carMemo5.Lines.Add(memo1.Lines[lineNo+22]);
          carMemo5.Lines.Add(memo1.Lines[lineNo+23]);

          if length(carMemo5.Text) > 10 then
          begin
            idx:= 0;
            idx:= pos(scarNo,carMemo5.Text);
            if idx>0 then // 차량번호가 있으면
            begin
              idx := 0;
              idx := pos(sday,carMemo5.Text);
              if idx > 0 then
              begin
                pkeyEdit.Text := carMemo5.Lines[0];
                multiChk := 0;
                Button7.Click;
              end;
            end;
          end;

        end;

        if memo1.Lines.Count > lineNo+24 then
        begin
          carMemo6.Lines.Add(copy(memo1.Lines[lineNo+25],51,20));
          carMemo6.Lines.Add(memo1.Lines[lineNo+27]);
          carMemo6.Lines.Add(memo1.Lines[lineNo+28]);

          if length(carMemo6.Text) > 10 then
          begin
            idx:= 0;
            idx:= pos(scarNo,carMemo6.Text);
            if idx>0 then // 차량번호가 있으면
            begin
              idx := 0;
              idx := pos(sday,carMemo6.Text);
              if idx > 0 then
              begin
                pkeyEdit.Text := carMemo6.Lines[0];
                multiChk := 0;
                Button7.Click;
              end;
            end;
          end;

        end;

        if memo1.Lines.Count > lineNo+29 then
        begin
          carMemo7.Lines.Add(copy(memo1.Lines[lineNo+30],51,20));
          carMemo7.Lines.Add(memo1.Lines[lineNo+32]);
          carMemo7.Lines.Add(memo1.Lines[lineNo+33]);

          if length(carMemo7.Text) > 10 then
          begin
            idx:= 0;
            idx:= pos(scarNo,carMemo7.Text);
            if idx>0 then // 차량번호가 있으면
            begin
              idx := 0;
              idx := pos(sday,carMemo7.Text);
              if idx > 0 then
              begin
                pkeyEdit.Text := carMemo7.Lines[0];
                multiChk := 0;
                Button7.Click;
              end;
            end;
          end;

        end;

        if multiChk = 1 then Button6.Click;
      end;
    end
    else
    begin
      SetCurrLine(Memo2, GetCurrLine(Memo2)+1);
      m2lineno := GetCurrLine(Memo2);
      Edit5.Text := memo2.Lines[m2lineno];
      carSerchStartBtn.Click;
    end;
  end;

  if sURL = 'http://ajsunhwa15.iptime.org/discount/carSearch.cs' then
  begin
    SetCurrLine(Memo2, GetCurrLine(Memo2)+1);
    m2lineno := GetCurrLine(Memo2);
    Edit5.Text := memo2.Lines[m2lineno];
    carSerchStartBtn.Click;
  end;

  if copy(sURL,39,16) = 'discountApply.cs' then
  begin
      sDay := datetostr(date);
      m2lineno := GetCurrLine(Memo2);
      scarNo := memo2.Lines[m2lineno];

      memo1.Text := WebBrowser1.OleObject.Document.documentElement.InnerHTML;
      idx:= pos('승인된 할인 정보가 없습니다.',memo1.Text);
      if idx>0 then // 미승인 내역 발견 시
      begin
        idx:= 0;
        idx := pos('차량번호: '+scarNo,memo1.Text);
        if idx > 0 then
        begin
          idx := 0;
          idx := pos('입차일시: '+sday,memo1.Text);
          if idx > 0 then
          begin
            idx := 0;
            idx := pos('javascript:onclickDiscount',memo1.Text);
            if idx > 0  then
            begin
              lineNo := SendMessage(Memo1.Handle, EM_LINEFROMCHAR, idx - 1, 0);
              sCarKey := memo1.Lines[lineNo];

              Edit4.Text := copy(sCarKey, pos('(',sCarKey)+2,20);
              edit7.Text := inttostr(strtoint(edit7.Text)+1);
              memo3.Lines.Add(scarNo);
              Button5.Click;
            end;
          end
          else
          begin
            Button4.Click;
          end;

        end
        else
        begin
          Button4.Click;
        end;
      end
      else // 승인 내역 발견 시
      begin
        edit8.Text := inttostr(strtoint(edit8.Text)+1);
        memo4.Lines.Add(scarNo);
        Button4.Click;
      end;

  end;

end;

procedure TForm1.SetCurrLine(Memo : TMemo; Value : integer);
begin
    if Value < 0 then Value := 0;
    if Value > Memo.Lines.Count then close;
    Memo.SelLength := 0;
    Memo.SelStart := Memo.Perform(EM_LINEINDEX, Value, 0);
end;

function TForm1.GetCurrLine(Memo : TMemo) : integer;
begin
  Result := Memo.Perform(EM_LINEFROMCHAR, Memo.SelStart, 0);
end;

end.
