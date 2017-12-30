 .MODEL SMALL
 .STACK 100H
 .DATA
 .CODE
 
  MAIN PROC
    
   MOV AH, 1
   INT 21H 
   
   XOR BX, BX ; CLEAR BX
   MOV BL, AL ; BL <- input
   SUB BL, 30H   
        
     ; CX= COUNT register
   MOV CX, BX   ; HOW MANY ITERATIONS
   
   L: 
     MOV AH, 2
     MOV DL, '*'
     INT 21H    
   LOOP L 
 
 
  MAIN ENDP
 
 END MAIN