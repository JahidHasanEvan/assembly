
.MODEL SMALL
.STACK 100H

.DATA

.CODE
 
 
 MAIN PROC
    
    MOV AH, 1  ; AH = 1 (input)
    INT 21H    ; Call 21st interrept routine    
    MOV BL, AL ; Save input to BL
    
    MOV AH, 1  ; AH = 1 (input)
    INT 21H    ; Call 21st interrept routine    
    MOV CL, AL ; Save input to CL
    
    ADD BL, CL ; BL = BL + CL
    SUB BL, 30H    
    
    
    MOV DL, BL ; Output from DL        
    MOV AH, 2  ; AH = 2 (output)
    INT 21H
       
       
 MAIN ENDP 
END MAIN  
