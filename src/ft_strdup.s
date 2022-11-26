section	.text
	global _ft_strdup

extern	_ft_strlen
extern	_ft_memcpy

_ft_strdup:
	call	_ft_strlen
