.model small
.data
NUM1 DW 000AH
  NUM2 DW 0004H
  GCD DW ?
.code
  START: MOV AX,@DATA   
         MOV DS,AX     
         MOV AX,NUM1   
         MOV BX,NUM2   
  UP: CMP AX,BX        
      JE EXIT          
      JB EXCG          
                       
  UP1: MOV DX,0H       
       DIV BX          
       CMP DX,0        
       JE EXIT         
       MOV AX,DX       
       JMP UP          
  EXCG:XCHG AX,BX     
       JMP UP1        
  EXIT:MOV GCD,BX     
       MOV AH,4CH
       INT 21H
 
  END START
