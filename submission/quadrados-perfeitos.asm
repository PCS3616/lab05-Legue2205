@ /000
START   LV /2 
        AD ALTER
        MM ALTER ; saves in future position instruction M(9) 10I
        LD N2
        AD IMPAR
ALTER   MM /000 ; instrução alterada +2 cada vez
        LV /2
        AD IMPAR
        MM IMPAR
        LV =126
        SB IMPAR
        JN FINITO
        JP START
FINITO  HM /0


@ /050
IMPAR   K /1
N2      K /0