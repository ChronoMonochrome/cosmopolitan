#include "libc/nt/codegen.h"
.imp	kernel32,__imp_ReleaseSRWLockShared,ReleaseSRWLockShared,0

	.text.windows
ReleaseSRWLockShared:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_ReleaseSRWLockShared(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	ReleaseSRWLockShared,globl
	.previous
