#include "libc/nt/codegen.h"
.imp	user32,__imp_GetCursor,GetCursor,1826

	.text.windows
GetCursor:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	sub	$32,%rsp
	call	*__imp_GetCursor(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	GetCursor,globl
	.previous
