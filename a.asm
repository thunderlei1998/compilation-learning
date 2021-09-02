assume cs:code,ss:stack,ds:data1,ds:data2
data1 segment
dw 1,2,3,4,5,6,7,8,9,0ah,0bh,0ch,0dh,0eh,0fh,0ffh
data1 ends
data2 segment
dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
data2 ends
stack segment
dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
stack ends

code segment

start:  mov ax,stack
		mov ss,ax
		mov sp,32
		mov ax,data1
		mov ds,ax
		push ds:[0]
		push ds:[2]
		push ds:[4]
		push ds:[6]
		push ds:[8]
		push ds:[10]
		push ds:[12]
		push ds:[14]
		mov ax,data2
		mov ds,ax
		pop ds:[0]
		pop ds:[2]
		pop ds:[4]
		pop ds:[6]
		pop ds:[8]
		pop ds:[10]
		pop ds:[12]
		pop ds:[14]
		
		mov ax,4c00h
		int 21h
		
code ends
end start