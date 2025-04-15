********************** Program data ********************************
* Part 1: Code LONG DISPLACEMENT instructions to:
* Load the doubleword labelled DW1 into R2
          LG    2,DW1
*
* Load the fullword labelled F1 into R3 (64-bit)
          LGF   3,F1
*
* Load the halfword labelled H1 into R4 (64-bit)
          LGH   4,H1
*
* Part 2: Code RELATIVE ADDRESSING instructions to:
* Load the doubleword labelled DW1 into R5
          LGRL  5,DW1
*
* Load the fullword labelled F1 into R6 (64-bit)
          LGFRL 6,F1
*
* Load the halfword labelled H1 into R7 (64-bit)
          LGHRL 7,H1
*
* Part 3: Code IMMEDIATE OPERAND instructions to:
* Load a fullword containing -131072 into R8 (64-bit)
          LGFI  8,-131072
*
* Load a halfword containing 0 into R9 (64-bit)
          LGHI  9,0

DW1       DC   FD'100 000 000 000'
F1        DC   F'-1'
H1        DC   H'-32768'

********************** End program *********************************
