#include "libc/nt/codegen.h"
.imp	kernel32,__imp_TryAcquireSRWLockShared,TryAcquireSRWLockShared,0

	.text.windows
TryAcquireSRWLockShared:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_TryAcquireSRWLockShared(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	TryAcquireSRWLockShared,globl
	.previous
