#include "libc/nt/codegen.h"
.imp	user32,__imp_BringWindowToTop,BringWindowToTop,1523

	.text.windows
BringWindowToTop:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_BringWindowToTop(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	BringWindowToTop,globl
	.previous
