 .MODEL SMALL
 .STACK 100H
 .DATA
 .CODE
 
  MAIN PROC    
    MOV AL, 4
    
    AND AL, 1 ; 0000 0001
    
    CMP AL, 1 ; AL == 1 ?
    JE L2
    
  L1:
    MOV DL, '*'
    MOV AH, 2
    INT 21H
    JMP L3
    
  L2:
    MOV DL, '#'
    MOV AH, 2
    INT 21H
  L3:
    
    
  MAIN ENDP
 
 END MAIN