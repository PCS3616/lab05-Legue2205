@ /0
START   GD /000
        SB C3030
        MM FIRST
        DV BASE
        ML BASE
        MM F1D
        LD FIRST
        SB F1D
        MM F1D
        
        GD /000
        GD /000
        MM SECOND
        DV BASE
        ML BASE
        MM S1D
        LD SECOND
        SB S1D
        MM S1D
        LV /9
        SB F1D
        SB S1D
        JN ALTER
        LD SECOND
        JP MOVE
ALTER   LD SECOND
        SB V000A
        AD V0100
MOVE    AD FIRST
        PD /100
        HM /0

    


        



@ /100
FIRST   K /0
SECOND  K /0
RES     K /0
C3030   K /3030
BASE    K /10
F1D     K /0
S1D     K /0
V000A   K /000A
V0100   K /0100