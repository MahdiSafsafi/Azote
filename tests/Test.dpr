program Test;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  Azote.Tests.AArch64.Adr in 'AArch64\Azote.Tests.AArch64.Adr.pas',
  Azote.Tests.AArch64.AdvSIMD in 'AArch64\Azote.Tests.AArch64.AdvSIMD.pas',
  Azote.Tests.AArch64.Aliases in 'AArch64\Azote.Tests.AArch64.Aliases.pas',
  Azote.Tests.AArch64.Arithmetic in 'AArch64\Azote.Tests.AArch64.Arithmetic.pas',
  Azote.Tests.AArch64.Atomic in 'AArch64\Azote.Tests.AArch64.Atomic.pas',
  Azote.Tests.AArch64.Basic in 'AArch64\Azote.Tests.AArch64.Basic.pas',
  Azote.Tests.AArch64.BitField in 'AArch64\Azote.Tests.AArch64.BitField.pas',
  Azote.Tests.AArch64.Branch in 'AArch64\Azote.Tests.AArch64.Branch.pas',
  Azote.Tests.AArch64.Crypto in 'AArch64\Azote.Tests.AArch64.Crypto.pas',
  Azote.Tests.AArch64.Elements in 'AArch64\Azote.Tests.AArch64.Elements.pas',
  Azote.Tests.AArch64.FP in 'AArch64\Azote.Tests.AArch64.FP.pas',
  Azote.Tests.AArch64.Logical in 'AArch64\Azote.Tests.AArch64.Logical.pas',
  Azote.Tests.AArch64.LSE in 'AArch64\Azote.Tests.AArch64.LSE.pas',
  Azote.Tests.AArch64.Memory in 'AArch64\Azote.Tests.AArch64.Memory.pas',
  Azote.Tests.AArch64.SIMD3Diff in 'AArch64\Azote.Tests.AArch64.SIMD3Diff.pas',
  Azote.Tests.AArch64.SIMDAddSub in 'AArch64\Azote.Tests.AArch64.SIMDAddSub.pas',
  Azote.Tests.AArch64.SIMDCompare in 'AArch64\Azote.Tests.AArch64.SIMDCompare.pas',
  Azote.Tests.AArch64.SIMDCopy in 'AArch64\Azote.Tests.AArch64.SIMDCopy.pas',
  Azote.Tests.AArch64.SIMDFPCompare in 'AArch64\Azote.Tests.AArch64.SIMDFPCompare.pas',
  Azote.Tests.AArch64.SIMDHalvingAddSub in 'AArch64\Azote.Tests.AArch64.SIMDHalvingAddSub.pas',
  Azote.Tests.AArch64.SIMDLdst in 'AArch64\Azote.Tests.AArch64.SIMDLdst.pas',
  Azote.Tests.AArch64.SIMDLdstMultiElement in 'AArch64\Azote.Tests.AArch64.SIMDLdstMultiElement.pas',
  Azote.Tests.AArch64.SIMDLdstOneElement in 'AArch64\Azote.Tests.AArch64.SIMDLdstOneElement.pas',
  Azote.Tests.AArch64.SIMDMaxMin in 'AArch64\Azote.Tests.AArch64.SIMDMaxMin.pas',
  Azote.Tests.AArch64.SIMDMisc in 'AArch64\Azote.Tests.AArch64.SIMDMisc.pas',
  Azote.Tests.AArch64.SIMDMov in 'AArch64\Azote.Tests.AArch64.SIMDMov.pas',
  Azote.Tests.AArch64.SIMDPosLdstMultiElement in 'AArch64\Azote.Tests.AArch64.SIMDPosLdstMultiElement.pas',
  Azote.Tests.AArch64.SIMDRoundShift in 'AArch64\Azote.Tests.AArch64.SIMDRoundShift.pas',
  Azote.Tests.AArch64.SIMDScalarCvt in 'AArch64\Azote.Tests.AArch64.SIMDScalarCvt.pas',
  Azote.Tests.AArch64.SIMDScalarDup in 'AArch64\Azote.Tests.AArch64.SIMDScalarDup.pas',
  Azote.Tests.AArch64.SIMDScalarShiftImm in 'AArch64\Azote.Tests.AArch64.SIMDScalarShiftImm.pas',
  Azote.Tests.AArch64.SIMDShift in 'AArch64\Azote.Tests.AArch64.SIMDShift.pas',
  Azote.Tests.AArch64.SIMDShiftLeftLong in 'AArch64\Azote.Tests.AArch64.SIMDShiftLeftLong.pas',
  Azote.Disassembler.AArch64 in '..\source\disasm\arch\AArch64\Azote.Disassembler.AArch64.pas',
  Azote.Printer.AArch64 in '..\source\print\arch\AArch64\Azote.Printer.AArch64.pas';

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
begin
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //tell the runner how we will log things
    //Log to the console window
    logger := TDUnitXConsoleLogger.Create(true);
    runner.AddLogger(logger);
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    runner.FailsOnNoAsserts := False; //When true, Assertions must be made during tests;

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
end.
