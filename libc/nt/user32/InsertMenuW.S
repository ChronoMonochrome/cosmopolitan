#include "libc/nt/codegen.h"
.imp	user32,__imp_InsertMenuW,InsertMenuW,2044

	.text.windows
InsertMenu:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_InsertMenuW(%rip),%rax
	jmp	__sysv2nt6
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	InsertMenu,globl
	.previous
