#include "libc/macros.internal.h"
.text.unlikely

eusers:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	EUSERS(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,EUSERS
	ldr	w0,[x1,#:lo12:EUSERS]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	eusers,globl,hidden
