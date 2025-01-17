#include "libc/macros.internal.h"
.text.unlikely

enotty:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	ENOTTY(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ENOTTY
	ldr	w0,[x1,#:lo12:ENOTTY]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	enotty,globl,hidden
