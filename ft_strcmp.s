	global	_ft_strcmp

section	.text
_ft_strcmp:
			xor		rcx, rcx
			jmp		cyrcle
cyrcle:
			mov		al, [rdi + rcx]
			mov		bl, [rsi + rcx]
			test	al, al
			jz		return
			test	bl, bl
			jz		return
			inc		rcx
			cmp		al, bl
			je		cyrcle

return:
			sub		al, bl
			ret