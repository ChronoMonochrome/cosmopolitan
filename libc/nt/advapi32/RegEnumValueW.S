#include "libc/nt/codegen.h"
.imp	advapi32,__imp_RegEnumValueW,RegEnumValueW,0

	.text.windows
RegEnumValue:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_RegEnumValueW(%rip),%rax
	jmp	__sysv2nt8
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	RegEnumValue,globl
	.previous
