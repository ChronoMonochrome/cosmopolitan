#include "libc/nt/codegen.h"
.imp	user32,__imp_GetClientRect,GetClientRect,1815

	.text.windows
GetClientRect:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_GetClientRect(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	GetClientRect,globl
	.previous
