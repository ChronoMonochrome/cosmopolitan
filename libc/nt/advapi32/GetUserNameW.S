#include "libc/nt/codegen.h"
.imp	advapi32,__imp_GetUserNameW,GetUserNameW,1381

	.text.windows
GetUserName:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_GetUserNameW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	GetUserName,globl
	.previous
