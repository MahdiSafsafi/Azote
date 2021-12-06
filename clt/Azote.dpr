program Azote;

{$IFNDEF FPC}
{$APPTYPE CONSOLE}
{$ENDIF}

{$R *.res}


uses
  {$IFNDEF FPC}System.{$ENDIF}SysUtils,
  Azote.Disassembler.AArch64 in '..\source\disasm\arch\AArch64\Azote.Disassembler.AArch64.pas',
  Azote.Printer.AArch64 in '..\source\print\arch\AArch64\Azote.Printer.AArch64.pas';

var
  Options: TAzoteOptions = [];

procedure Decode(OpCode: UInt32);
var
  Insn: TA64Instruction;
  S: string;
begin
  FillChar(Insn, SizeOf(TA64Instruction), #00);
  Insn.OpCode := OpCode;
  Insn.Options := Options;
  DecodeInstruction(Insn);
  S := Format('0x%0.8X: %s', [OpCode, Insn.Syntax]);
  Writeln(S);
end;

procedure DoHelp();
begin
  Writeln('*******************************************');
  Writeln('*                                         *');
  Writeln('* Azote AArch64 disassembler.             *');
  Writeln('*                                         *');
  Writeln('* https://github.com/MahdiSafsafi/Azote   *');
  Writeln('*                                         *');
  Writeln('*******************************************');
  Writeln('');

  Writeln('Usage: Azote [Command] [Options] [<OpCode>...]');
  Writeln('Command:');
  Writeln('-h = Display help.');
  Writeln('-d = Disasm.');
  Writeln('Options:');
  Writeln('-L = Little Endian.');
  Writeln('-B = Big Endian.');
end;

type
  TCommands = set of (cdDisasm);

var
  I: Integer;
  Param: string;
  {$IFDEF FPC}
  OpCodes: TStringArray;
  {$ELSE}
  OpCodes: TArray<string>;
  {$ENDIF}
  S, E: string;
  OpCode: UInt32;
  Commands: TCommands;

begin
  Commands := [];
  try
    if ParamCount > 0 then
    begin
      for I := 1 to ParamCount do
      begin
        Param := ParamStr(I);
        if (Param = '-h') then
        begin
          DoHelp();
          exit;
        end
        else if (Param = '-d') then
        begin
          Include(Commands, cdDisasm);
          Continue;
        end
        else if (Param = '-L') then
        begin
          Include(Options, optLittleEndian);
          Continue;
        end
        else if (Param = '-B') then
        begin
          // Default.
          Continue;
        end;

        if (cdDisasm in Commands) then
        begin
          OpCodes := Param.Split([' ', ',']);
          for E in OpCodes do
          begin
            S := E.Replace('0x', '');
            OpCode := StrToInt('$' + S);
            Decode(OpCode);
          end;
        end;
      end;
    end
    else
    begin
      DoHelp;
      Readln;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
