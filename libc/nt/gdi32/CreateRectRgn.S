#include "libc/nt/codegen.h"
.imp	gdi32,__imp_CreateRectRgn,CreateRectRgn,1097

	.text.windows
CreateRectRgn:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_CreateRectRgn(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	CreateRectRgn,globl
	.previous
