#include "libc/nt/codegen.h"
.imp	user32,__imp_SetWindowLongW,SetWindowLongW,2398

	.text.windows
SetWindowLong:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_SetWindowLongW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	SetWindowLong,globl
	.previous
