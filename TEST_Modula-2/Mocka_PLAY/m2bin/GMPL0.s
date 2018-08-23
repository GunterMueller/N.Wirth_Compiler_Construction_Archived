	.comm GMPL0_s, 36
	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER/GM_N.Wirth_Compiler_Construction/Modula-2/Mocka_PLAY/",100,0,0,.LBB0
	.stabs "GMPL0.mod",100,0,0,.LBB0
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
	.globl	GMPL0
	.globl	GMPL0_ReadName
	.stabs "GMPL0_ReadName:F16",36,0,0,GMPL0_ReadName
	.align 4
GMPL0_ReadName:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,17,.LN1-GMPL0_ReadName		# line 17, column 2
.LBB1:
.LN2:
	.stabn  68,0,17,.LN2-GMPL0_ReadName		# line 17, column 8
	leal	GMPL0_s,%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.LN3:
	.stabn  68,0,17,.LN3-GMPL0_ReadName		# line 17, column 19
	movl	$1,-8(%ebp) 
	jmp	.Lab2
.Lab3:
.LN4:
	.stabn  68,0,21,.LN4-GMPL0_ReadName		# line 21, column 7
	cmpb	$127,GMPL0_s
	jne	.Lab7
.Lab6:
.LN5:
	.stabn  68,0,22,.LN5-GMPL0_ReadName		# line 22, column 10
	cmpl	$1,-8(%ebp)
	jbe	.Lab8
.Lab9:
.LN6:
	.stabn  68,0,22,.LN6-GMPL0_ReadName		# line 22, column 24
	pushl	$127
	call	InOut_Write
	addl	$4, %esp
.LN7:
	.stabn  68,0,22,.LN7-GMPL0_ReadName		# line 22, column 39
	decl	-8(%ebp)
.Lab8:
	jmp	.Lab5
.Lab7:
.LN8:
	.stabn  68,0,23,.LN8-GMPL0_ReadName		# line 23, column 10
	cmpl	$27,-8(%ebp)
	jae	.Lab10
.Lab11:
.LN9:
	.stabn  68,0,24,.LN9-GMPL0_ReadName		# line 24, column 12
	movzbl	GMPL0_s,%eax
	pushl	%eax
	call	InOut_Write
	addl	$4, %esp
.LN10:
	.stabn  68,0,24,.LN10-GMPL0_ReadName		# line 24, column 35
	movl	-8(%ebp),%ebx
	cmpl	$27,%ebx
	jbe	.Lab12
.Lab13:
   	call	BoundErr_		
.Lab12:
	movb	GMPL0_s,%al
	movb	%al,GMPL0_s + 1(%ebx) 
.LN11:
	.stabn  68,0,24,.LN11-GMPL0_ReadName		# line 24, column 44
	incl	-8(%ebp)
.Lab10:
.Lab5:
.LN12:
	.stabn  68,0,26,.LN12-GMPL0_ReadName		# line 26, column 7
	leal	GMPL0_s,%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.Lab2:
.LN13:
	.stabn  68,0,20,.LN13-GMPL0_ReadName		# line 20, column 25
	movb	GMPL0_s,%al
	cmpb	$97,%al
	jl	.Lab18
	cmpb	$122,%al
	jg	.Lab18
	subb	$32,%al
.Lab18:
	cmpb	$65,%al
	jb	.Lab16
.Lab17:
	movb	GMPL0_s,%al
	cmpb	$97,%al
	jl	.Lab19
	cmpb	$122,%al
	jg	.Lab19
	subb	$32,%al
.Lab19:
	cmpb	$90,%al
	jbe	.Lab3
.Lab16:
	cmpb	$48,GMPL0_s
	jb	.Lab15
.Lab20:
	cmpb	$57,GMPL0_s
	jbe	.Lab3
.Lab15:
	cmpb	$46,GMPL0_s
	je	.Lab3
.Lab14:
	cmpb	$127,GMPL0_s
	je	.Lab3
.Lab4:
.LN14:
	.stabn  68,0,28,.LN14-GMPL0_ReadName		# line 28, column 6
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
	cmpb	$46,GMPL0_s + 1(%eax)
	jne	.Lab21
.Lab22:
.LN15:
	.stabn  68,0,29,.LN15-GMPL0_ReadName		# line 29, column 21
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab27
.Lab28:
   	call	BoundErr_		
.Lab27:
	movb	$80,GMPL0_s + 1(%eax) 
.LN16:
	.stabn  68,0,29,.LN16-GMPL0_ReadName		# line 29, column 31
	incl	-8(%ebp)
.LN17:
	.stabn  68,0,30,.LN17-GMPL0_ReadName		# line 30, column 21
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab29
.Lab30:
   	call	BoundErr_		
.Lab29:
	movb	$76,GMPL0_s + 1(%eax) 
.LN18:
	.stabn  68,0,30,.LN18-GMPL0_ReadName		# line 30, column 31
	incl	-8(%ebp)
.LN19:
	.stabn  68,0,31,.LN19-GMPL0_ReadName		# line 31, column 21
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab31
.Lab32:
   	call	BoundErr_		
.Lab31:
	movb	$48,GMPL0_s + 1(%eax) 
.LN20:
	.stabn  68,0,31,.LN20-GMPL0_ReadName		# line 31, column 31
	incl	-8(%ebp)
.LN21:
	.stabn  68,0,31,.LN21-GMPL0_ReadName		# line 31, column 39
	.data
.Lab33:
 	.ascii	"PLO\000"
	.text
	pushl	$3
	leal	.Lab33,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.Lab21:
.LN22:
	.stabn  68,0,33,.LN22-GMPL0_ReadName		# line 33, column 17
	movl	-8(%ebp),%eax
	cmpl	$27,%eax
	jbe	.Lab34
.Lab35:
   	call	BoundErr_		
.Lab34:
	movb	$0,GMPL0_s + 1(%eax) 
.LN23:
	.stabn  68,0,34,.LN23-GMPL0_ReadName		# line 34, column 5
	.data
.Lab36:
 	.ascii	"ReadName - FileName = \000"
	.text
	pushl	$22
	leal	.Lab36,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN24:
	.stabn  68,0,34,.LN24-GMPL0_ReadName		# line 34, column 43
	pushl	$27
	leal	GMPL0_s + 1,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN25:
	.stabn  68,0,34,.LN25-GMPL0_ReadName		# line 34, column 65
	.data
.Lab37:
 	.ascii	" not found\000"
	.text
	pushl	$10
	leal	.Lab37,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN26:
	.stabn  68,0,34,.LN26-GMPL0_ReadName		# line 34, column 92
	call	InOut_WriteLn
.LN27:
	.stabn  68,0,35,.LN27-GMPL0_ReadName		# line 35, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "i:4",128,0,4,-8
	.stabs "DEL:c=i127",128,0,0,0
	.stabn 192,0,0,.LBB1-GMPL0_ReadName
	.stabn 224,0,0,.LBE1-GMPL0_ReadName
	.stabs "GMPL0:F16",36,0,0,GMPL0
	.align 4
GMPL0:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab38, %esp
.LN28:
	.stabn  68,0,37,.LN28-GMPL0		# line 37, column 1
.LBB2:
.Lab39:
.LN29:
	.stabn  68,0,39,.LN29-GMPL0		# line 39, column 7
	.data
.Lab41:
 	.ascii	"in> \000"
	.text
	pushl	$4
	leal	.Lab41,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN30:
	.stabn  68,0,40,.LN30-GMPL0		# line 40, column 4
	call	GMPL0_ReadName
.LN31:
	.stabn  68,0,41,.LN31-GMPL0		# line 41, column 4
	cmpb	$27,GMPL0_s
	jne	.Lab42
.Lab43:
.LN32:
	.stabn  68,0,41,.LN32-GMPL0		# line 41, column 21
	jmp	.Lab40
.Lab42:
.LN33:
	.stabn  68,0,42,.LN33-GMPL0		# line 42, column 7
	pushl	$0
	pushl	$27
	leal	GMPL0_s + 1,%eax
	pushl	%eax
	leal	GMPL0_s + 32,%eax
	pushl	%eax
	call	FileIO_Open
	addl	$16, %esp
.LN34:
	.stabn  68,0,43,.LN34-GMPL0		# line 43, column 4
	cmpb	$0,FileIO_s
	je	.Lab46
.Lab45:
.LN35:
	.stabn  68,0,44,.LN35-GMPL0		# line 44, column 7
	leal	GMPL0_s + 32,%eax
	pushl	%eax
	call	FileIO_Close
	addl	$4, %esp
.LN36:
	.stabn  68,0,45,.LN36-GMPL0		# line 45, column 8
	.data
.Lab47:
 	.ascii	" interpreting\000"
	.text
	pushl	$13
	leal	.Lab47,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab44
.Lab46:
.LN37:
	.stabn  68,0,46,.LN37-GMPL0		# line 46, column 9
	call	InOut_WriteLn
.LN38:
	.stabn  68,0,46,.LN38-GMPL0		# line 46, column 17
	.data
.Lab48:
 	.ascii	"FileName = \000"
	.text
	pushl	$11
	leal	.Lab48,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN39:
	.stabn  68,0,46,.LN39-GMPL0		# line 46, column 44
	pushl	$27
	leal	GMPL0_s + 1,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN40:
	.stabn  68,0,46,.LN40-GMPL0		# line 46, column 66
	.data
.Lab49:
 	.ascii	" not found\000"
	.text
	pushl	$10
	leal	.Lab49,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN41:
	.stabn  68,0,46,.LN41-GMPL0		# line 46, column 93
	call	InOut_WriteLn
.Lab44:
.LN42:
	.stabn  68,0,48,.LN42-GMPL0		# line 48, column 3
	call	InOut_WriteLn
	jmp	.Lab39
.Lab40:
.LN43:
	.stabn  68,0,49,.LN43-GMPL0		# line 49, column 0
.LBE2:
	leave
	ret
	.Lab38 = 4
	.stabs "File:t17=15",128,0,0,0
	.stabs "NL:c=i27",128,0,0,0
	.stabn 192,0,0,.LBB2-GMPL0
	.stabn 224,0,0,.LBE2-GMPL0
	.stabs "GMPL0_s:Gs36source:17,256,32;FileName:18=ar4;0;27;2,8,224;ch:2,0,8;;",32,0,0,0
