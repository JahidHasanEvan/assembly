.MODEL SMALL

.STACK 100H 

.DATA
CR EQU 0DH
LF EQU 0AH

MSG1 DB 'ENTER NUMBER (1,2,3 OR 4): $' 
MSG2 DB CR,LF,'THE NUMBER IS ODD $'
MSG3 DB CR,LF,'THE NUMBER IS EVEN $'  
MSG4 DB CR,LF,'THE NUMBER IS NOT IN 1-4 $'
  
    
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
   
    CMP AL,1
    JE ODD
    CMP AL,3
    JE ODD
    
    CMP AL,2
    JE EVEN
    CMP AL,4
    JE EVEN
    JMP OTHERWISE
    
ODD:
    LEA DX,MSG2  
    JMP PRINT

EVEN:
    LEA DX,MSG3
    JMP PRINT     
    
OTHERWISE:  
    LEA DX,MSG4        
      
PRINT:    
    MOV AH,9
    INT 21H 
      
    
    MOV AH,4CH
    INT 21H
MAIN ENDP

END MAIN