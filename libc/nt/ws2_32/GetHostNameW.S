#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_GetHostNameW,GetHostNameW,33

	.text.windows
GetHostName:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_GetHostNameW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	GetHostName,globl
	.previous
