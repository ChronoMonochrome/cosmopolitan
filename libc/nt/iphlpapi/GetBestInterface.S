#include "libc/nt/codegen.h"
.imp	iphlpapi,__imp_GetBestInterface,GetBestInterface,0

	.text.windows
GetBestInterface:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_GetBestInterface(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	GetBestInterface,globl
	.previous
