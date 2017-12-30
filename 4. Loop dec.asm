 .MODEL SMALL
 .STACK 100H
 .DATA
 .CODE
 
  MAIN PROC
    
   MOV BL, 5
   
   
   L: 
     MOV AH, 2     ; Print *
     MOV DL, '*'
     INT 21H
     
     DEC BL        ; BL--
     CMP BL, 0     ; If BL > 0
     JG L              ; go to L

 
 
  MAIN ENDP
 
 END MAIN