#include "libc/nt/codegen.h"
.imp	psapi,__imp_GetProcessImageFileNameW,GetProcessImageFileNameW,0

	.text.windows
GetProcessImageFileName:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_GetProcessImageFileNameW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	GetProcessImageFileName,globl
	.previous
