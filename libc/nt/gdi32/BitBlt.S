#include "libc/nt/codegen.h"
.imp	gdi32,__imp_BitBlt,BitBlt,1034

	.text.windows
BitBlt:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_BitBlt(%rip),%rax
	jmp	__sysv2nt10
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	BitBlt,globl
	.previous
