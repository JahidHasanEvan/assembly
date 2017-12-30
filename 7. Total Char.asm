.MODEL SMALL
.STACK 100H
.DATA  
    CR EQU 0DH
    LF EQU 0AH
    MSG DB CR,LF,'Total # of Characters: $' 
      
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
       
    MOV BL,0    ; BL counts the number of character
    MOV AH,1    ; takes input each character
    INT 21H
    
WHILE_:
    CMP AL,CR     ; if 'carriage return' found
    JE END_WHILE  ; stop counting  
    
    INC BL     ; else count++
    INT 21H    ; take next character input
    
    JMP WHILE_
END_WHILE:

    LEA DX,MSG ; print msg
    MOV AH,9
    INT 21H  
    
    MOV AH,2   ; print count: saved in BL
    ADD BL,30H  
    MOV DL,BL
    INT 21H
      
MOV AH,4CH  ; Return to DOS
INT 21H

MAIN ENDP
END MAIN