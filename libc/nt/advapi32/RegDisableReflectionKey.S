#include "libc/nt/codegen.h"
.imp	advapi32,__imp_RegDisableReflectionKey,RegDisableReflectionKey,1631

	.text.windows
RegDisableReflectionKey:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_RegDisableReflectionKey(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	RegDisableReflectionKey,globl
	.previous
