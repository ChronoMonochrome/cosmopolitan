#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_WSARecv,WSARecv,91

	.text.windows
__WSARecv:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_WSARecv(%rip),%rax
	jmp	__sysv2nt8
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	__WSARecv,globl
	.previous
