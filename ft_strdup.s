		global	_ft_strdup
		extern	_ft_strlen
		extern	_malloc
		extern	_ft_strcpy
		
section .text
_ft_strdup:
		push	rdi
		call	_malloc
		test	rax, rax
		jz		return
		mov		rdi, rax
		pop		rsi
		call	_ft_strcpy
		ret
		
return:
		pop		rdi
		ret