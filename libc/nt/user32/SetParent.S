#include "libc/nt/codegen.h"
.imp	user32,__imp_SetParent,SetParent,2357

	.text.windows
SetParent:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_SetParent(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	SetParent,globl
	.previous
