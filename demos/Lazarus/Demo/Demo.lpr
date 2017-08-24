program Demo;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp ,
  Azote.Disassembler.AArch64 in '..\..\..\source\disasm\arch\AArch64\Azote.Disassembler.AArch64.pas',
  Azote.Printer.AArch64 in '..\..\..\source\print\arch\AArch64\Azote.Printer.AArch64.pas';
type

  { TDemo }

  TDemo = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ TDemo }

procedure TDemo.DoRun;
var
  ErrorMsg: String;
  Insn: TA64Instruction;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h', 'help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h', 'help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }
  FillChar(Insn,SizeOf(Insn),#00);
  Insn.OpCode:= $0B8754C5;
  DecodeInstruction(Insn);
  WriteLn(Format('0x%.08X: %s',[Insn.OpCode, Insn.Syntax]));
  ReadLn;
  // stop program loop
  Terminate;
end;

constructor TDemo.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TDemo.Destroy;
begin
  inherited Destroy;
end;

procedure TDemo.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: TDemo;
begin
  Application:=TDemo.Create(nil);
  Application.Run;
  Application.Free;
end.

