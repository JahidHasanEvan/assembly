.MODEL SMALL
.STACK 100H
.DATA
.CODE

 MAIN PROC
    MOV AL, 2AH ;AL = 0
    MOV BL, 57H 
    
    ADD AL, BL
    JC ELSE ; Jump if not equal 
  
  IF:   
    MOV AH, 2       ; Print *
    MOV DL, '*'
    INT 21H 
    JMP EXIT
  
  ELSE: 
    MOV AH, 2       ; Print #
    MOV DL, '#'
    INT 21H 
  
  EXIT:    
 MAIN ENDP

END MAIN