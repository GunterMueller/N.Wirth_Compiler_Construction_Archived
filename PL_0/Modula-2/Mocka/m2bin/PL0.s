	.comm PL0_s, 32
	.text
	.stabs "/home/gunter/GM_Programming/COMPILER/N.Wirth_Compiler_Construction/PL_0/Modula-2/Mocka/",100,0,0,.LBB0
	.stabs "PL0.mod",100,0,0,.LBB0
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
	.globl	PL0Generator_EndGenerator
	.globl	PL0Generator_InitGenerator
	.globl	PL0Generator_fixup
	.globl	PL0Generator_Gen
	.globl	PL0Generator_Label
	.globl	PL0Parser_EndParser
	.globl	PL0Parser_Parse
	.globl	PL0Scanner_CloseScanner
	.globl	PL0Scanner_InitScanner
	.globl	PL0Scanner_GetSym
	.globl	PL0Scanner_Mark
	.globl	PL0Scanner_KeepId
	.globl	PL0Scanner_Diff
	.globl	FileIO_QuitExecution
	.globl	FileIO_INT
	.globl	FileIO_INTL
	.globl	FileIO_ORDL
	.globl	FileIO_Compare
	.globl	FileIO_Concat
	.globl	FileIO_Extract
	.globl	FileIO_Assign
	.globl	FileIO_SLENGTH
	.globl	FileIO_WriteExecutionTime
	.globl	FileIO_WriteElapsedTime
	.globl	FileIO_WriteTime
	.globl	FileIO_WriteDate
	.globl	FileIO_WriteBytes
	.globl	FileIO_WriteCard
	.globl	FileIO_WriteInt
	.globl	FileIO_WriteText
	.globl	FileIO_WriteString
	.globl	FileIO_WriteLn
	.globl	FileIO_Write
	.globl	FileIO_ReadBytes
	.globl	FileIO_ReadCard
	.globl	FileIO_ReadInt
	.globl	FileIO_ReadToken
	.globl	FileIO_ReadLine
	.globl	FileIO_ReadString
	.globl	FileIO_ReadLn
	.globl	FileIO_ReadAgain
	.globl	FileIO_Read
	.globl	FileIO_EndOfFile
	.globl	FileIO_EndOfLine
	.globl	FileIO_Rewrite
	.globl	FileIO_Reset
	.globl	FileIO_SetPos
	.globl	FileIO_GetPos
	.globl	FileIO_Length
	.globl	FileIO_ChangeExtension
	.globl	FileIO_AppendExtension
	.globl	FileIO_ExtractFileName
	.globl	FileIO_ExtractDirectory
	.globl	FileIO_Delete
	.globl	FileIO_CloseAll
	.globl	FileIO_Close
	.globl	FileIO_SearchFile
	.globl	FileIO_Open
	.globl	FileIO_GetEnv
	.globl	FileIO_NextParameter
	.globl	PL0
	.globl	PL0_ReadName
	.stabs "PL0_ReadName:F16",36,0,0,PL0_ReadName
	.align 4
PL0_ReadName:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,27,.LN1-PL0_ReadName		# line 27, column 1
.LBB1:
.LN2:
	.stabn  68,0,27,.LN2-PL0_ReadName		# line 27, column 7
	leal	PL0_s,%eax
	pushl	%eax
	pushl	FileIO_s + 12
	call	FileIO_Read
	addl	$8, %esp
.LN3:
	.stabn  68,0,28,.LN3-PL0_ReadName		# line 28, column 9
	movl	$1,-8(%ebp) 
	jmp	.Lab2
.Lab3:
.LN4:
	.stabn  68,0,32,.LN4-PL0_ReadName		# line 32, column 7
	cmpb	$127,PL0_s
	jne	.Lab7
.Lab6:
.LN5:
	.stabn  68,0,33,.LN5-PL0_ReadName		# line 33, column 10
	cmpl	$1,-8(%ebp)
	jbe	.Lab8
.Lab9:
.LN6:
	.stabn  68,0,33,.LN6-PL0_ReadName		# line 33, column 24
	pushl	$127
	pushl	FileIO_s + 16
	call	FileIO_Write
	addl	$8, %esp
.LN7:
	.stabn  68,0,33,.LN7-PL0_ReadName		# line 33, column 46
	decl	-8(%ebp)
.Lab8:
	jmp	.Lab5
.Lab7:
.LN8:
	.stabn  68,0,34,.LN8-PL0_ReadName		# line 34, column 10
	cmpl	$27,-8(%ebp)
	jae	.Lab10
.Lab11:
.LN9:
	.stabn  68,0,35,.LN9-PL0_ReadName		# line 35, column 23
	movzbl	PL0_s,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_Write
	addl	$8, %esp
.LN10:
	.stabn  68,0,36,.LN10-PL0_ReadName		# line 36, column 35
	movl	-8(%ebp),%ebx
	cmpl	$27,%ebx
	jbe	.Lab12
.Lab13:
   	call	BoundErr_		
.Lab12:
	movb	PL0_s,%al
	movb	%al,PL0_s + 1(%ebx) 
.LN11:
	.stabn  68,0,36,.LN11-PL0_ReadName		# line 36, column 44
	incl	-8(%ebp)
.Lab10:
.Lab5:
.LN12:
	.stabn  68,0,38,.LN12-PL0_ReadName		# line 38, column 10
	leal	PL0_s,%eax
	pushl	%eax
	pushl	FileIO_s + 12
	call	FileIO_Read
	addl	$8, %esp
.Lab2:
.LN13:
	.stabn  68,0,31,.LN13-PL0_ReadName		# line 31, column 21
	movb	PL0_s,%al
	cmpb	$97,%al
	jl	.Lab18
	cmpb	$122,%al
	jg	.Lab18
	subb	$32,%al
.Lab18:
	cmpb	$65,%al
	jb	.Lab16
.Lab17:
	movb	PL0_s,%al
	cmpb	$97,%al
	jl	.Lab19
	cmpb	$122,%al
	jg	.Lab19
	subb	$32,%al
.Lab19:
	cmpb	$90,%al
	jbe	.Lab3
.Lab16:
	cmpb	$48,PL0_s
	jb	.Lab15
.Lab20:
	cmpb	$57,PL0_s
	jbe	.Lab3
.Lab15:
	cmpb	$46,PL0_s
	je	.Lab3
.Lab14:
	cmpb	$127,PL0_s
	je	.Lab3
.Lab4:
.LN14:
	.stabn  68,0,40,.LN14-PL0_ReadName		# line 40, column 6
	cmpl	$0,-8(%ebp)
	jbe	.Lab21
.Lab24:
	cmpl	$27,-8(%ebp)
	jae	.Lab21
.Lab23:
	movl	-8(%ebp),%eax
 	subl	$1,%eax 
	cmpl	$27,%eax
	jbe	.Lab25
.Lab26:
   	call	BoundErr_		
.Lab25:
	cmpb	$46,PL0_s + 1(%eax)
	jne	.Lab21
.Lab22:
.LN15:
	.stabn  68,0,41,.LN15-PL0_ReadName		# line 41, column 21
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab27
.Lab28:
   	call	BoundErr_		
.Lab27:
	movb	$80,PL0_s + 1(%eax) 
.LN16:
	.stabn  68,0,41,.LN16-PL0_ReadName		# line 41, column 31
	incl	-8(%ebp)
.LN17:
	.stabn  68,0,42,.LN17-PL0_ReadName		# line 42, column 21
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab29
.Lab30:
   	call	BoundErr_		
.Lab29:
	movb	$76,PL0_s + 1(%eax) 
.LN18:
	.stabn  68,0,42,.LN18-PL0_ReadName		# line 42, column 31
	incl	-8(%ebp)
.LN19:
	.stabn  68,0,43,.LN19-PL0_ReadName		# line 43, column 21
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab31
.Lab32:
   	call	BoundErr_		
.Lab31:
	movb	$48,PL0_s + 1(%eax) 
.LN20:
	.stabn  68,0,43,.LN20-PL0_ReadName		# line 43, column 31
	incl	-8(%ebp)
.LN21:
	.stabn  68,0,44,.LN21-PL0_ReadName		# line 44, column 9
	.data
.Lab33:
 	.ascii	"PLO\000"
	.text
	pushl	$3
	leal	.Lab33,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_WriteString
	addl	$12, %esp
.Lab21:
.LN22:
	.stabn  68,0,46,.LN22-PL0_ReadName		# line 46, column 15
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab34
.Lab35:
   	call	BoundErr_		
.Lab34:
	movb	$0,PL0_s + 1(%eax) 
.LN23:
	.stabn  68,0,47,.LN23-PL0_ReadName		# line 47, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "i:4",128,0,4,-8
	.stabs "DEL:c=i127",128,0,0,0
	.stabn 192,0,0,.LBB1-PL0_ReadName
	.stabn 224,0,0,.LBE1-PL0_ReadName
	.stabs "PL0:F16",36,0,0,PL0
	.align 4
PL0:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab36, %esp
.LN24:
	.stabn  68,0,49,.LN24-PL0		# line 49, column 1
.LBB2:
.Lab37:
.LN25:
	.stabn  68,0,51,.LN25-PL0		# line 51, column 8
	.data
.Lab39:
 	.ascii	"in> \000"
	.text
	pushl	$4
	leal	.Lab39,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_WriteString
	addl	$12, %esp
.LN26:
	.stabn  68,0,52,.LN26-PL0		# line 52, column 8
	call	PL0_ReadName
.LN27:
	.stabn  68,0,54,.LN27-PL0		# line 54, column 4
	cmpb	$11,PL0_s
	jne	.Lab40
.Lab41:
.LN28:
	.stabn  68,0,54,.LN28-PL0		# line 54, column 21
	jmp	.Lab38
.Lab40:
.LN29:
	.stabn  68,0,55,.LN29-PL0		# line 55, column 7
	pushl	$27
	leal	PL0_s + 1,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_WriteString
	addl	$12, %esp
.LN30:
	.stabn  68,0,56,.LN30-PL0		# line 56, column 7
	pushl	$0
	pushl	$27
	leal	PL0_s + 1,%eax
	pushl	%eax
	leal	PL0Scanner_s + 12,%eax
	pushl	%eax
	call	FileIO_Open
	addl	$16, %esp
.LN31:
	.stabn  68,0,57,.LN31-PL0		# line 57, column 4
	cmpb	$0,FileIO_s
	je	.Lab44
.Lab43:
.LN32:
	.stabn  68,0,58,.LN32-PL0		# line 58, column 7
	call	PL0Scanner_InitScanner
.LN33:
	.stabn  68,0,59,.LN33-PL0		# line 59, column 7
	call	PL0Generator_InitGenerator
.LN34:
	.stabn  68,0,60,.LN34-PL0		# line 60, column 7
	call	PL0Parser_Parse
.LN35:
	.stabn  68,0,61,.LN35-PL0		# line 61, column 7
	leal	PL0Scanner_s + 12,%eax
	pushl	%eax
	call	FileIO_Close
	addl	$4, %esp
.LN36:
	.stabn  68,0,62,.LN36-PL0		# line 62, column 7
	cmpb	$0,PL0Parser_s
	je	.Lab47
.Lab46:
.LN37:
	.stabn  68,0,63,.LN37-PL0		# line 63, column 10
	.data
.Lab48:
 	.ascii	" interpreting\000"
	.text
	pushl	$13
	leal	.Lab48,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_WriteString
	addl	$12, %esp
.LN38:
	.stabn  68,0,63,.LN38-PL0		# line 63, column 47
	call	PL0Interpreter_Interpret
	jmp	.Lab45
.Lab47:
.LN39:
	.stabn  68,0,64,.LN39-PL0		# line 64, column 13
	.data
.Lab49:
 	.ascii	" incorrect\000"
	.text
	pushl	$10
	leal	.Lab49,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_WriteString
	addl	$12, %esp
.Lab45:
	jmp	.Lab42
.Lab44:
.LN40:
	.stabn  68,0,66,.LN40-PL0		# line 66, column 9
	.data
.Lab50:
 	.ascii	" not found\000"
	.text
	pushl	$10
	leal	.Lab50,%eax
	pushl	%eax
	pushl	FileIO_s + 16
	call	FileIO_WriteString
	addl	$12, %esp
.Lab42:
.LN41:
	.stabn  68,0,68,.LN41-PL0		# line 68, column 3
	pushl	FileIO_s + 16
	call	FileIO_WriteLn
	addl	$4, %esp
	jmp	.Lab37
.Lab38:
.LN42:
	.stabn  68,0,71,.LN42-PL0		# line 71, column 1
	call	PL0Scanner_CloseScanner
.LN43:
	.stabn  68,0,71,.LN43-PL0		# line 71, column 15
	call	PL0Parser_EndParser
.LN44:
	.stabn  68,0,71,.LN44-PL0		# line 71, column 26
	call	PL0Generator_EndGenerator
.LN45:
	.stabn  68,0,71,.LN45-PL0		# line 71, column 40
	call	PL0Interpreter_EndInterpreter
.LN46:
	.stabn  68,0,72,.LN46-PL0		# line 72, column 0
.LBE2:
	leave
	ret
	.Lab36 = 4
	.stabs "NL:c=i27",128,0,0,0
	.stabn 192,0,0,.LBB2-PL0
	.stabn 224,0,0,.LBE2-PL0
	.stabs "PL0_s:Gs29FileName:17=ar4;0;27;2,8,224;ch:2,0,8;;",32,0,0,0
