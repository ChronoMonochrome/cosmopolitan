#include "libc/nt/codegen.h"
.imp	user32,__imp_DestroyMenu,DestroyMenu,1688

	.text.windows
DestroyMenu:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_DestroyMenu(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	DestroyMenu,globl
	.previous
