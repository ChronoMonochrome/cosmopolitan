#include "libc/nt/codegen.h"
.imp	advapi32,__imp_RegNotifyChangeKeyValue,RegNotifyChangeKeyValue,0

	.text.windows
RegNotifyChangeKeyValue:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_RegNotifyChangeKeyValue(%rip),%rax
	jmp	__sysv2nt6
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	RegNotifyChangeKeyValue,globl
	.previous
