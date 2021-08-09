	extern	___error
	global	_ft_read

section .text
_ft_read:
		mov		rax, 0x2000003
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