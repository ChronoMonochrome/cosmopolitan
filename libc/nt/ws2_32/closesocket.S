#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_closesocket,closesocket,3

	.text.windows
__sys_closesocket_nt:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_closesocket(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	__sys_closesocket_nt,globl
	.previous
