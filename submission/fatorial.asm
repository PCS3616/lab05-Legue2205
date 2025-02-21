@ /000
LV /001 ; AC = 1
AD /100 ; AC = N + 1
MM /110 ; Mem[0110] = N + 1
SC /300 ; sub-rotina em 0300
HM /000 ; return 0

@ /200
N K /100
RES K /102
I K /104

@ /300
JP /000 ; início da sub-rotina
LV /001 ; AC = 1
MM RES ; Mem[0102] = AC = 1, N!
MM I ; Mem[0104] = AC = 1, index do loop

LD N ; AC = N
SB RES ; AC = N-1
JN /21E ; if(N-1 < 0) ou seja N = 0, vai 021E, else

LD I ; AC = i
ML RES ; AC *= Mem[0102] --> AC = 1*2*...*i
MM RES ; Mem[0102] = AC --> N! = 1*2*...*i
LV /001 ; AC = 1
AD I ; AC += Mem[0104] --> AC = i+1
MM I ; Mem[0104] = AC --> i = i+1

SB /110 ; AC -= Mem[0110] --> AC = i-(N+1)
JN /20E ; if(i-N < 0), repeat
LD RES ; AC = N!
RS /300 ; return N! em 102
