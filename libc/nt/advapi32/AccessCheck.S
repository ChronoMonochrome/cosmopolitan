#include "libc/nt/codegen.h"
.imp	advapi32,__imp_AccessCheck,AccessCheck,0

	.text.windows
AccessCheck:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_AccessCheck(%rip),%rax
	jmp	__sysv2nt8
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	AccessCheck,globl
	.previous
