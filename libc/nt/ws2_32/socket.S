#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_socket,socket,23

	.text.windows
__sys_socket_nt:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_socket(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	__sys_socket_nt,globl
	.previous
