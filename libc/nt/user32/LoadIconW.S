#include "libc/nt/codegen.h"
.imp	user32,__imp_LoadIconW,LoadIconW,2103

	.text.windows
LoadIcon:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_LoadIconW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	LoadIcon,globl
	.previous
