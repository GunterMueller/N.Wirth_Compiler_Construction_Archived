	.text
	.globl	_M2ROOT
	.align 4
_M2ROOT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
	.globl	Strings1
	call	Strings1
	.globl	Storage
	call	Storage
	.globl	FileIO
	call	FileIO
	.globl	PL0Scanner
	call	PL0Scanner
	.globl	PL0Interpreter
	call	PL0Interpreter
	.globl	PL0Generator
	call	PL0Generator
	.globl	PL0Parser
	call	PL0Parser
	.globl	PL0
	call	PL0
	leave
	ret
	.Lab1 = 4
