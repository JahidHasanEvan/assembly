.MODEL SMALL
.STACK 100H

.DATA

.CODE

 MAIN PROC
    
    JMP HASH
  
  IF:   
    MOV AH, 2       ; Print *
    MOV DL, '*'
    INT 21H 

  ELSE: 
    MOV AH, 2       ; Print #
    MOV DL, '#'
    INT 21H 
    
    
 MAIN ENDP

END MAIN