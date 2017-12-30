.MODEL SMALL
.STACK 100H

.DATA
VAL DB 4  ; int VAL = 4
I DB ?    ; int i ;

.CODE
 MAIN PROC
   MOV AX, @DATA
   MOV DS, AX      ; DS = data segment register   
   
   MOV AH, 1
   INT 21H
   MOV BL, AL
   MOV I, BL
   
   MOV CL, VAL
   ADD BL, CL   
   
   MOV DL, ' '
   MOV AH, 2
   INT 21H
   
   MOV DL, BL
   MOV AH, 2
   INT 21H
 MAIN ENDP 

END MAIN
