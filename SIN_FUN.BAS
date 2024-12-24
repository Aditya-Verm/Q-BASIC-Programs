'This program plots the SIN function.


CLS
PRINT "This program plots the SIN function"
PRINT
INPUT "Give xmin"; xmin
INPUT "Give xmax"; xmax
INPUT "Give No. of Points < 500 "; n
h = (xmax - xmin) / n
DIM x(500), y(500)

'calculates the x & y values
FOR i = 0 TO n
    x(i) = xmin + i * h
    y(i) = SIN(x(i))
    PRINT x(i), y(i)
NEXT
PRINT

'find the y min and the max
ymin = y(0)
ymax = y(0)
FOR i = 1 TO n
    IF y(i) < ymin THEN
        ymin = y(i)
    END IF
    IF y(i) > ymax THEN
        ymax = y(i)
    END IF
NEXT i

PRINT ymin, ymax
SCREEN 12

VIEW (20, 20)-(620, 420)
WINDOW (xmin, ymin)-(xmax, ymax)
LINE (xmin, ymin)-(xmax, ymax), , B
LINE (xmin, 0)-(xmax, 0)
LINE (0, ymin)-(0, ymax)

'Makes the line.
FOR i = 0 TO n - 1
    LINE (x(i), y(i))-(x(i + 1), y(i + 1))
NEXT i
END

