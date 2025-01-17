#include "libc/macros.internal.h"
.text.unlikely

eremchg:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	EREMCHG(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,EREMCHG
	ldr	w0,[x1,#:lo12:EREMCHG]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	eremchg,globl,hidden
