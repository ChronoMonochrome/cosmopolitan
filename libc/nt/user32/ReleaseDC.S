#include "libc/nt/codegen.h"
.imp	user32,__imp_ReleaseDC,ReleaseDC,2280

	.text.windows
ReleaseDC:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_ReleaseDC(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	ReleaseDC,globl
	.previous
