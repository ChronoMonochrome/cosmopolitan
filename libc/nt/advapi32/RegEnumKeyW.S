#include "libc/nt/codegen.h"
.imp	advapi32,__imp_RegEnumKeyW,RegEnumKeyW,1636

	.text.windows
RegEnumKey:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_RegEnumKeyW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	RegEnumKey,globl
	.previous
