#include "libc/nt/codegen.h"
.imp	ws2_32,__imp_WSAGetServiceClassNameByClassIdW,WSAGetServiceClassNameByClassIdW,73

	.text.windows
WSAGetServiceClassNameByClassId:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_WSAGetServiceClassNameByClassIdW(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	WSAGetServiceClassNameByClassId,globl
	.previous
