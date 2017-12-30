.MODEL SMALL

.STACK 100H 

.DATA
CR EQU 0DH
LF EQU 0AH

NUM1 DB ?
NUM2 DB ?
GREATER DB ?  

MSG1 DB 'ENTER NUMBER 1: $'
MSG2 DB CR,LF,'ENTER NUMBER 2: $'
MSG3 DB CR,LF,'GREATER IS: $'  
    
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS, AX 
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    
    SUB AL,30H 
    MOV NUM1,AL  
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
       
    MOV AH,1
    INT 21H
            
    SUB AL,30H        
    MOV NUM2,AL 
    
    MOV AL,NUM1
    CMP AL,NUM2
    JL ELSE_	;IF NUM1<NUM2 THEN JUMP TO ELSE_
    MOV GREATER,AL
    JMP PRINT
    
ELSE_:
    MOV AL,NUM2
    MOV GREATER,AL
    
PRINT:     
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,GREATER  
    ADD DL,30H
    INT 21H
   
    
    MOV AH,4CH
    INT 21H
MAIN ENDP

END MAIN