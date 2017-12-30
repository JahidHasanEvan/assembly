.MODEL SMALL
.STACK 100H
.DATA  
    CR EQU 0DH
    LF EQU 0AH
    MSG DB CR,LF,'TOTAL CHARACTER TYPED: $'
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV CL,0
    MOV AH,1
    INT 21H
    
WHILE_:
    CMP AL,0DH
    JE END_WHILE
    INC CL
    INT 21H
    JMP WHILE_
END_WHILE:

    LEA DX,MSG
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    ADD CL,30H  
    MOV DL,CL
    INT 21H
    
    
    
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN