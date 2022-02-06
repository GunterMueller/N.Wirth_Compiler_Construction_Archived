	.comm PL0Generator_s, 68
	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER_CONSTRUCTION/N.Wirth_Compiler_Construction/PL_0/Modula-2/Mocka/",100,0,0,.LBB0
	.stabs "PL0Generator.mod",100,0,0,.LBB0
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
	.globl	PL0Interpreter_EndInterpreter
	.globl	PL0Interpreter_Interpret
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
	.globl	PL0Generator
	.globl	PL0Generator_EndGenerator
	.globl	PL0Generator_fixup
	.globl	PL0Generator_Gen
	.globl	PL0Generator_Label
	.globl	PL0Generator_InitGenerator
	.stabs "PL0Generator_EndGenerator:F16",36,0,0,PL0Generator_EndGenerator
	.align 4
PL0Generator_EndGenerator:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,42,.LN1-PL0Generator_EndGenerator		# line 42, column 5
.LBB1:
.LN2:
	.stabn  68,0,43,.LN2-PL0Generator_EndGenerator		# line 43, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-PL0Generator_EndGenerator
	.stabn 224,0,0,.LBE1-PL0Generator_EndGenerator
	.stabs "PL0Generator_fixup:F16",36,0,0,PL0Generator_fixup
	.align 4
PL0Generator_fixup:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN3:
	.stabn  68,0,36,.LN3-PL0Generator_fixup		# line 36, column 5
.LBB2:
.LN4:
	.stabn  68,0,36,.LN4-PL0Generator_fixup		# line 36, column 21
	movl	8(%ebp),%eax
	cmpl	$1023,%eax
	jbe	.Lab3
.Lab4:
   	call	BoundErr_		
.Lab3:
	shll	$2, %eax
	leal	(%eax,%eax,2),%ebx
	movl	PL0Generator_s,%eax
	cmpl	$1023,%eax
	jbe	.Lab5
.Lab6:
   	call	BoundErr_		
.Lab5:
	movl	%eax,PL0Interpreter_s + 8(%ebx) 
.LN5:
	.stabn  68,0,37,.LN5-PL0Generator_fixup		# line 37, column 0
.LBE2:
	leave
	ret
	.Lab2 = 4
	.stabs "x:p4",160,0,4,8
	.stabn 192,0,0,.LBB2-PL0Generator_fixup
	.stabn 224,0,0,.LBE2-PL0Generator_fixup
	.stabs "PL0Generator_Gen:F16",36,0,0,PL0Generator_Gen
	.align 4
PL0Generator_Gen:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab7, %esp
.LN6:
	.stabn  68,0,22,.LN6-PL0Generator_Gen		# line 22, column 5
.LBB3:
.LN7:
	.stabn  68,0,23,.LN7-PL0Generator_Gen		# line 23, column 7
	cmpl	$1023,PL0Generator_s
	jb	.Lab8
.Lab9:
.LN8:
	.stabn  68,0,23,.LN8-PL0Generator_Gen		# line 23, column 28
	call	exit_
.Lab8:
	movl	PL0Generator_s,%eax
	cmpl	$1023,%eax
	jbe	.Lab10
.Lab11:
   	call	BoundErr_		
.Lab10:
	shll	$2, %eax
	leal	(%eax,%eax,2),%eax
	leal	PL0Interpreter_s(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN9:
	.stabn  68,0,25,.LN9-PL0Generator_Gen		# line 25, column 16
	movl	-8(%ebp),%ebx
	movl	8(%ebp),%eax
	cmpl	$15,%eax
	jbe	.Lab12
.Lab13:
   	call	BoundErr_		
.Lab12:
	movl	%eax,(%ebx) 
.LN10:
	.stabn  68,0,25,.LN10-PL0Generator_Gen		# line 25, column 26
	movl	-8(%ebp),%ebx
	movl	12(%ebp),%eax
	cmpl	$15,%eax
	jbe	.Lab14
.Lab15:
   	call	BoundErr_		
.Lab14:
	movl	%eax,4(%ebx) 
.LN11:
	.stabn  68,0,25,.LN11-PL0Generator_Gen		# line 25, column 35
	movl	-8(%ebp),%ebx
	movl	16(%ebp),%eax
	cmpl	$1023,%eax
	jbe	.Lab16
.Lab17:
   	call	BoundErr_		
.Lab16:
	movl	%eax,8(%ebx) 
.LN12:
	.stabn  68,0,31,.LN12-PL0Generator_Gen		# line 31, column 8
	incl	PL0Generator_s
.LN13:
	.stabn  68,0,32,.LN13-PL0Generator_Gen		# line 32, column 0
.LBE3:
	leave
	ret
	.Lab7 = 8
	.stabs "z:p4",160,0,4,16
	.stabs "y:p4",160,0,4,12
	.stabs "x:p4",160,0,4,8
	.stabn 192,0,0,.LBB3-PL0Generator_Gen
	.stabn 224,0,0,.LBE3-PL0Generator_Gen
	.stabs "PL0Generator_Label:F4",36,0,0,PL0Generator_Label
	.align 4
PL0Generator_Label:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab18, %esp
.LN14:
	.stabn  68,0,18,.LN14-PL0Generator_Label		# line 18, column 5
.LBB4:
.LN15:
	.stabn  68,0,18,.LN15-PL0Generator_Label		# line 18, column 11
	movl	PL0Generator_s,%eax
	leave
	ret
.LN16:
	.stabn  68,0,19,.LN16-PL0Generator_Label		# line 19, column 0
	call	ReturnErr_
.LBE4:
	leave
	ret
	.Lab18 = 4
	.stabn 192,0,0,.LBB4-PL0Generator_Label
	.stabn 224,0,0,.LBE4-PL0Generator_Label
	.stabs "PL0Generator_InitGenerator:F16",36,0,0,PL0Generator_InitGenerator
	.align 4
PL0Generator_InitGenerator:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab19, %esp
.LN17:
	.stabn  68,0,14,.LN17-PL0Generator_InitGenerator		# line 14, column 5
.LBB5:
.LN18:
	.stabn  68,0,14,.LN18-PL0Generator_InitGenerator		# line 14, column 13
	movl	$0,PL0Generator_s 
.LN19:
	.stabn  68,0,15,.LN19-PL0Generator_InitGenerator		# line 15, column 0
.LBE5:
	leave
	ret
	.Lab19 = 4
	.stabn 192,0,0,.LBB5-PL0Generator_InitGenerator
	.stabn 224,0,0,.LBE5-PL0Generator_InitGenerator
	.stabs "PL0Generator:F16",36,0,0,PL0Generator
	.align 4
PL0Generator:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab20, %esp
.LN20:
	.stabn  68,0,45,.LN20-PL0Generator		# line 45, column 2
.LBB6:
.LN21:
	.stabn  68,0,47,.LN21-PL0Generator		# line 47, column 24
	.data
.Lab21:
 	.ascii	"LIT\000"
	.text
	movl	.Lab21,%eax
	movl	%eax,PL0Generator_s + 4
.LN22:
	.stabn  68,0,47,.LN22-PL0Generator		# line 47, column 47
	.data
.Lab22:
 	.ascii	"OPR\000"
	.text
	movl	.Lab22,%eax
	movl	%eax,PL0Generator_s + 8
.LN23:
	.stabn  68,0,48,.LN23-PL0Generator		# line 48, column 24
	.data
.Lab23:
 	.ascii	"LOD\000"
	.text
	movl	.Lab23,%eax
	movl	%eax,PL0Generator_s + 12
.LN24:
	.stabn  68,0,48,.LN24-PL0Generator		# line 48, column 47
	.data
.Lab24:
 	.ascii	"STO\000"
	.text
	movl	.Lab24,%eax
	movl	%eax,PL0Generator_s + 16
.LN25:
	.stabn  68,0,49,.LN25-PL0Generator		# line 49, column 24
	.data
.Lab25:
 	.ascii	"CAL\000"
	.text
	movl	.Lab25,%eax
	movl	%eax,PL0Generator_s + 20
.LN26:
	.stabn  68,0,49,.LN26-PL0Generator		# line 49, column 47
	.data
.Lab26:
 	.ascii	"INT\000"
	.text
	movl	.Lab26,%eax
	movl	%eax,PL0Generator_s + 24
.LN27:
	.stabn  68,0,50,.LN27-PL0Generator		# line 50, column 24
	.data
.Lab27:
 	.ascii	"JMP\000"
	.text
	movl	.Lab27,%eax
	movl	%eax,PL0Generator_s + 28
.LN28:
	.stabn  68,0,50,.LN28-PL0Generator		# line 50, column 47
	.data
.Lab28:
 	.ascii	"JPC\000"
	.text
	movl	.Lab28,%eax
	movl	%eax,PL0Generator_s + 32
.LN29:
	.stabn  68,0,51,.LN29-PL0Generator		# line 51, column 0
.LBE6:
	leave
	ret
	.Lab20 = 4
	.stabn 192,0,0,.LBB6-PL0Generator
	.stabn 224,0,0,.LBE6-PL0Generator
	.stabs "PL0Generator_s:Gs68mnemonic:17=ar4;0;15;18=ar4;0;3;2,32,512;L:4,0,32;;",32,0,0,0
