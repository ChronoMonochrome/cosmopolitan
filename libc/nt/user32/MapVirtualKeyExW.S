#include "libc/nt/codegen.h"
.imp	user32,__imp_MapVirtualKeyExW,MapVirtualKeyExW,2155

	.text.windows
MapVirtualKeyEx:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_MapVirtualKeyExW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	MapVirtualKeyEx,globl
	.previous
