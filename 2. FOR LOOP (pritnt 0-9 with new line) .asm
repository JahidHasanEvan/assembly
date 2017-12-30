.MODEL SMALL
.STACK 100H
.DATA
    A DB 30H
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
   MOV CX,10
   MOV DL,A
   MOV AH,2

TOP:
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    INC A 
    MOV DL,A
    LOOP TOP
    
    
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN