#include "libc/nt/codegen.h"
.imp	kernel32,__imp_SetThreadAffinityMask,SetThreadAffinityMask,1369

	.text.windows
SetThreadAffinityMask:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_SetThreadAffinityMask(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	SetThreadAffinityMask,globl
	.previous
