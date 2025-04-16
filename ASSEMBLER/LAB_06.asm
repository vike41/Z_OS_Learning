********************** Lab instructions ******************************
* The comment lines below direct you to write different ADD
* or SUBTRACT instructions.
* When you want to check your instructions, submit the job.
* This job abends with S0C1 (operation exception). This is intended.
* On abend, the system displays the contents of registers.
* This lets you check if your instructions worked as expected.
***********************************************************************
* Part 1: "Original"instructions
* The first three instructions have been written for you:
* Load a fullword containing 40960 (X'A000') into R2 low half
          L    2,=F'40960'
* Add a fullword containing 2730 (X'AAA') to R2 low half
          A    2,=F'2730' 40960+2730=43690 (X'AAAA')
* Copy R2 to R3
          LR   3,2
* Subtract a halfword containing 8738 (X'2222') from R3 low half
          SH   3,=H'8738' 43690-8738=34952 (X'8888')
* the contents of R2 and R3
***********************************************************************
* Part 2: Same as above, but using IMMEDIATE OPERAND
* instructions (note registers are different)
* Load a fullword containing 40960 (X'A000') into R4 low half
          LFI  4,40960
*
* Add a fullword containing 2730 (X'AAA') to R4 low half
          AFI  4,2730

* Copy R4 to R5 (use LR)
          LR 5,4
*
* Subtract a halfword containing 8738 (X'2222') from R5 low half
          AHI 5,-8738
*
***********************************************************************
