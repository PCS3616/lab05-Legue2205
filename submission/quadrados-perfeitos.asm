@ /000
START   LV /2 
        AD /A
        MM /A ; saves in future position instruction M(9) 10I
        LD N2
        AD IMPAR
        MM /000 ; instrução alterada +2 cada vez
        LV /2
        AD IMPAR
        MM IMPAR
        LV =126
        SB IMPAR
        JN /1C
        JP /0
        HM /0


@ /050
IMPAR   K /1
I       K /0
N2      K /0