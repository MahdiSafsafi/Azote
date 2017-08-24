# Azote
Azote is the faster and lightweight disassembler for AArch64.
# Features
- Extremely fast and tinny in size.
- Supports all instructions of ARMv8.3 including (SIMD, NEON, FP16,...).
- No dependencies on platform specific APIs (it should run on all platforms).
- Supports switching to aliases instructions.
- Supports FPC and Delphi. 
- For each decoded instruction, it provides all the necessary info for a good analysis. 
- Built with unique feature "Patches" which explains why it's fast and lightweight.

# Fast & lightweight
## ADT
Azote decodes instructions based on highly optimized arbitrary decision tree (ADT) which was generated using the same algorithm uses by GNU Binutils. However, I improved it to fits Azote needs as follow:
- Uses single instruction for testing (only test) rather than three instruction (mov,shift and test). As a result, the generated code remains small and faster.
- When the last node is not sealed, the tree shots the instruction that has the highest number of set bits of its mask. As a result, the disasm guarantees that it will never confuse between two similar instruction. Also, when disassembling, it will never waste time to do semantic checks that allow to distinguish between those two instructions.
- The same rules above applies to aliases instructions.

## Patches
While current available solutions push instructions variants into their tables and decode operands based on a search of pattern match between the instruction and the variant. Azote does not do that! Azote decodes operands against the standard decoder and applies patches to fix the result (patches were already generated on the fly). As a result:
- Azote's table remains small because it does not contain instruction variants.
- Operands decoding is highly faster because it never wastes time to iterate through variants and tries to match variant's pattern.

# Benchmarks

Decoding 7 million random instructions without printing:
![bm1](https://github.com/MahdiSafsafi/Azote/blob/master/ss/bm1.PNG)

Decoding 7 million random instructions with printing:
![bm2](https://github.com/MahdiSafsafi/Azote/blob/master/ss/bm2.PNG)

As you can see, it's very fast to decode instructions. However, printing instructions slow down the process and that because Azote uses Delphi string instead of PChar. I believe I can improve the process up to [40%-60%] if I switch to PChar. But for now, I will stick with string type.

# Tests
While Azote currently is in beta state, it was able to validate mostly all LLVM tests (95%). Because tests were automatically converted from LLVM to DUnitX, some of them escaped from the patterns match. Also, I got some false positive result with few of them (e.g: ins vs mov instruction where Azote always decodes the preferred form 'mov').

# Supported compilers and platforms.
- Azote was designed to be a cross-platform library. For now, I tested it only on windows.
- It compiles under Delphi and FPC: Tested on FPC(3.0.2) and Delphi(10.2).

Please give feedback on this area. 

