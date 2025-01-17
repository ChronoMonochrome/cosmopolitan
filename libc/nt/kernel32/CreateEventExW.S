#include "libc/nt/codegen.h"
.imp	kernel32,__imp_CreateEventExW,CreateEventExW,0

	.text.windows
CreateEventEx:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_CreateEventExW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	CreateEventEx,globl
	.previous
