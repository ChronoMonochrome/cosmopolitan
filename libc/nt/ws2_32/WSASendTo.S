#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_WSASendTo,WSASendTo,99

	.text.windows
WSASendTo:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_WSASendTo(%rip),%rax
	jmp	__sysv2nt10
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	WSASendTo,globl
	.previous
