#include "libc/macros.internal.h"
.text.unlikely

epipe:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	EPIPE(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,EPIPE
	ldr	w0,[x1,#:lo12:EPIPE]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	epipe,globl,hidden
