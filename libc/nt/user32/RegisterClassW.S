#include "libc/nt/codegen.h"
.imp	user32,__imp_RegisterClassW,RegisterClassW,2251

	.text.windows
RegisterClass:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_RegisterClassW(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	RegisterClass,globl
	.previous
