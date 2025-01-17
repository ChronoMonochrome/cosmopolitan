#include "libc/macros.internal.h"
.text.unlikely

enoprotoopt:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	ENOPROTOOPT(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ENOPROTOOPT
	ldr	w0,[x1,#:lo12:ENOPROTOOPT]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	enoprotoopt,globl,hidden
