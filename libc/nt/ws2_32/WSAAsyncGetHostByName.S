#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_WSAAsyncGetHostByName,WSAAsyncGetHostByName,103

	.text.windows
WSAAsyncGetHostByName:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_WSAAsyncGetHostByName(%rip),%rax
	jmp	__sysv2nt6
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	WSAAsyncGetHostByName,globl
	.previous
