#include "libc/nt/codegen.h"
.imp	iphlpapi,__imp_CaptureInterfaceHardwareCrossTimestamp,CaptureInterfaceHardwareCrossTimestamp,0

	.text.windows
CaptureInterfaceHardwareCrossTimestamp:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_CaptureInterfaceHardwareCrossTimestamp(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	CaptureInterfaceHardwareCrossTimestamp,globl
	.previous
