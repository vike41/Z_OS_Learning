//* LAB101 JOB 1EZ34G12,'EZ341G',MSGLEVEL=(1,1),
//* CLASS=E,MSGCLASS=Q,NOTIFY=&SYSUID,REGION=0M
//* LOAD instructions
//* JCLLIB ORDER=(&SYSUID..EZ34.PROCLIB)
//*STEP1 EXEC PROC=HLLASMA
//*ASM.SYSIN DD *

********************** Lab instructions ******************************
* The comment lines below direct you to write different LOAD
* instructions.
* When you want to check your instructions, submit the job.
* This job abends with S0C1 (operation exception). This is intended.
* On abend, the system displays the contents of registers.
* This lets you check if your LOAD instructions worked as expected.

***********************************************************************
* Part 1: "Original" instructions
* The first three LOAD instructions have been written for you:
* Load a fullword containing 170 (X'AA') into R2 low half
          L 2,=F'170'
* Load a halfword containing 4095 (X'0FFF') into R2 low half
          LH 3,=H'4095'
* Copy R3 low half to R4 low half
          LR 4,3
          DC   H'0' Invalid opcode causes abend S0C1

* Part 2: Using literal second operands (as shown above),
* code LONG DISPLACEMENT instructions to:
* Load a fullword containing 187 (X'BB') into R5 low half
          LY   5,=F'187'
*
* Load a halfword containing 2048 (X'800') into R6 low half
          LHY   6,=H'2048'
*
* Part 3: Using literal second operands (as shown above),
* code RELATIVE ADDRESSING instructions to:
* Load a fullword containing 1024000 (X'FA000') into R7 low half
          LRL   7,=F'1024000'
*
* Load a halfword containing 255 (X'FF') into R8 low half
          LHRL   8,=H'255'
          DC   H'0'                    Invalid opcode causes ABEND S0C1
********************** End program *********************************
