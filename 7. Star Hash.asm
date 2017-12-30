.MODEL SMALL
.STACK 100H

.DATA

.CODE

 MAIN PROC
    MOV AL, 5 ;AL = 0 
    
    CMP AL, 0
    JG ELSE ; Jump if not equal 
  
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