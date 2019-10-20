.model small
.data
A DB 5

.code        
START:
      MOV AX,@DATA
      MOV DS,AX
      MOV AH,00
      MOV AL,A
   L1:DEC A
      MUL A
      MOV CL,A
      CMP CL,01
      JNZ L1
      MOV AH,4CH
      INT 21H 

END START
