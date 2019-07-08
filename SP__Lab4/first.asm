.586
.model flat,c 
 PUBLIC calculation 
.data
	A   dd ?
	C1  dd ?
	D   dd ?
	B   dd ?
	cons4  dd 4.0
	cons12 dd 12.0
	cons1  dd 1.0
	consm2 dd -2.0
	K53 dd 53.0
	RES	dd ?
.code
	calculation proc
	push ebp
	mov ebp,esp
	mov eax,[ebp+8]
	mov A, eax
	mov eax,[ebp+12]
	mov C1, eax
	mov eax,[ebp+16]
	mov D, eax
	mov eax,[ebp+20]
	mov B, eax
	finit
	fld C1
	fcomp D
	fstsw ax
	sahf
	jbe els1  ;ÿךשמ C<=D 
	fld C1
	fdiv cons4
	fadd A
	FPTAN
	fdiv
	fld cons12
	fmul D
	fsub
	fld A
	fmul B
	fsub cons1
	fdiv
jmp rez
els1:	fld consm2
	fmul C1
	fld A
	fdiv D
	FSIN
	fsub
	fadd K53
	fld A
	fdiv cons4
	fsub B
	fdiv
rez: pop ebp
ret
calculation endp
end
