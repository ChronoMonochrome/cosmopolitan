#include "libc/nt/codegen.h"
.imp	MsWSock,__imp_AcceptEx,AcceptEx,0

	.text.windows
AcceptEx:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_AcceptEx(%rip),%rax
	jmp	__sysv2nt8
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	AcceptEx,globl
	.previous
