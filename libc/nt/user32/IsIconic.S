#include "libc/nt/codegen.h"
.imp	user32,__imp_IsIconic,IsIconic,2067

	.text.windows
IsIconic:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_IsIconic(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	IsIconic,globl
	.previous
