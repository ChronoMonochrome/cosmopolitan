#include "libc/macros.internal.h"
.text.unlikely

efault:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	EFAULT(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,EFAULT
	ldr	w0,[x1,#:lo12:EFAULT]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	efault,globl,hidden
