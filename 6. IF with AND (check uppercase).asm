.MODEL SMALL

.STACK 100H 

.DATA
CR EQU 0DH
LF EQU 0AH

MSG1 DB 'ENTER CHARACTER: $' 
MSG2 DB CR,LF,'UPPER CASE $'
MSG3 DB CR,LF,'NOT UPPER CASE $'  
  
    
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS, AX 
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    
	;;UPPER CASE IF CHAR>='A' AND CHAR<='Z'
    CMP AL,'A'
    JL NOT_UPPER
    CMP AL,'Z'
    JG NOT_UPPER
    
    LEA DX,MSG2 
    JMP PRINT
               
NOT_UPPER:
    LEA DX,MSG3               
            
      
PRINT:    
    MOV AH,9
    INT 21H 
      
    
    MOV AH,4CH
    INT 21H
MAIN ENDP

END MAIN