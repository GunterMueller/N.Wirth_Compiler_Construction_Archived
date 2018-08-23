	.comm PL0Interpreter_s, 12288
	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER/N.Wirth_Compiler_Construction/Modula-2/Mocka_PLAY/",100,0,0,.LBB0
	.stabs "PL0Interpreter.mod",100,0,0,.LBB0
.LBB0:
	.stabs "BOOLEAN:t1=eTRUE:1,FALSE:0,;",0x80,0,0,0
	.stabs "CHAR:t2=r2;0;255;",0x80,0,0,0
	.stabs "SHORTCARD:t3=r3;0;65535;",0x80,0,0,0
	.stabs "LONGCARD:t4=r4;0;-1;",0x80,0,0,0
	.stabs "CARDINAL:t5=r5;0;-1;",0x80,0,0,0
	.stabs "SHORTINT:t6=r6;-32768;32767;",0x80,0,0,0
	.stabs "LONGINT:t7=r7;-2147483648;2147483647;",0x80,0,0,0
	.stabs "INTEGER:t8=r8;-2147483648;2147483647;",0x80,0,0,0
	.stabs "REAL:t9=r8;4;0;",0x80,0,0,0
	.stabs "LONGREAL:t10=r8;8;0;",0x80,0,0,0
	.stabs "BITSET:t11=r4;0;-1",0x80,0,0,0
	.stabs "WORD:t13=r13;0;255;",0x80,0,0,0
	.stabs "BYTE:t14=r2;0;255",0x80,0,0,0
	.stabs "VOID:t16=16",0x80,0,0,0
	.stabs "ADDRESS:t15=*16",0x80,0,0,0
	.stabs "PROC:t12=*f16;",0x80,0,0,0
	.globl	InOut_EOF
	.globl	InOut_Done
	.globl	InOut_WriteBf
	.globl	InOut_WriteLn
	.globl	InOut_WriteLongReal
	.globl	InOut_WriteReal
	.globl	InOut_WriteInt
	.globl	InOut_WriteHex
	.globl	InOut_WriteOct
	.globl	InOut_WriteCard
	.globl	InOut_WriteString
	.globl	InOut_Write
	.globl	InOut_ReadLongReal
	.globl	InOut_ReadReal
	.globl	InOut_ReadInt
	.globl	InOut_ReadCard
	.globl	InOut_ReadString
	.globl	InOut_Read
	.globl	PL0Interpreter
	.globl	PL0Interpreter_EndInterpreter
	.globl	PL0Interpreter_Interpret
	.globl	PL0Interpreter_Interpret_base
	.stabs "PL0Interpreter_EndInterpreter:F16",36,0,0,PL0Interpreter_EndInterpreter
	.align 4
PL0Interpreter_EndInterpreter:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,69,.LN1-PL0Interpreter_EndInterpreter		# line 69, column 3
.LBB1:
.LN2:
	.stabn  68,0,70,.LN2-PL0Interpreter_EndInterpreter		# line 70, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-PL0Interpreter_EndInterpreter
	.stabn 224,0,0,.LBE1-PL0Interpreter_EndInterpreter
	.stabs "PL0Interpreter_Interpret_base:F7",36,0,0,PL0Interpreter_Interpret_base
	.align 4
PL0Interpreter_Interpret_base:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN3:
	.stabn  68,0,18,.LN3-PL0Interpreter_Interpret_base		# line 18, column 3
.LBB2:
.LN4:
	.stabn  68,0,18,.LN4-PL0Interpreter_Interpret_base		# line 18, column 13
	movl	DISPLAY_,%eax
	movl	-12(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab3
.Lab4:
.LN5:
	.stabn  68,0,20,.LN5-PL0Interpreter_Interpret_base		# line 20, column 16
	movl	DISPLAY_,%ebx
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab6:
	.long	0,999
	.text
	boundl	%eax,.Lab6
	movl	-4028(%ebx,%eax,4),%eax
	movl	%eax,-8(%ebp) 
.LN6:
	.stabn  68,0,20,.LN6-PL0Interpreter_Interpret_base		# line 20, column 29
	decl	8(%ebp)
.Lab3:
.LN7:
	.stabn  68,0,19,.LN7-PL0Interpreter_Interpret_base		# line 19, column 13
	jmp	.Lab4
.Lab5:
.LN8:
	.stabn  68,0,22,.LN8-PL0Interpreter_Interpret_base		# line 22, column 5
	movl	-8(%ebp),%eax
	leave
	ret
.LN9:
	.stabn  68,0,23,.LN9-PL0Interpreter_Interpret_base		# line 23, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab2 = 8
	.stabs "b1:7",128,0,4,-8
	.stabs "l:p7",160,0,4,8
	.stabn 192,0,0,.LBB2-PL0Interpreter_Interpret_base
	.stabn 224,0,0,.LBE2-PL0Interpreter_Interpret_base
	.stabs "PL0Interpreter_Interpret:F16",36,0,0,PL0Interpreter_Interpret
	.align 4
PL0Interpreter_Interpret:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab7, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN10:
	.stabn  68,0,25,.LN10-PL0Interpreter_Interpret		# line 25, column 3
.LBB3:
.LN11:
	.stabn  68,0,26,.LN11-PL0Interpreter_Interpret		# line 26, column 7
	movl	$0,-16(%ebp) 
.LN12:
	.stabn  68,0,26,.LN12-PL0Interpreter_Interpret		# line 26, column 18
	movl	$1,-12(%ebp) 
.LN13:
	.stabn  68,0,26,.LN13-PL0Interpreter_Interpret		# line 26, column 28
	movl	$0,-8(%ebp) 
.LN14:
	.stabn  68,0,27,.LN14-PL0Interpreter_Interpret		# line 27, column 10
	movl	$0,-4024(%ebp) 
.LN15:
	.stabn  68,0,27,.LN15-PL0Interpreter_Interpret		# line 27, column 23
	movl	$0,-4020(%ebp) 
.LN16:
	.stabn  68,0,27,.LN16-PL0Interpreter_Interpret		# line 27, column 36
	movl	$0,-4016(%ebp) 
.Lab8:
.LN17:
	.stabn  68,0,28,.LN17-PL0Interpreter_Interpret		# line 28, column 15
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab10:
	.long	0,1023
	.text
	boundl	%eax,.Lab10
	shll	$2, %eax
	leal	(%eax,%eax,2),%eax
	leal	PL0Interpreter_s(%eax),%esi
	leal	-28(%ebp),%edi
	movl	$3,%ecx
	cld
	repz
	movsl
.LN18:
	.stabn  68,0,28,.LN18-PL0Interpreter_Interpret		# line 28, column 31
	incl	-8(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,-4032(%ebp) 
.LN19:
	.stabn  68,0,30,.LN19-PL0Interpreter_Interpret		# line 30, column 10
	movl	-4032(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab21:
	.long	.Lab20
	.long	.Lab19
	.long	.Lab18
	.long	.Lab17
	.long	.Lab16
	.long	.Lab15
	.long	.Lab14
	.long	.Lab13
	.text
	subl	$0,%eax
	jb	.Lab11
	cmpl	$7,%eax
	ja	.Lab11
	jmp	*.Lab21(,%eax,4)
.Lab20:
.LN20:
	.stabn  68,0,31,.LN20-PL0Interpreter_Interpret		# line 31, column 21
	incl	-16(%ebp)
.LN21:
	.stabn  68,0,31,.LN21-PL0Interpreter_Interpret		# line 31, column 35
	movl	-16(%ebp),%ebx
	.data
	.align 4
.Lab22:
	.long	0,999
	.text
	boundl	%ebx,.Lab22
	movl	-4032(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-4028(%ebp,%ebx,4) 
	jmp	.Lab12
.Lab19:
.LN22:
	.stabn  68,0,32,.LN22-PL0Interpreter_Interpret		# line 32, column 20
	movl	-4032(%ebp),%eax
	movl	8(%eax),%eax
	.data
	.align 4
.Lab41:
	.long	.Lab40
	.long	.Lab39
	.long	.Lab38
	.long	.Lab37
	.long	.Lab36
	.long	.Lab35
	.long	.Lab34
	.long	.Lab33
	.long	.Lab32
	.long	.Lab31
	.long	.Lab30
	.long	.Lab29
	.long	.Lab28
	.long	.Lab27
	.long	.Lab26
	.long	.Lab25
	.text
	subl	$0,%eax
	jb	.Lab23
	cmpl	$15,%eax
	ja	.Lab23
	jmp	*.Lab41(,%eax,4)
.Lab40:
.LN23:
	.stabn  68,0,33,.LN23-PL0Interpreter_Interpret		# line 33, column 35
	movl	-12(%ebp),%eax
 	subl	$1,%eax 
	movl	%eax,-16(%ebp) 
.LN24:
	.stabn  68,0,33,.LN24-PL0Interpreter_Interpret		# line 33, column 45
	movl	$3,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab42:
	.long	0,999
	.text
	boundl	%eax,.Lab42
	movl	-4028(%ebp,%eax,4),%eax
	movl	%eax,-8(%ebp) 
.LN25:
	.stabn  68,0,33,.LN25-PL0Interpreter_Interpret		# line 33, column 58
	movl	$2,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab43:
	.long	0,999
	.text
	boundl	%eax,.Lab43
	movl	-4028(%ebp,%eax,4),%eax
	movl	%eax,-12(%ebp) 
	jmp	.Lab24
.Lab39:
.LN26:
	.stabn  68,0,34,.LN26-PL0Interpreter_Interpret		# line 34, column 30
	movl	-16(%ebp),%ebx
	.data
	.align 4
.Lab44:
	.long	0,999
	.text
	boundl	%ebx,.Lab44
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab45:
	.long	0,999
	.text
	boundl	%eax,.Lab45
	movl	-4028(%ebp,%eax,4),%eax
	negl	%eax
	movl	%eax,-4028(%ebp,%ebx,4) 
	jmp	.Lab24
.Lab38:
.LN27:
	.stabn  68,0,35,.LN27-PL0Interpreter_Interpret		# line 35, column 27
	decl	-16(%ebp)
.LN28:
	.stabn  68,0,35,.LN28-PL0Interpreter_Interpret		# line 35, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab46:
	.long	0,999
	.text
	boundl	%ecx,.Lab46
	movl	-16(%ebp),%ebx
	.data
	.align 4
.Lab47:
	.long	0,999
	.text
	boundl	%ebx,.Lab47
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab48:
	.long	0,999
	.text
	boundl	%eax,.Lab48
	movl	-4028(%ebp,%eax,4),%eax
 	addl	-4028(%ebp,%ebx,4),%eax 
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab37:
.LN29:
	.stabn  68,0,36,.LN29-PL0Interpreter_Interpret		# line 36, column 27
	decl	-16(%ebp)
.LN30:
	.stabn  68,0,36,.LN30-PL0Interpreter_Interpret		# line 36, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab49:
	.long	0,999
	.text
	boundl	%ecx,.Lab49
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab50:
	.long	0,999
	.text
	boundl	%eax,.Lab50
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab51:
	.long	0,999
	.text
	boundl	%eax,.Lab51
 	subl	-4028(%ebp,%eax,4),%ebx 
	movl	%ebx,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab36:
.LN31:
	.stabn  68,0,37,.LN31-PL0Interpreter_Interpret		# line 37, column 27
	decl	-16(%ebp)
.LN32:
	.stabn  68,0,37,.LN32-PL0Interpreter_Interpret		# line 37, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab52:
	.long	0,999
	.text
	boundl	%ecx,.Lab52
	movl	-16(%ebp),%ebx
	.data
	.align 4
.Lab53:
	.long	0,999
	.text
	boundl	%ebx,.Lab53
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab54:
	.long	0,999
	.text
	boundl	%eax,.Lab54
	movl	-4028(%ebp,%eax,4),%eax
	imull	-4028(%ebp,%ebx,4),%eax 
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab35:
.LN33:
	.stabn  68,0,38,.LN33-PL0Interpreter_Interpret		# line 38, column 27
	decl	-16(%ebp)
.LN34:
	.stabn  68,0,38,.LN34-PL0Interpreter_Interpret		# line 38, column 40
	movl	-16(%ebp),%esi
	.data
	.align 4
.Lab55:
	.long	0,999
	.text
	boundl	%esi,.Lab55
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab56:
	.long	0,999
	.text
	boundl	%eax,.Lab56
	movl	-4028(%ebp,%eax,4),%ecx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab57:
	.long	0,999
	.text
	boundl	%eax,.Lab57
	movl	-4028(%ebp,%eax,4),%ebx
 	movl	%ecx, %eax
	cdq
	idivl	%ebx
	movl	%eax,-4028(%ebp,%esi,4) 
	jmp	.Lab24
.Lab34:
.LN35:
	.stabn  68,0,39,.LN35-PL0Interpreter_Interpret		# line 39, column 30
	movl	-16(%ebp),%ebx
	.data
	.align 4
.Lab58:
	.long	0,999
	.text
	boundl	%ebx,.Lab58
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab59:
	.long	0,999
	.text
	boundl	%eax,.Lab59
	movl	-4028(%ebp,%eax,4),%eax
	andl	$1,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab60
.Lab61:
   	call	BoundErr_		
.Lab60:
	movl	%eax,-4028(%ebp,%ebx,4) 
	jmp	.Lab24
.Lab33:
	jmp	.Lab24
.Lab32:
.LN36:
	.stabn  68,0,41,.LN36-PL0Interpreter_Interpret		# line 41, column 27
	decl	-16(%ebp)
.LN37:
	.stabn  68,0,41,.LN37-PL0Interpreter_Interpret		# line 41, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab62:
	.long	0,999
	.text
	boundl	%ecx,.Lab62
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab63:
	.long	0,999
	.text
	boundl	%eax,.Lab63
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab64:
	.long	0,999
	.text
	boundl	%eax,.Lab64
	cmpl	-4028(%ebp,%eax,4),%ebx
	sete	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab65
.Lab66:
   	call	BoundErr_		
.Lab65:
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab31:
.LN38:
	.stabn  68,0,42,.LN38-PL0Interpreter_Interpret		# line 42, column 27
	decl	-16(%ebp)
.LN39:
	.stabn  68,0,42,.LN39-PL0Interpreter_Interpret		# line 42, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab67:
	.long	0,999
	.text
	boundl	%ecx,.Lab67
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab68:
	.long	0,999
	.text
	boundl	%eax,.Lab68
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab69:
	.long	0,999
	.text
	boundl	%eax,.Lab69
	cmpl	-4028(%ebp,%eax,4),%ebx
	setne	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab70
.Lab71:
   	call	BoundErr_		
.Lab70:
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab30:
.LN40:
	.stabn  68,0,43,.LN40-PL0Interpreter_Interpret		# line 43, column 27
	decl	-16(%ebp)
.LN41:
	.stabn  68,0,43,.LN41-PL0Interpreter_Interpret		# line 43, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab72:
	.long	0,999
	.text
	boundl	%ecx,.Lab72
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab73:
	.long	0,999
	.text
	boundl	%eax,.Lab73
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab74:
	.long	0,999
	.text
	boundl	%eax,.Lab74
	cmpl	-4028(%ebp,%eax,4),%ebx
	setl	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab75
.Lab76:
   	call	BoundErr_		
.Lab75:
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab29:
.LN42:
	.stabn  68,0,44,.LN42-PL0Interpreter_Interpret		# line 44, column 27
	decl	-16(%ebp)
.LN43:
	.stabn  68,0,44,.LN43-PL0Interpreter_Interpret		# line 44, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab77:
	.long	0,999
	.text
	boundl	%ecx,.Lab77
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab78:
	.long	0,999
	.text
	boundl	%eax,.Lab78
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab79:
	.long	0,999
	.text
	boundl	%eax,.Lab79
	cmpl	-4028(%ebp,%eax,4),%ebx
	setge	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab80
.Lab81:
   	call	BoundErr_		
.Lab80:
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab28:
.LN44:
	.stabn  68,0,45,.LN44-PL0Interpreter_Interpret		# line 45, column 27
	decl	-16(%ebp)
.LN45:
	.stabn  68,0,45,.LN45-PL0Interpreter_Interpret		# line 45, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab82:
	.long	0,999
	.text
	boundl	%ecx,.Lab82
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab83:
	.long	0,999
	.text
	boundl	%eax,.Lab83
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab84:
	.long	0,999
	.text
	boundl	%eax,.Lab84
	cmpl	-4028(%ebp,%eax,4),%ebx
	setg	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab85
.Lab86:
   	call	BoundErr_		
.Lab85:
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab27:
.LN46:
	.stabn  68,0,46,.LN46-PL0Interpreter_Interpret		# line 46, column 27
	decl	-16(%ebp)
.LN47:
	.stabn  68,0,46,.LN47-PL0Interpreter_Interpret		# line 46, column 40
	movl	-16(%ebp),%ecx
	.data
	.align 4
.Lab87:
	.long	0,999
	.text
	boundl	%ecx,.Lab87
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab88:
	.long	0,999
	.text
	boundl	%eax,.Lab88
	movl	-4028(%ebp,%eax,4),%ebx
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab89:
	.long	0,999
	.text
	boundl	%eax,.Lab89
	cmpl	-4028(%ebp,%eax,4),%ebx
	setle	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab90
.Lab91:
   	call	BoundErr_		
.Lab90:
	movl	%eax,-4028(%ebp,%ecx,4) 
	jmp	.Lab24
.Lab26:
.LN48:
	.stabn  68,0,47,.LN48-PL0Interpreter_Interpret		# line 47, column 27
	incl	-16(%ebp)
	jmp	.Lab24
.Lab25:
.LN49:
	.stabn  68,0,51,.LN49-PL0Interpreter_Interpret		# line 51, column 77
	decl	-16(%ebp)
	jmp	.Lab24
.Lab23:
	call	CaseErr_
.Lab24:
	jmp	.Lab12
.Lab18:
.LN50:
	.stabn  68,0,54,.LN50-PL0Interpreter_Interpret		# line 54, column 21
	incl	-16(%ebp)
.LN51:
	.stabn  68,0,54,.LN51-PL0Interpreter_Interpret		# line 54, column 34
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab92:
	.long	0,999
	.text
	boundl	%eax,.Lab92
	pushl	%eax
	movl	-4032(%ebp),%eax
	pushl	4(%eax)
	call	PL0Interpreter_Interpret_base
	addl	$4, %esp
 	movl	%eax, %ebx
	movl	-4032(%ebp),%eax
 	addl	8(%eax),%ebx 
	.data
	.align 4
.Lab93:
	.long	0,999
	.text
	boundl	%ebx,.Lab93
	movl	-4028(%ebp,%ebx,4),%eax
	popl	%ebx
	movl	%eax,-4028(%ebp,%ebx,4) 
	jmp	.Lab12
.Lab17:
.LN52:
	.stabn  68,0,55,.LN52-PL0Interpreter_Interpret		# line 55, column 41
	movl	-4032(%ebp),%eax
	pushl	4(%eax)
	call	PL0Interpreter_Interpret_base
	addl	$4, %esp
 	movl	%eax, %ebx
	movl	-4032(%ebp),%eax
 	addl	8(%eax),%ebx 
	.data
	.align 4
.Lab94:
	.long	0,999
	.text
	boundl	%ebx,.Lab94
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab95:
	.long	0,999
	.text
	boundl	%eax,.Lab95
	movl	-4028(%ebp,%eax,4),%eax
	movl	%eax,-4028(%ebp,%ebx,4) 
.LN53:
	.stabn  68,0,55,.LN53-PL0Interpreter_Interpret		# line 55, column 53
	decl	-16(%ebp)
	jmp	.Lab12
.Lab16:
.LN54:
	.stabn  68,0,57,.LN54-PL0Interpreter_Interpret		# line 57, column 26
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	.data
	.align 4
.Lab96:
	.long	0,999
	.text
	boundl	%eax,.Lab96
	pushl	%eax
	movl	-4032(%ebp),%eax
	pushl	4(%eax)
	call	PL0Interpreter_Interpret_base
	addl	$4, %esp
	popl	%ebx
	movl	%eax,-4028(%ebp,%ebx,4) 
.LN55:
	.stabn  68,0,57,.LN55-PL0Interpreter_Interpret		# line 57, column 46
	movl	$2,%ebx
 	addl	-16(%ebp),%ebx 
	.data
	.align 4
.Lab97:
	.long	0,999
	.text
	boundl	%ebx,.Lab97
	movl	-12(%ebp),%eax
	movl	%eax,-4028(%ebp,%ebx,4) 
.LN56:
	.stabn  68,0,57,.LN56-PL0Interpreter_Interpret		# line 57, column 61
	movl	$3,%ebx
 	addl	-16(%ebp),%ebx 
	.data
	.align 4
.Lab98:
	.long	0,999
	.text
	boundl	%ebx,.Lab98
	movl	-8(%ebp),%eax
	movl	%eax,-4028(%ebp,%ebx,4) 
.LN57:
	.stabn  68,0,58,.LN57-PL0Interpreter_Interpret		# line 58, column 21
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN58:
	.stabn  68,0,58,.LN58-PL0Interpreter_Interpret		# line 58, column 31
	movl	-4032(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab12
.Lab15:
.LN59:
	.stabn  68,0,59,.LN59-PL0Interpreter_Interpret		# line 59, column 22
	movl	-4032(%ebp),%eax
	movl	8(%eax),%eax
 	addl	-16(%ebp),%eax 
	movl	%eax,-16(%ebp) 
	jmp	.Lab12
.Lab14:
.LN60:
	.stabn  68,0,60,.LN60-PL0Interpreter_Interpret		# line 60, column 22
	movl	-4032(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab12
.Lab13:
.LN61:
	.stabn  68,0,61,.LN61-PL0Interpreter_Interpret		# line 61, column 19
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab101:
	.long	0,999
	.text
	boundl	%eax,.Lab101
	cmpl	$0,-4028(%ebp,%eax,4)
	jne	.Lab99
.Lab100:
.LN62:
	.stabn  68,0,61,.LN62-PL0Interpreter_Interpret		# line 61, column 39
	movl	-4032(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab99:
.LN63:
	.stabn  68,0,62,.LN63-PL0Interpreter_Interpret		# line 62, column 21
	decl	-16(%ebp)
	jmp	.Lab12
.Lab11:
	call	CaseErr_
.Lab12:
.LN64:
	.stabn  68,0,65,.LN64-PL0Interpreter_Interpret		# line 65, column 17
	cmpl	$0,-8(%ebp)
	jne	.Lab8
.Lab9:
.LN65:
	.stabn  68,0,66,.LN65-PL0Interpreter_Interpret		# line 66, column 0
.LBE3:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab7 = 4032
	.stabs "s:17=ar4;0;999;7",128,0,4000,-4028
	.stabs "Instruction:t18=s12a:19=4,64,32;l:20=4,32,32;f:21=4,0,32;;",128,0,0,0
	.stabs "i:18",128,0,12,-28
	.stabs "t:7",128,0,4,-16
	.stabs "b:7",128,0,4,-12
	.stabs "p:7",128,0,4,-8
	.stabs "stacksize:c=i1000",128,0,0,0
	.stabn 192,0,0,.LBB3-PL0Interpreter_Interpret
	.stabn 224,0,0,.LBE3-PL0Interpreter_Interpret
	.stabs "PL0Interpreter:F16",36,0,0,PL0Interpreter
	.align 4
PL0Interpreter:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab102, %esp
.LN66:
	.stabn  68,0,72,.LN66-PL0Interpreter		# line 72, column 1
.LBB4:
.LN67:
	.stabn  68,0,73,.LN67-PL0Interpreter		# line 73, column 0
.LBE4:
	leave
	ret
	.Lab102 = 4
	.stabs "maxfct:c=i15",128,0,0,0
	.stabs "maxlev:c=i15",128,0,0,0
	.stabs "maxadr:c=i1023",128,0,0,0
	.stabn 192,0,0,.LBB4-PL0Interpreter
	.stabn 224,0,0,.LBE4-PL0Interpreter
	.stabs "PL0Interpreter_s:Gs12288code:22=ar4;0;1023;18,0,98304;;",32,0,0,0
