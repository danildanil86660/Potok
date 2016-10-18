unit �����2;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Potok = class(TThread)
  private
    { Private declarations }
    index : integer;
    procedure UpdateLabel;
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Potok.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ Potok }
uses Unit1;

procedure Potok.UpdateLabel;
begin
  Form1.Label1.Caption:=IntToStr(index);
end;

procedure Potok.Execute;
begin
  { Place thread code here }
  index:=1;
  while index>0 do
  begin
    Synchronize(UpdateLabel);
    Inc(index);
    if index>100000 then
      index:=0;

  if terminated then exit;
  end;
end;
end.
