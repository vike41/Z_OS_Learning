***********************************************************************
* Part 1: Causing a overflow exception
* First, we set the PSW program mask to cause an exception
* if there is an overflow
          LHI 0,-1           Set R0 to X'FFFFFFFF'
          SPM 0              Set PSW program mask
* Load 1,000,000,000 into R2 low half
          LGFI 2,1000000000    Was wrong LGI Double instead fullword
* Add R2 low half to itself 4 times
          ARG 2,2 2,000,000,000         X'077359400'  same
          ARG 2,2 4,000,000,000         X'0EE6B2800'
          ARG 2,2 8,000,000,000         X'1DCD65000'
          ARG 2,2 16,000,000,000        X'3B9ACA000'

* Part 2: Fix the problem
* Go back to Part 1 and replace the LFI and AR
* instructions by their 64-bit variants
* Submit this job again
* Question 4: What is the Abend code?
* Question 5: What does R2 contain?


***********************************************************************
