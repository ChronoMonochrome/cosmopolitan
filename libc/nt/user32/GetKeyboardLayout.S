#include "libc/nt/codegen.h"
.imp	user32,__imp_GetKeyboardLayout,GetKeyboardLayout,1867

	.text.windows
GetKeyboardLayout:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_GetKeyboardLayout(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	GetKeyboardLayout,globl
	.previous
