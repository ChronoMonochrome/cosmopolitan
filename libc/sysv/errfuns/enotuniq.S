#include "libc/macros.internal.h"
.text.unlikely

enotuniq:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	ENOTUNIQ(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ENOTUNIQ
	ldr	w0,[x1,#:lo12:ENOTUNIQ]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	enotuniq,globl,hidden
