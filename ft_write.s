	extern	___error
	global	_ft_write

section .text
_ft_write:
		mov		rax, 0x2000004
		syscall
		jc		err
		ret
err:
		push	-1
		mov		rbx, rax
		call	___error
		mov		[rax], rbx
		pop		rax
		ret
