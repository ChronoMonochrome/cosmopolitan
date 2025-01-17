#include "libc/macros.internal.h"
.text.unlikely

enomedium:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	ENOMEDIUM(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ENOMEDIUM
	ldr	w0,[x1,#:lo12:ENOMEDIUM]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	enomedium,globl,hidden
