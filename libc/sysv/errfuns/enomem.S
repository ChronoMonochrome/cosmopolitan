#include "libc/macros.internal.h"
.text.unlikely

enomem:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	ENOMEM(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ENOMEM
	ldr	w0,[x1,#:lo12:ENOMEM]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	enomem,globl,hidden
