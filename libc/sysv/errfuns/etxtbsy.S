#include "libc/macros.internal.h"
.text.unlikely

etxtbsy:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	ETXTBSY(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ETXTBSY
	ldr	w0,[x1,#:lo12:ETXTBSY]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	etxtbsy,globl,hidden
