'this program makes ramdom numbers.

CLS
RANDOMIZE TIMER

'makes the numbers
INPUT n
FOR i = 1 TO n
    x = RND
    PRINT x
NEXT i
END

