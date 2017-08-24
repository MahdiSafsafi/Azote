program Benchmark;

{$APPTYPE CONSOLE}

{$IFNDEF MSWINDOWS}
{$MESSAGE ERROR 'This app can only run on Windows.'}
{$ENDIF MSWINDOWS}

{$R *.res}
{$I ..\..\Source\Config.Inc}


uses
  System.SysUtils,
  System.Diagnostics,
  System.TimeSpan,
  System.Win.Registry,
  WinApi.Windows,
  Tests in 'Tests.pas',
  Azote.Disassembler.AArch64 in '..\..\source\disasm\arch\AArch64\Azote.Disassembler.AArch64.pas',
  Azote.Printer.AArch64 in '..\..\source\print\arch\AArch64\Azote.Printer.AArch64.pas';

function GetProcessorNameString: string;
var
  Reg: TRegistry;
begin
  Result := '';
  Reg := TRegistry.Create(KEY_QUERY_VALUE);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly('\Hardware\Description\System\CentralProcessor\0') then
      Result := Reg.ReadString('ProcessorNameString');
  finally
    Reg.Free;
  end;
end;

var
  TimeSpan: TTimeSpan;
  Stopwatch: TStopwatch;
  I: Integer;
  S: string;
  ProcessorName: string;

const
{$IFDEF CPUX64}
  CPUX = 'x64';
{$ELSE !CPUX64}
  CPUX = 'x86';
{$ENDIF CPUX64}

{$IFDEF NEED_PRINTER}
  Printing = 'Enabled';
{$ELSE !NEED_PRINTER}
  Printing = 'Disabled';
{$ENDIF NEED_PRINTER}

{$IFDEF NEED_ALIAS}
  Alias = 'Enabled';
{$ELSE !NEED_ALIAS}
  Alias = 'Disabled';
{$ENDIF NEED_ALIAS}


begin
  ProcessorName := GetProcessorNameString;

  Writeln(Format('Compiled options for Azote(%s):', [CPUX]));
  Writeln(Format('Printing = %s.', [Printing]));
  Writeln(Format('Alias    = %s.', [Alias]));

  Writeln('--------------------------------------------');

  Stopwatch := TStopwatch.Create;
  Stopwatch.Reset;
  Stopwatch.Start;
  try
    for I := 1 to 1000 do
     Test;
    Stopwatch.Stop;
    TimeSpan := Stopwatch.Elapsed;
    S := TimeSpan;
    Writeln(Format('On ''%s'', I decoded ''%d'' instruction in ''%s''.',
      [ProcessorName, NumberOfInstruction, S]));
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
