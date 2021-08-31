assume cs:codesegment

codesegment segment

start: mov ax,2000h
	   mov ds,ax
	   MOV BX,0
	   mov al,[BX]
	   MOV BX,1
	   mov bl,[BX]
	   MOV BX,2
	   mov cl,[BX]
	   MOV BX,3
	   mov dl,[BX]
	   
	  mov ax,4c00h
	  int 21h

codesegment ends
end start