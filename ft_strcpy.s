	global	_ft_strcpy
	extern ___error

section	.text
_ft_strcpy:
			cmp		rdi, 0
			je		return
			cmp		rsi, 0
			je		return
			xor		rcx, rcx
cyrcle:
			mov		dl, byte [rsi + rcx]
			mov		byte [rdi + rcx], dl
			inc		rcx
			cmp		dl, 0
			jne		cyrcle

return:
			mov		rax, rdi
			ret
