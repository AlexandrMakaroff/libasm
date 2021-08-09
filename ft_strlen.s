	global	_ft_strlen

section	.text
_ft_strlen:
			xor		rax, rax
			jmp		cyrcle
cyrcle:
			cmp		byte [rdi + rax], 0
			je		return
			inc		rax
			jmp		cyrcle
return:
			ret
