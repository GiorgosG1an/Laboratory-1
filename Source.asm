title Laboratory 1: Evaluating Simple Arithmetic Expressions
include Irvine32.inc
	p equ 8d
.data
	x SDWORD 16d
	y SDWORD 154d
	z  SDWORD -17d
	w SDWORD ?



.code
main PROC
	                ;w=(x+y)-(50 + x + y + z - p)
	mov eax , x     ; eax=x
	add eax , y     ;eax=x+y
	mov ebx , 50d   ;ebx=50
	add ebx , eax   ; ebx=50+x+y
	add ebx , z     ;ebx=50+x+y+z
	sub ebx , p     ;ebx=50+x+y+z-p
	sub eax, ebx    ; eax=(x+y)-(50 + x + y + z - p)
	mov w, eax      ;w=(x+y)-(50 + x + y + z - p)
	call WriteInt   ;Must print -25


	exit
main ENDP
END main