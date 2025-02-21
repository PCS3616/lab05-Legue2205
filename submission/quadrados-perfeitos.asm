@ /000
START   LV /2 
        AD & /8
        MM & /6 ; saves in future position instruction M(9) 10I
        LD N2
        AD  IMPAR
        MM /0FE ; instrução alterada +2 cada vez
        LV /2
        AD IMPAR
        MM IMPAR
        LV =64
        SB N2
        JN & /4
        JP /0
        HM /0


@ /050
IMPAR   K /1
I       K /0
N2      K /0