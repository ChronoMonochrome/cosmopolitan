#include "libc/nt/codegen.h"
.imp	user32,__imp_DefWindowProcW,DefWindowProcW,174

	.text.windows
DefWindowProc:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_DefWindowProcW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	DefWindowProc,globl
	.previous
