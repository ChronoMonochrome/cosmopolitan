#include "libc/nt/codegen.h"
.imp	kernel32,__imp_TransactNamedPipe,TransactNamedPipe,0

	.text.windows
TransactNamedPipe:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_TransactNamedPipe(%rip),%rax
	jmp	__sysv2nt8
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	TransactNamedPipe,globl
	.previous
