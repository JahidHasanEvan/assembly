 .MODEL SMALL
 .STACK 100H
 .DATA
 .CODE
 
  MAIN PROC
    
   MOV BL, 1
   
   
   L: 
     MOV AH, 2     ; Print *
     MOV DL, '*'
     INT 21H
     
     INC BL        ; BL++
     CMP BL, 5     ; If BL <= 5
     JLE L              ; go to L

 
 
  MAIN ENDP
 
 END MAIN