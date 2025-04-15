********************** Program data ********************************
* Replace each of the comment lines below by statements that:
* Define field labelled HI, containing the characters 'Hello'
HI        DC   C'Hello'
*
* Same as above, but this time
* the label is HI2 and the field is 10 bytes long
HI2       DC   CL10'Hello'
* Use the Length (L) attribute to define a 4-byte field
* without label and containing the characters 'XXXYYYZZZ'
* Q1. What happens?
          DC   CL4'XXXYYYZZZ'
*
* Define a field labelled C1 containg the charater '*'
* repeated 8 times
C1        DC   8C('*')
*
* Define a field labelled C2 containg 8 charaters '*'
C2        DC   C'********'
* Define a 2-byte field without label
* repeated 3 times and
* containg one charater '*'
          DC   3CL2('*')
*
* Define a field labelled X1, containing hexadecimal A000
X1        DC   X'A000'
*
* Define a halfword labelled H1, containing decimal -24576
H1        DC   H'-24576'
*
* Define a field labelled X2, containing hexadecimal 1A2B
X2        DC   H'1A2B'
*
* Define a bit string labelled B2, with the same contents as X2
B2        DC   B'0001 1010 0010 1011'
*
* Define a one-byte bit string labelled B3,
* containing B'1111 0000' and aligned on fullword boundary
          DS   0F            Force fullword aligmend
B3        DC   B'1111 0000'
********************** End program *********************************
