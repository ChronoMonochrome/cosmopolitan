#include "libc/macros.internal.h"
.text.unlikely

eio:
#ifdef __x86_64__
	.leafprologue
	.profilable
	mov	EIO(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,EIO
	ldr	w0,[x1,#:lo12:EIO]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	eio,globl,hidden
