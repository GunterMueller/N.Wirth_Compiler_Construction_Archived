	.comm FileIO_s, 928
	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER/N.Wirth_Compiler_Construction/Modula-2/Mocka_PLAY/",100,0,0,.LBB0
	.stabs "FileIO.mod",100,0,0,.LBB0
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
	.globl	Storage_DEALLOCATE
	.globl	Storage_ALLOCATE
	.globl	GetEnv
	.globl	GetArgs
	.globl	clock
	.globl	localtime
	.globl	tcsetattr
	.globl	tcgetattr
	.globl	atexit
	.globl	lseek
	.globl	getenv
	.globl	abort
	.globl	exit
	.globl	system
	.globl	times
	.globl	time
	.globl	fstat
	.globl	stat
	.globl	free
	.globl	malloc
	.globl	sbrk
	.globl	write
	.globl	read
	.globl	unlink
	.globl	close
	.globl	open
	.globl	creat
	.globl	access
	.globl	umask
	.globl	Strings1_CAPS
	.globl	Strings1_compare
	.globl	Strings1_Concat
	.globl	Strings1_Copy
	.globl	Strings1_pos
	.globl	Strings1_Delete
	.globl	Strings1_Insert
	.globl	Strings1_Length
	.globl	Strings1_StrEq
	.globl	Strings1_Append
	.globl	Strings1_Assign
	.globl	Strings1_EmptyString
	.globl	FileIO
	.globl	FileIO_QuitExecution
	.globl	FileIO_CloseAll
	.globl	FileIO_InitTTY
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
	.globl	FileIO_Write2
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
	.globl	FileIO_SearchFile
	.globl	FileIO_Delete
	.globl	FileIO_Close
	.globl	FileIO_Open
	.globl	FileIO_GetEnv
	.globl	FileIO_NextParameter
	.globl	FileIO_ASCIIZ
	.globl	FileIO_NotFile
	.globl	FileIO_NotWrite
	.globl	FileIO_NotRead
	.globl	FileIO_ErrWrite
	.globl	FileIO_ConWrite
	.globl	FileIO_ConRead
	.globl	FileIO_BuffIO
	.globl	FileIO_BuffIO_SetPos
	.globl	FileIO_BuffIO_GetPos
	.globl	FileIO_BuffIO_FillBuffer
	.globl	FileIO_BuffIO_EmitBuffer
	.globl	FileIO_BuffIO_PutBf
	.globl	FileIO_BuffIO_PutBytes
	.globl	FileIO_BuffIO_PutByte
	.globl	FileIO_BuffIO_GetBytes
	.globl	FileIO_BuffIO_GetByte
	.globl	FileIO_BuffIO_FlushBuffer
	.globl	FileIO_BuffIO_Close
	.globl	FileIO_BuffIO_OpenOutput
	.globl	FileIO_BuffIO_OpenInput
	.stabs "FileIO_QuitExecution:F16",36,0,0,FileIO_QuitExecution
	.align 4
FileIO_QuitExecution:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,1012,.LN1-FileIO_QuitExecution		# line 1012, column 3
.LBB1:
.LN2:
	.stabn  68,0,1013,.LN2-FileIO_QuitExecution		# line 1013, column 5
	call	exit_
.LN3:
	.stabn  68,0,1014,.LN3-FileIO_QuitExecution		# line 1014, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-FileIO_QuitExecution
	.stabn 224,0,0,.LBE1-FileIO_QuitExecution
	.stabs "FileIO_CloseAll:F16",36,0,0,FileIO_CloseAll
	.align 4
FileIO_CloseAll:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN4:
	.stabn  68,0,1003,.LN4-FileIO_CloseAll		# line 1003, column 3
.LBB2:
.LN5:
	.stabn  68,0,1004,.LN5-FileIO_CloseAll		# line 1004, column 5
	movl	$0,-8(%ebp) 
.Lab3:
.LN6:
	.stabn  68,0,1005,.LN6-FileIO_CloseAll		# line 1005, column 7
	movl	-8(%ebp),%eax
	cmpl	$31,%eax
	jbe	.Lab7
.Lab8:
   	call	BoundErr_		
.Lab7:
	btl	%eax,FileIO_s + 24
	jnc	.Lab5
.Lab6:
.LN7:
	.stabn  68,0,1005,.LN7-FileIO_CloseAll		# line 1005, column 33
	movl	-8(%ebp),%eax
	cmpl	$15,%eax
	jbe	.Lab9
.Lab10:
   	call	BoundErr_		
.Lab9:
	movl	FileIO_s + 28(,%eax,4),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_FlushBuffer
	addl	$4, %esp
.Lab5:
.LN8:
	.stabn  68,0,1004,.LN8-FileIO_CloseAll		# line 1004, column 5
	cmpl	$15,-8(%ebp)
	jae	.Lab4
	incl	-8(%ebp) 
	jmp	.Lab3
.Lab4:
.LN9:
	.stabn  68,0,1007,.LN9-FileIO_CloseAll		# line 1007, column 5
	cmpb	$1,FileIO_s + 93
	je	.Lab11
.Lab12:
.LN10:
	.stabn  68,0,1007,.LN10-FileIO_CloseAll		# line 1007, column 24
	pushl	$1
	call	FileIO_BuffIO_FlushBuffer
	addl	$4, %esp
.Lab11:
.LN11:
	.stabn  68,0,1008,.LN11-FileIO_CloseAll		# line 1008, column 11
	leal	FileIO_s + 116,%eax
	pushl	%eax
	pushl	$0
	pushl	FileIO_s + 112
	call	tcsetattr
	addl	$12, %esp
	movl	%eax,FileIO_s + 236 
.LN12:
	.stabn  68,0,1009,.LN12-FileIO_CloseAll		# line 1009, column 0
.LBE2:
	leave
	ret
	.Lab2 = 8
	.stabs "handle:4",128,0,4,-8
	.stabn 192,0,0,.LBB2-FileIO_CloseAll
	.stabn 224,0,0,.LBE2-FileIO_CloseAll
	.stabs "FileIO_InitTTY:F16",36,0,0,FileIO_InitTTY
	.align 4
FileIO_InitTTY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab13, %esp
.LN13:
	.stabn  68,0,985,.LN13-FileIO_InitTTY		# line 985, column 3
.LBB3:
.LN14:
	.stabn  68,0,986,.LN14-FileIO_InitTTY		# line 986, column 5
	.data
.Lab14:
 	.ascii	"/dev/tty\000"
	.text
	pushl	$8
	leal	.Lab14,%eax
	pushl	%eax
	pushl	$30
	leal	-35(%ebp),%eax
	pushl	%eax
	call	Strings1_Assign
	addl	$16, %esp
.LN15:
	.stabn  68,0,987,.LN15-FileIO_InitTTY		# line 987, column 12
	pushl	$2
	leal	-35(%ebp),%eax
	pushl	%eax
	call	open
	addl	$8, %esp
	movl	%eax,FileIO_s + 112 
.LN16:
	.stabn  68,0,988,.LN16-FileIO_InitTTY		# line 988, column 11
	leal	FileIO_s + 116,%eax
	pushl	%eax
	pushl	FileIO_s + 112
	call	tcgetattr
	addl	$8, %esp
	movl	%eax,FileIO_s + 236 
.LN17:
	.stabn  68,0,989,.LN17-FileIO_InitTTY		# line 989, column 11
	movb	FileIO_s + 135,%al
	movb	%al,FileIO_s + 108 
.LN18:
	.stabn  68,0,990,.LN18-FileIO_InitTTY		# line 990, column 10
	movb	FileIO_s + 136,%al
	movb	%al,FileIO_s + 109 
.LN19:
	.stabn  68,0,991,.LN19-FileIO_InitTTY		# line 991, column 13
	movb	FileIO_s + 137,%al
	movb	%al,FileIO_s + 20 
.LN20:
	.stabn  68,0,992,.LN20-FileIO_InitTTY		# line 992, column 10
	movb	FileIO_s + 133,%al
	movb	%al,FileIO_s + 110 
.LN21:
	.stabn  68,0,993,.LN21-FileIO_InitTTY		# line 993, column 18
	btl	$0,FileIO_s + 128
	setb	%al
	movb	%al,FileIO_s + 94 
.LN22:
	.stabn  68,0,994,.LN22-FileIO_InitTTY		# line 994, column 15
	leal	FileIO_s + 116,%esi
	leal	FileIO_s + 156,%edi
	movl	$9,%ecx
	cld
	repz
	movsl
	movsb
.LN23:
	.stabn  68,0,995,.LN23-FileIO_InitTTY		# line 995, column 5
	btrl	$0,FileIO_s + 168 
.LN24:
	.stabn  68,0,996,.LN24-FileIO_InitTTY		# line 996, column 5
	btrl	$1,FileIO_s + 168 
.LN25:
	.stabn  68,0,997,.LN25-FileIO_InitTTY		# line 997, column 5
	btrl	$3,FileIO_s + 168 
.LN26:
	.stabn  68,0,998,.LN26-FileIO_InitTTY		# line 998, column 0
.LBE3:
	leave
	ret
	.Lab13 = 36
	.stabs "termName:17=ar4;0;30;2",128,0,31,-35
	.stabn 192,0,0,.LBB3-FileIO_InitTTY
	.stabn 224,0,0,.LBE3-FileIO_InitTTY
	.stabs "FileIO_INT:F7",36,0,0,FileIO_INT
	.align 4
FileIO_INT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab15, %esp
.LN27:
	.stabn  68,0,980,.LN27-FileIO_INT		# line 980, column 4
.LBB4:
.LN28:
	.stabn  68,0,980,.LN28-FileIO_INT		# line 980, column 10
	movl	8(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab16
.Lab17:
   	call	BoundErr_		
.Lab16:
	leave
	ret
.LN29:
	.stabn  68,0,981,.LN29-FileIO_INT		# line 981, column 0
	call	ReturnErr_
.LBE4:
	leave
	ret
	.Lab15 = 4
	.stabs "n:p4",160,0,4,8
	.stabn 192,0,0,.LBB4-FileIO_INT
	.stabn 224,0,0,.LBE4-FileIO_INT
	.stabs "FileIO_INTL:F7",36,0,0,FileIO_INTL
	.align 4
FileIO_INTL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab18, %esp
.LN30:
	.stabn  68,0,977,.LN30-FileIO_INTL		# line 977, column 4
.LBB5:
.LN31:
	.stabn  68,0,977,.LN31-FileIO_INTL		# line 977, column 10
	movl	8(%ebp),%eax
	leave
	ret
.LN32:
	.stabn  68,0,978,.LN32-FileIO_INTL		# line 978, column 0
	call	ReturnErr_
.LBE5:
	leave
	ret
	.Lab18 = 4
	.stabs "n:p7",160,0,4,8
	.stabn 192,0,0,.LBB5-FileIO_INTL
	.stabn 224,0,0,.LBE5-FileIO_INTL
	.stabs "FileIO_ORDL:F4",36,0,0,FileIO_ORDL
	.align 4
FileIO_ORDL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab19, %esp
.LN33:
	.stabn  68,0,974,.LN33-FileIO_ORDL		# line 974, column 4
.LBB6:
.LN34:
	.stabn  68,0,974,.LN34-FileIO_ORDL		# line 974, column 10
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab20:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab20
	leave
	ret
.LN35:
	.stabn  68,0,975,.LN35-FileIO_ORDL		# line 975, column 0
	call	ReturnErr_
.LBE6:
	leave
	ret
	.Lab19 = 4
	.stabs "n:p7",160,0,4,8
	.stabn 192,0,0,.LBB6-FileIO_ORDL
	.stabn 224,0,0,.LBE6-FileIO_ORDL
	.stabs "FileIO_Compare:F7",36,0,0,FileIO_Compare
	.align 4
FileIO_Compare:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab21, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
	movl	20(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	16(%ebp),%esi
	movl	%edi,16(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN36:
	.stabn  68,0,969,.LN36-FileIO_Compare		# line 969, column 3
.LBB7:
.LN37:
	.stabn  68,0,970,.LN37-FileIO_Compare		# line 970, column 5
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Strings1_compare
	addl	$16, %esp
	leave
	ret
.LN38:
	.stabn  68,0,971,.LN38-FileIO_Compare		# line 971, column 0
	call	ReturnErr_
.LBE7:
	leave
	ret
	.Lab21 = 4
	.stabs "stringVal2:p18=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "stringVal1:p18",160,0,8,8
	.stabn 192,0,0,.LBB7-FileIO_Compare
	.stabn 224,0,0,.LBE7-FileIO_Compare
	.stabs "FileIO_Concat:F16",36,0,0,FileIO_Concat
	.align 4
FileIO_Concat:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab22, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
	movl	20(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	16(%ebp),%esi
	movl	%edi,16(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN39:
	.stabn  68,0,960,.LN39-FileIO_Concat		# line 960, column 3
.LBB8:
.LN40:
	.stabn  68,0,961,.LN40-FileIO_Concat		# line 961, column 5
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Strings1_Concat
	addl	$24, %esp
.LN41:
	.stabn  68,0,962,.LN41-FileIO_Concat		# line 962, column 0
.LBE8:
	leave
	ret
	.Lab22 = 4
	.stabs "destination:p19=s8start:*2,0,32;high:5,32,32;;",160,0,8,24
	.stabs "source2:p20=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "source1:p20",160,0,8,8
	.stabn 192,0,0,.LBB8-FileIO_Concat
	.stabn 224,0,0,.LBE8-FileIO_Concat
	.stabs "FileIO_Extract:F16",36,0,0,FileIO_Extract
	.align 4
FileIO_Extract:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab23, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN42:
	.stabn  68,0,955,.LN42-FileIO_Extract		# line 955, column 3
.LBB9:
.LN43:
	.stabn  68,0,956,.LN43-FileIO_Extract		# line 956, column 5
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Strings1_Copy
	addl	$24, %esp
.LN44:
	.stabn  68,0,957,.LN44-FileIO_Extract		# line 957, column 0
.LBE9:
	leave
	ret
	.Lab23 = 4
	.stabs "destination:p21=s8start:*2,0,32;high:5,32,32;;",160,0,8,24
	.stabs "numberToExtract:p4",160,0,4,20
	.stabs "startIndex:p4",160,0,4,16
	.stabs "source:p22=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB9-FileIO_Extract
	.stabn 224,0,0,.LBE9-FileIO_Extract
	.stabs "FileIO_Assign:F16",36,0,0,FileIO_Assign
	.align 4
FileIO_Assign:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab24, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN45:
	.stabn  68,0,948,.LN45-FileIO_Assign		# line 948, column 3
.LBB10:
.LN46:
	.stabn  68,0,950,.LN46-FileIO_Assign		# line 950, column 5
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	Strings1_Assign
	addl	$16, %esp
.LN47:
	.stabn  68,0,951,.LN47-FileIO_Assign		# line 951, column 0
.LBE10:
	leave
	ret
	.Lab24 = 4
	.stabs "destination:p23=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "source:p24=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB10-FileIO_Assign
	.stabn 224,0,0,.LBE10-FileIO_Assign
	.stabs "FileIO_SLENGTH:F4",36,0,0,FileIO_SLENGTH
	.align 4
FileIO_SLENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab25, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN48:
	.stabn  68,0,943,.LN48-FileIO_SLENGTH		# line 943, column 3
.LBB11:
.LN49:
	.stabn  68,0,944,.LN49-FileIO_SLENGTH		# line 944, column 5
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Strings1_Length
	addl	$8, %esp
	leave
	ret
.LN50:
	.stabn  68,0,945,.LN50-FileIO_SLENGTH		# line 945, column 0
	call	ReturnErr_
.LBE11:
	leave
	ret
	.Lab25 = 4
	.stabs "stringVal:p25=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB11-FileIO_SLENGTH
	.stabn 224,0,0,.LBE11-FileIO_SLENGTH
	.stabs "FileIO_WriteExecutionTime:F16",36,0,0,FileIO_WriteExecutionTime
	.align 4
FileIO_WriteExecutionTime:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab26, %esp
.LN51:
	.stabn  68,0,926,.LN51-FileIO_WriteExecutionTime		# line 926, column 3
.LBB12:
.LN52:
	.stabn  68,0,927,.LN52-FileIO_WriteExecutionTime		# line 927, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab27
.Lab28:
.LN53:
	.stabn  68,0,927,.LN53-FileIO_WriteExecutionTime		# line 927, column 30
	movb	$0,FileIO_s 
.LN54:
	.stabn  68,0,927,.LN54-FileIO_WriteExecutionTime		# line 927, column 40
	leave
	ret
.Lab27:
.LN55:
	.stabn  68,0,928,.LN55-FileIO_WriteExecutionTime		# line 928, column 13
	call	clock
	movl	%eax,-8(%ebp) 
.LN56:
	.stabn  68,0,929,.LN56-FileIO_WriteExecutionTime		# line 929, column 5
	.data
.Lab29:
 	.ascii	"Execution time: \000"
	.text
	pushl	$16
	leal	.Lab29,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_WriteString
	addl	$12, %esp
.LN57:
	.stabn  68,0,930,.LN57-FileIO_WriteExecutionTime		# line 930, column 10
	movl	-8(%ebp),%eax
 	subl	FileIO_s + 920,%eax 
	movl	%eax,-12(%ebp) 
.LN58:
	.stabn  68,0,931,.LN58-FileIO_WriteExecutionTime		# line 931, column 10
	movl	-12(%ebp),%eax
	movl	$100,%ebx
	cdq
	idivl	%ebx
	movl	%eax,-16(%ebp) 
.LN59:
	.stabn  68,0,932,.LN59-FileIO_WriteExecutionTime		# line 932, column 5
	pushl	$1
	pushl	-16(%ebp)
	pushl	8(%ebp)
	call	FileIO_WriteInt
	addl	$12, %esp
.LN60:
	.stabn  68,0,933,.LN60-FileIO_WriteExecutionTime		# line 933, column 5
	pushl	$46
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN61:
	.stabn  68,0,934,.LN61-FileIO_WriteExecutionTime		# line 934, column 5
	movl	-12(%ebp),%ebx
	imull	$100,-16(%ebp),%eax 
 	subl	%eax,%ebx 
	.data
	.align 4
.Lab30:
	.long	0,2147483647
	.text
	boundl	%ebx,.Lab30
	pushl	%ebx
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN62:
	.stabn  68,0,935,.LN62-FileIO_WriteExecutionTime		# line 935, column 5
	.data
.Lab31:
 	.ascii	" s\000"
	.text
	pushl	$2
	leal	.Lab31,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_WriteString
	addl	$12, %esp
.LN63:
	.stabn  68,0,935,.LN63-FileIO_WriteExecutionTime		# line 935, column 27
	pushl	8(%ebp)
	call	FileIO_WriteLn
	addl	$4, %esp
.LN64:
	.stabn  68,0,936,.LN64-FileIO_WriteExecutionTime		# line 936, column 0
.LBE12:
	leave
	ret
	.Lab26 = 16
	.stabs "Secs:7",128,0,4,-16
	.stabs "Diff:7",128,0,4,-12
	.stabs "TimeNow:7",128,0,4,-8
	.stabs "FileRec:t27=s276name:28=ar4;0;256;2,152,2056;haveCh:1,144,8;noInput:1,136,8;noOutput:1,128,8;eol:1,120,8;eof:1,112,8;textOK:1,104,8;savedCh:2,96,8;handle:4,64,32;self:26,32,32;ref:7,0,32;;",128,0,0,0
	.stabs "File:t26=*27",128,0,0,0
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB12-FileIO_WriteExecutionTime
	.stabn 224,0,0,.LBE12-FileIO_WriteExecutionTime
	.stabs "FileIO_WriteElapsedTime:F16",36,0,0,FileIO_WriteElapsedTime
	.align 4
FileIO_WriteElapsedTime:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab32, %esp
.LN65:
	.stabn  68,0,910,.LN65-FileIO_WriteElapsedTime		# line 910, column 3
.LBB13:
.LN66:
	.stabn  68,0,911,.LN66-FileIO_WriteElapsedTime		# line 911, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab33
.Lab34:
.LN67:
	.stabn  68,0,911,.LN67-FileIO_WriteElapsedTime		# line 911, column 30
	movb	$0,FileIO_s 
.LN68:
	.stabn  68,0,911,.LN68-FileIO_WriteElapsedTime		# line 911, column 40
	leave
	ret
.Lab33:
.LN69:
	.stabn  68,0,912,.LN69-FileIO_WriteElapsedTime		# line 912, column 13
	call	clock
	movl	%eax,-8(%ebp) 
.LN70:
	.stabn  68,0,913,.LN70-FileIO_WriteElapsedTime		# line 913, column 5
	.data
.Lab35:
 	.ascii	"Elapsed time: \000"
	.text
	pushl	$14
	leal	.Lab35,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_WriteString
	addl	$12, %esp
.LN71:
	.stabn  68,0,914,.LN71-FileIO_WriteElapsedTime		# line 914, column 10
	movl	-8(%ebp),%eax
 	subl	FileIO_s + 924,%eax 
	movl	%eax,-12(%ebp) 
.LN72:
	.stabn  68,0,915,.LN72-FileIO_WriteElapsedTime		# line 915, column 10
	movl	-12(%ebp),%eax
	movl	$100,%ebx
	cdq
	idivl	%ebx
	movl	%eax,-16(%ebp) 
.LN73:
	.stabn  68,0,916,.LN73-FileIO_WriteElapsedTime		# line 916, column 5
	pushl	$1
	pushl	-16(%ebp)
	pushl	8(%ebp)
	call	FileIO_WriteInt
	addl	$12, %esp
.LN74:
	.stabn  68,0,917,.LN74-FileIO_WriteElapsedTime		# line 917, column 5
	pushl	$46
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN75:
	.stabn  68,0,918,.LN75-FileIO_WriteElapsedTime		# line 918, column 5
	movl	-12(%ebp),%ebx
	imull	$100,-16(%ebp),%eax 
 	subl	%eax,%ebx 
	.data
	.align 4
.Lab36:
	.long	0,2147483647
	.text
	boundl	%ebx,.Lab36
	pushl	%ebx
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN76:
	.stabn  68,0,919,.LN76-FileIO_WriteElapsedTime		# line 919, column 5
	.data
.Lab37:
 	.ascii	" s\000"
	.text
	pushl	$2
	leal	.Lab37,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_WriteString
	addl	$12, %esp
.LN77:
	.stabn  68,0,919,.LN77-FileIO_WriteElapsedTime		# line 919, column 27
	pushl	8(%ebp)
	call	FileIO_WriteLn
	addl	$4, %esp
.LN78:
	.stabn  68,0,920,.LN78-FileIO_WriteElapsedTime		# line 920, column 11
	movl	-8(%ebp),%eax
	movl	%eax,FileIO_s + 924 
.LN79:
	.stabn  68,0,921,.LN79-FileIO_WriteElapsedTime		# line 921, column 0
.LBE13:
	leave
	ret
	.Lab32 = 16
	.stabs "Secs:7",128,0,4,-16
	.stabs "Diff:7",128,0,4,-12
	.stabs "TimeNow:7",128,0,4,-8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB13-FileIO_WriteElapsedTime
	.stabn 224,0,0,.LBE13-FileIO_WriteElapsedTime
	.stabs "FileIO_WriteTime:F16",36,0,0,FileIO_WriteTime
	.align 4
FileIO_WriteTime:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab38, %esp
.LN80:
	.stabn  68,0,896,.LN80-FileIO_WriteTime		# line 896, column 3
.LBB14:
.LN81:
	.stabn  68,0,897,.LN81-FileIO_WriteTime		# line 897, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab39
.Lab40:
.LN82:
	.stabn  68,0,897,.LN82-FileIO_WriteTime		# line 897, column 30
	movb	$0,FileIO_s 
.LN83:
	.stabn  68,0,897,.LN83-FileIO_WriteTime		# line 897, column 40
	leave
	ret
.Lab39:
.LN84:
	.stabn  68,0,898,.LN84-FileIO_WriteTime		# line 898, column 5
	leal	-12(%ebp),%eax
	pushl	%eax
	call	time
	addl	$4, %esp
.LN85:
	.stabn  68,0,899,.LN85-FileIO_WriteTime		# line 899, column 7
	leal	-12(%ebp),%eax
	pushl	%eax
	call	localtime
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
.LN86:
	.stabn  68,0,900,.LN86-FileIO_WriteTime		# line 900, column 5
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	.data
	.align 4
.Lab41:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab41
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN87:
	.stabn  68,0,900,.LN87-FileIO_WriteTime		# line 900, column 26
	pushl	$58
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN88:
	.stabn  68,0,900,.LN88-FileIO_WriteTime		# line 900, column 41
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab42:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab42
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN89:
	.stabn  68,0,900,.LN89-FileIO_WriteTime		# line 900, column 61
	pushl	$58
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN90:
	.stabn  68,0,901,.LN90-FileIO_WriteTime		# line 901, column 5
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab43:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab43
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN91:
	.stabn  68,0,902,.LN91-FileIO_WriteTime		# line 902, column 0
.LBE14:
	leave
	ret
	.Lab38 = 12
	.stabs "TimeNow:7",128,0,4,-12
	.stabs "TIME:t29=*30=s36DST:7,256,32;YDay:7,224,32;WDay:7,192,32;Year:7,160,32;Month:7,128,32;Day:7,96,32;Hours:7,64,32;Mins:7,32,32;Secs:7,0,32;;",128,0,0,0
	.stabs "t:29",128,0,4,-8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB14-FileIO_WriteTime
	.stabn 224,0,0,.LBE14-FileIO_WriteTime
	.stabs "FileIO_WriteDate:F16",36,0,0,FileIO_WriteDate
	.align 4
FileIO_WriteDate:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab44, %esp
.LN92:
	.stabn  68,0,884,.LN92-FileIO_WriteDate		# line 884, column 3
.LBB15:
.LN93:
	.stabn  68,0,885,.LN93-FileIO_WriteDate		# line 885, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab45
.Lab46:
.LN94:
	.stabn  68,0,885,.LN94-FileIO_WriteDate		# line 885, column 30
	movb	$0,FileIO_s 
.LN95:
	.stabn  68,0,885,.LN95-FileIO_WriteDate		# line 885, column 40
	leave
	ret
.Lab45:
.LN96:
	.stabn  68,0,886,.LN96-FileIO_WriteDate		# line 886, column 5
	leal	-12(%ebp),%eax
	pushl	%eax
	call	time
	addl	$4, %esp
.LN97:
	.stabn  68,0,887,.LN97-FileIO_WriteDate		# line 887, column 7
	leal	-12(%ebp),%eax
	pushl	%eax
	call	localtime
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
.LN98:
	.stabn  68,0,888,.LN98-FileIO_WriteDate		# line 888, column 5
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	.data
	.align 4
.Lab47:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab47
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN99:
	.stabn  68,0,888,.LN99-FileIO_WriteDate		# line 888, column 24
	pushl	$47
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN100:
	.stabn  68,0,888,.LN100-FileIO_WriteDate		# line 888, column 39
	movl	-8(%ebp),%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	.data
	.align 4
.Lab48:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab48
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write2
	addl	$8, %esp
.LN101:
	.stabn  68,0,888,.LN101-FileIO_WriteDate		# line 888, column 62
	pushl	$47
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN102:
	.stabn  68,0,889,.LN102-FileIO_WriteDate		# line 889, column 5
	pushl	$1
	movl	-8(%ebp),%ebx
	movl	$1900,%eax
 	addl	20(%ebx),%eax 
	.data
	.align 4
.Lab49:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab49
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_WriteCard
	addl	$12, %esp
.LN103:
	.stabn  68,0,890,.LN103-FileIO_WriteDate		# line 890, column 0
.LBE15:
	leave
	ret
	.Lab44 = 12
	.stabs "TimeNow:7",128,0,4,-12
	.stabs "t:29",128,0,4,-8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB15-FileIO_WriteDate
	.stabn 224,0,0,.LBE15-FileIO_WriteDate
	.stabs "FileIO_Write2:F16",36,0,0,FileIO_Write2
	.align 4
FileIO_Write2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab50, %esp
.LN104:
	.stabn  68,0,875,.LN104-FileIO_Write2		# line 875, column 3
.LBB16:
.LN105:
	.stabn  68,0,876,.LN105-FileIO_Write2		# line 876, column 5
	movl	12(%ebp),%eax
	movl	$10,%ebx
	xorl	%edx,%edx
	divl	%ebx
 	addl	$48,%eax 
	cmpl	$255,%eax
	jbe	.Lab51
.Lab52:
   	call	BoundErr_		
.Lab51:
	movzbl	%al,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN106:
	.stabn  68,0,877,.LN106-FileIO_Write2		# line 877, column 5
	movl	12(%ebp),%eax
	movl	$10,%ebx
	xorl	%edx,%edx
	divl	%ebx
 	addl	$48,%edx 
	cmpl	$255,%edx
	jbe	.Lab53
.Lab54:
   	call	BoundErr_		
.Lab53:
	movzbl	%dl,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN107:
	.stabn  68,0,878,.LN107-FileIO_Write2		# line 878, column 0
.LBE16:
	leave
	ret
	.Lab50 = 4
	.stabs "i:p4",160,0,4,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB16-FileIO_Write2
	.stabn 224,0,0,.LBE16-FileIO_Write2
	.stabs "FileIO_WriteBytes:F16",36,0,0,FileIO_WriteBytes
	.align 4
FileIO_WriteBytes:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab55, %esp
.LN108:
	.stabn  68,0,862,.LN108-FileIO_WriteBytes		# line 862, column 3
.LBB17:
.LN109:
	.stabn  68,0,863,.LN109-FileIO_WriteBytes		# line 863, column 13
	cmpl	$0,20(%ebp)
	jbe	.Lab58
.Lab56:
	movl	20(%ebp),%eax
 	subl	$1,%eax 
	cmpl	16(%ebp),%eax
	jbe	.Lab58
.Lab57:
	movb	$1,-12(%ebp) 
	jmp	.Lab59
.Lab58:
	movb	$0,-12(%ebp) 
.Lab59:
	movb	-12(%ebp),%al
	movb	%al,-5(%ebp) 
.LN110:
	.stabn  68,0,864,.LN110-FileIO_WriteBytes		# line 864, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab61
.Lab64:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 4,%eax
	je	.Lab61
.Lab63:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 8,%eax
	jne	.Lab62
.Lab61:
.LN111:
	.stabn  68,0,866,.LN111-FileIO_WriteBytes		# line 866, column 14
	movb	$0,FileIO_s 
	jmp	.Lab60
.Lab62:
.LN112:
	.stabn  68,0,868,.LN112-FileIO_WriteBytes		# line 868, column 9
	cmpb	$0,-5(%ebp)
	je	.Lab65
.Lab66:
.LN113:
	.stabn  68,0,868,.LN113-FileIO_WriteBytes		# line 868, column 29
	movl	$1,%eax
 	addl	16(%ebp),%eax 
	movl	%eax,20(%ebp) 
.Lab65:
.LN114:
	.stabn  68,0,869,.LN114-FileIO_WriteBytes		# line 869, column 9
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_PutBytes
	addl	$16, %esp
.Lab60:
.LN115:
	.stabn  68,0,871,.LN115-FileIO_WriteBytes		# line 871, column 5
	cmpb	$0,-5(%ebp)
	je	.Lab67
.Lab68:
.LN116:
	.stabn  68,0,871,.LN116-FileIO_WriteBytes		# line 871, column 26
	movb	$0,FileIO_s 
.Lab67:
.LN117:
	.stabn  68,0,872,.LN117-FileIO_WriteBytes		# line 872, column 0
.LBE17:
	leave
	ret
	.Lab55 = 12
	.stabs "TooMany:1",128,0,1,-5
	.stabs "len:p4",160,0,4,20
	.stabs "buf:p31=s8start:*13,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB17-FileIO_WriteBytes
	.stabn 224,0,0,.LBE17-FileIO_WriteBytes
	.stabs "FileIO_WriteCard:F16",36,0,0,FileIO_WriteCard
	.align 4
FileIO_WriteCard:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab69, %esp
.LN118:
	.stabn  68,0,847,.LN118-FileIO_WriteCard		# line 847, column 3
.LBB18:
.LN119:
	.stabn  68,0,848,.LN119-FileIO_WriteCard		# line 848, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab70
.Lab71:
.LN120:
	.stabn  68,0,848,.LN120-FileIO_WriteCard		# line 848, column 30
	movb	$0,FileIO_s 
.LN121:
	.stabn  68,0,848,.LN121-FileIO_WriteCard		# line 848, column 40
	leave
	ret
.Lab70:
.LN122:
	.stabn  68,0,849,.LN122-FileIO_WriteCard		# line 849, column 7
	movl	$0,-8(%ebp) 
.Lab72:
.LN123:
	.stabn  68,0,851,.LN123-FileIO_WriteCard		# line 851, column 9
	movl	12(%ebp),%eax
	movl	$10,%ebx
	xorl	%edx,%edx
	divl	%ebx
	movl	%edx,-12(%ebp) 
.LN124:
	.stabn  68,0,851,.LN124-FileIO_WriteCard		# line 851, column 24
	movl	12(%ebp),%eax
	movl	$10,%ebx
	xorl	%edx,%edx
	divl	%ebx
	movl	%eax,12(%ebp) 
.LN125:
	.stabn  68,0,852,.LN125-FileIO_WriteCard		# line 852, column 7
	incl	-8(%ebp) 
.LN126:
	.stabn  68,0,852,.LN126-FileIO_WriteCard		# line 852, column 20
	movl	-8(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab75
	cmpl	$25,%ebx
	jbe	.Lab74
.Lab75:
   	call	BoundErr_		
.Lab74:
	movl	-12(%ebp),%eax
 	addl	$48,%eax 
	cmpl	$255,%eax
	jbe	.Lab76
.Lab77:
   	call	BoundErr_		
.Lab76:
	movb	%al,-38(%ebp,%ebx,1) 
.LN127:
	.stabn  68,0,853,.LN127-FileIO_WriteCard		# line 853, column 13
	cmpl	$0,12(%ebp)
	jne	.Lab72
.Lab73:
.LN128:
	.stabn  68,0,854,.LN128-FileIO_WriteCard		# line 854, column 5
	cmpl	$0,16(%ebp)
	jne	.Lab78
.Lab79:
.LN129:
	.stabn  68,0,854,.LN129-FileIO_WriteCard		# line 854, column 21
	pushl	$32
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.Lab78:
	jmp	.Lab80
.Lab81:
.LN130:
	.stabn  68,0,855,.LN130-FileIO_WriteCard		# line 855, column 22
	pushl	$32
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN131:
	.stabn  68,0,855,.LN131-FileIO_WriteCard		# line 855, column 37
	decl	16(%ebp) 
.Lab80:
.LN132:
	.stabn  68,0,855,.LN132-FileIO_WriteCard		# line 855, column 15
	movl	16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	ja	.Lab81
.Lab82:
	jmp	.Lab83
.Lab84:
.LN133:
	.stabn  68,0,856,.LN133-FileIO_WriteCard		# line 856, column 20
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab87
	cmpl	$25,%eax
	jbe	.Lab86
.Lab87:
   	call	BoundErr_		
.Lab86:
	movzbl	-38(%ebp,%eax,1),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN134:
	.stabn  68,0,856,.LN134-FileIO_WriteCard		# line 856, column 36
	decl	-8(%ebp) 
.Lab83:
.LN135:
	.stabn  68,0,856,.LN135-FileIO_WriteCard		# line 856, column 13
	cmpl	$0,-8(%ebp)
	ja	.Lab84
.Lab85:
.LN136:
	.stabn  68,0,857,.LN136-FileIO_WriteCard		# line 857, column 0
.LBE18:
	leave
	ret
	.Lab69 = 40
	.stabs "t:32=ar4;1;25;2",128,0,25,-37
	.stabs "d:4",128,0,4,-12
	.stabs "l:4",128,0,4,-8
	.stabs "wid:p4",160,0,4,16
	.stabs "n:p4",160,0,4,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB18-FileIO_WriteCard
	.stabn 224,0,0,.LBE18-FileIO_WriteCard
	.stabs "FileIO_WriteInt:F16",36,0,0,FileIO_WriteInt
	.align 4
FileIO_WriteInt:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab88, %esp
.LN137:
	.stabn  68,0,826,.LN137-FileIO_WriteInt		# line 826, column 3
.LBB19:
.LN138:
	.stabn  68,0,827,.LN138-FileIO_WriteInt		# line 827, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab89
.Lab90:
.LN139:
	.stabn  68,0,827,.LN139-FileIO_WriteInt		# line 827, column 30
	movb	$0,FileIO_s 
.LN140:
	.stabn  68,0,827,.LN140-FileIO_WriteInt		# line 827, column 40
	leave
	ret
.Lab89:
.LN141:
	.stabn  68,0,828,.LN141-FileIO_WriteInt		# line 828, column 5
	cmpl	$0,12(%ebp)
	jge	.Lab93
.Lab92:
.LN142:
	.stabn  68,0,829,.LN142-FileIO_WriteInt		# line 829, column 17
	movb	$45,-42(%ebp) 
.LN143:
	.stabn  68,0,829,.LN143-FileIO_WriteInt		# line 829, column 27
	movl	12(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp) 
	jmp	.Lab91
.Lab93:
.LN144:
	.stabn  68,0,830,.LN144-FileIO_WriteInt		# line 830, column 17
	movb	$32,-42(%ebp) 
.LN145:
	.stabn  68,0,830,.LN145-FileIO_WriteInt		# line 830, column 27
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp) 
.Lab91:
.LN146:
	.stabn  68,0,832,.LN146-FileIO_WriteInt		# line 832, column 7
	movl	$0,-8(%ebp) 
.Lab94:
.LN147:
	.stabn  68,0,834,.LN147-FileIO_WriteInt		# line 834, column 9
	movl	-16(%ebp),%eax
	movl	$10,%ebx
	cdq
	idivl	%ebx
	.data
	.align 4
.Lab96:
	.long	0,2147483647
	.text
	boundl	%edx,.Lab96
	movl	%edx,-12(%ebp) 
.LN148:
	.stabn  68,0,834,.LN148-FileIO_WriteInt		# line 834, column 24
	movl	-16(%ebp),%eax
	movl	$10,%ebx
	cdq
	idivl	%ebx
	movl	%eax,-16(%ebp) 
.LN149:
	.stabn  68,0,835,.LN149-FileIO_WriteInt		# line 835, column 7
	incl	-8(%ebp) 
.LN150:
	.stabn  68,0,835,.LN150-FileIO_WriteInt		# line 835, column 20
	movl	-8(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab98
	cmpl	$25,%ebx
	jbe	.Lab97
.Lab98:
   	call	BoundErr_		
.Lab97:
	movl	-12(%ebp),%eax
 	addl	$48,%eax 
	cmpl	$255,%eax
	jbe	.Lab99
.Lab100:
   	call	BoundErr_		
.Lab99:
	movb	%al,-42(%ebp,%ebx,1) 
.LN151:
	.stabn  68,0,836,.LN151-FileIO_WriteInt		# line 836, column 13
	cmpl	$0,-16(%ebp)
	jne	.Lab94
.Lab95:
.LN152:
	.stabn  68,0,837,.LN152-FileIO_WriteInt		# line 837, column 5
	cmpl	$0,16(%ebp)
	jne	.Lab101
.Lab102:
.LN153:
	.stabn  68,0,837,.LN153-FileIO_WriteInt		# line 837, column 21
	pushl	$32
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.Lab101:
	jmp	.Lab103
.Lab104:
.LN154:
	.stabn  68,0,838,.LN154-FileIO_WriteInt		# line 838, column 26
	pushl	$32
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN155:
	.stabn  68,0,838,.LN155-FileIO_WriteInt		# line 838, column 41
	decl	16(%ebp) 
.Lab103:
.LN156:
	.stabn  68,0,838,.LN156-FileIO_WriteInt		# line 838, column 15
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	cmpl	%eax,16(%ebp)
	ja	.Lab104
.Lab105:
.LN157:
	.stabn  68,0,839,.LN157-FileIO_WriteInt		# line 839, column 5
	cmpb	$45,-42(%ebp)
	je	.Lab107
.Lab108:
	movl	16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jbe	.Lab106
.Lab107:
.LN158:
	.stabn  68,0,839,.LN158-FileIO_WriteInt		# line 839, column 39
	movzbl	-42(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.Lab106:
	jmp	.Lab109
.Lab110:
.LN159:
	.stabn  68,0,840,.LN159-FileIO_WriteInt		# line 840, column 20
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab113
	cmpl	$25,%eax
	jbe	.Lab112
.Lab113:
   	call	BoundErr_		
.Lab112:
	movzbl	-42(%ebp,%eax,1),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN160:
	.stabn  68,0,840,.LN160-FileIO_WriteInt		# line 840, column 36
	decl	-8(%ebp) 
.Lab109:
.LN161:
	.stabn  68,0,840,.LN161-FileIO_WriteInt		# line 840, column 13
	cmpl	$0,-8(%ebp)
	ja	.Lab110
.Lab111:
.LN162:
	.stabn  68,0,841,.LN162-FileIO_WriteInt		# line 841, column 0
.LBE19:
	leave
	ret
	.Lab88 = 44
	.stabs "sign:2",128,0,1,-42
	.stabs "t:33=ar4;1;25;2",128,0,25,-41
	.stabs "x:7",128,0,4,-16
	.stabs "d:4",128,0,4,-12
	.stabs "l:4",128,0,4,-8
	.stabs "wid:p4",160,0,4,16
	.stabs "n:p7",160,0,4,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB19-FileIO_WriteInt
	.stabn 224,0,0,.LBE19-FileIO_WriteInt
	.stabs "FileIO_WriteText:F16",36,0,0,FileIO_WriteText
	.align 4
FileIO_WriteText:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab114, %esp
	movl	16(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	12(%ebp),%esi
	movl	%edi,12(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN163:
	.stabn  68,0,812,.LN163-FileIO_WriteText		# line 812, column 3
.LBB20:
.LN164:
	.stabn  68,0,813,.LN164-FileIO_WriteText		# line 813, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab115
.Lab116:
.LN165:
	.stabn  68,0,813,.LN165-FileIO_WriteText		# line 813, column 30
	movb	$0,FileIO_s 
.LN166:
	.stabn  68,0,813,.LN166-FileIO_WriteText		# line 813, column 40
	leave
	ret
.Lab115:
.LN167:
	.stabn  68,0,814,.LN167-FileIO_WriteText		# line 814, column 10
	pushl	16(%ebp)
	pushl	12(%ebp)
	call	Strings1_Length
	addl	$8, %esp
	cmpl	$2147483647,%eax
	jbe	.Lab117
.Lab118:
   	call	BoundErr_		
.Lab117:
	movl	%eax,-12(%ebp) 
.LN168:
	.stabn  68,0,815,.LN168-FileIO_WriteText		# line 815, column 5
	movl	20(%ebp),%eax
 	subl	$1,%eax 
	movl	%eax,-16(%ebp) 
	cmpl	$0,-16(%ebp)
	jl	.Lab119
	movl	$0,-8(%ebp) 
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp) 
.Lab120:
.LN169:
	.stabn  68,0,816,.LN169-FileIO_WriteText		# line 816, column 7
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jge	.Lab123
.Lab122:
.LN170:
	.stabn  68,0,816,.LN170-FileIO_WriteText		# line 816, column 24
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab125
	cmpl	16(%ebp),%eax
	jbe	.Lab124
.Lab125:
   	call	BoundErr_		
.Lab124:
 	addl	12(%ebp),%eax 
	movzbl	(%eax),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
	jmp	.Lab121
.Lab123:
.LN171:
	.stabn  68,0,816,.LN171-FileIO_WriteText		# line 816, column 47
	pushl	$32
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.Lab121:
.LN172:
	.stabn  68,0,815,.LN172-FileIO_WriteText		# line 815, column 5
	movl	-8(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jge	.Lab119
	incl	-8(%ebp) 
	jmp	.Lab120
.Lab119:
.LN173:
	.stabn  68,0,816,.LN173-FileIO_WriteText		# line 816, column 0
.LBE20:
	leave
	ret
	.Lab114 = 20
	.stabs "slen:7",128,0,4,-12
	.stabs "i:7",128,0,4,-8
	.stabs "len:p7",160,0,4,20
	.stabs "text:p34=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB20-FileIO_WriteText
	.stabn 224,0,0,.LBE20-FileIO_WriteText
	.stabs "FileIO_WriteString:F16",36,0,0,FileIO_WriteString
	.align 4
FileIO_WriteString:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab126, %esp
	movl	16(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	12(%ebp),%esi
	movl	%edi,12(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN174:
	.stabn  68,0,801,.LN174-FileIO_WriteString		# line 801, column 3
.LBB21:
.LN175:
	.stabn  68,0,802,.LN175-FileIO_WriteString		# line 802, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab127
.Lab128:
.LN176:
	.stabn  68,0,802,.LN176-FileIO_WriteString		# line 802, column 30
	movb	$0,FileIO_s 
.LN177:
	.stabn  68,0,802,.LN177-FileIO_WriteString		# line 802, column 40
	leave
	ret
.Lab127:
.LN178:
	.stabn  68,0,803,.LN178-FileIO_WriteString		# line 803, column 9
	movl	$0,-8(%ebp) 
	jmp	.Lab129
.Lab130:
.LN179:
	.stabn  68,0,805,.LN179-FileIO_WriteString		# line 805, column 7
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab133
	cmpl	16(%ebp),%eax
	jbe	.Lab132
.Lab133:
   	call	BoundErr_		
.Lab132:
 	addl	12(%ebp),%eax 
	movzbl	(%eax),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.LN180:
	.stabn  68,0,805,.LN180-FileIO_WriteString		# line 805, column 27
	incl	-8(%ebp) 
.Lab129:
.LN181:
	.stabn  68,0,804,.LN181-FileIO_WriteString		# line 804, column 30
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab131
.Lab134:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab136
	cmpl	16(%ebp),%eax
	jbe	.Lab135
.Lab136:
   	call	BoundErr_		
.Lab135:
 	addl	12(%ebp),%eax 
	cmpb	$0,(%eax)
	jne	.Lab130
.Lab131:
.LN182:
	.stabn  68,0,805,.LN182-FileIO_WriteString		# line 805, column 0
.LBE21:
	leave
	ret
	.Lab126 = 8
	.stabs "pos:4",128,0,4,-8
	.stabs "str:p35=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB21-FileIO_WriteString
	.stabn 224,0,0,.LBE21-FileIO_WriteString
	.stabs "FileIO_WriteLn:F16",36,0,0,FileIO_WriteLn
	.align 4
FileIO_WriteLn:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab137, %esp
.LN183:
	.stabn  68,0,791,.LN183-FileIO_WriteLn		# line 791, column 3
.LBB22:
.LN184:
	.stabn  68,0,792,.LN184-FileIO_WriteLn		# line 792, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab140
.Lab139:
.LN185:
	.stabn  68,0,793,.LN185-FileIO_WriteLn		# line 793, column 17
	movb	$0,FileIO_s 
	jmp	.Lab138
.Lab140:
.LN186:
	.stabn  68,0,794,.LN186-FileIO_WriteLn		# line 794, column 12
	pushl	$10
	pushl	8(%ebp)
	call	FileIO_Write
	addl	$8, %esp
.Lab138:
.LN187:
	.stabn  68,0,795,.LN187-FileIO_WriteLn		# line 795, column 0
.LBE22:
	leave
	ret
	.Lab137 = 4
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB22-FileIO_WriteLn
	.stabn 224,0,0,.LBE22-FileIO_WriteLn
	.stabs "FileIO_Write:F16",36,0,0,FileIO_Write
	.align 4
FileIO_Write:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab141, %esp
.LN188:
	.stabn  68,0,780,.LN188-FileIO_Write		# line 780, column 3
.LBB23:
.LN189:
	.stabn  68,0,781,.LN189-FileIO_Write		# line 781, column 5
	pushl	8(%ebp)
	call	FileIO_NotWrite
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab142
.Lab143:
.LN190:
	.stabn  68,0,781,.LN190-FileIO_Write		# line 781, column 30
	movb	$0,FileIO_s 
.LN191:
	.stabn  68,0,781,.LN191-FileIO_Write		# line 781, column 40
	leave
	ret
.Lab142:
.LN192:
	.stabn  68,0,782,.LN192-FileIO_Write		# line 782, column 5
	cmpb	$10,12(%ebp)
	jne	.Lab144
.Lab145:
.LN193:
	.stabn  68,0,782,.LN193-FileIO_Write		# line 782, column 25
	movb	$10,12(%ebp) 
.Lab144:
.LN194:
	.stabn  68,0,783,.LN194-FileIO_Write		# line 783, column 5
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 4,%eax
	je	.Lab147
.Lab149:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 16,%eax
	jne	.Lab148
.Lab150:
	cmpb	$0,FileIO_s + 93
	je	.Lab148
.Lab147:
.LN195:
	.stabn  68,0,784,.LN195-FileIO_Write		# line 784, column 13
	movzbl	12(%ebp),%eax
	pushl	%eax
	call	FileIO_ConWrite
	addl	$4, %esp
.LN196:
	.stabn  68,0,784,.LN196-FileIO_Write		# line 784, column 32
	movb	$1,FileIO_s 
	jmp	.Lab146
.Lab148:
.LN197:
	.stabn  68,0,785,.LN197-FileIO_Write		# line 785, column 7
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 8,%eax
	jne	.Lab153
.Lab152:
.LN198:
	.stabn  68,0,785,.LN198-FileIO_Write		# line 785, column 32
	movzbl	12(%ebp),%eax
	pushl	%eax
	call	FileIO_ErrWrite
	addl	$4, %esp
.LN199:
	.stabn  68,0,785,.LN199-FileIO_Write		# line 785, column 51
	movb	$1,FileIO_s 
	jmp	.Lab151
.Lab153:
.LN200:
	.stabn  68,0,786,.LN200-FileIO_Write		# line 786, column 13
	movzbl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_PutByte
	addl	$8, %esp
.Lab151:
.Lab146:
.LN201:
	.stabn  68,0,787,.LN201-FileIO_Write		# line 787, column 0
.LBE23:
	leave
	ret
	.Lab141 = 4
	.stabs "ch:p2",160,0,1,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB23-FileIO_Write
	.stabn 224,0,0,.LBE23-FileIO_Write
	.stabs "FileIO_ReadBytes:F16",36,0,0,FileIO_ReadBytes
	.align 4
FileIO_ReadBytes:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab154, %esp
.LN202:
	.stabn  68,0,763,.LN202-FileIO_ReadBytes		# line 763, column 3
.LBB24:
.LN203:
	.stabn  68,0,764,.LN203-FileIO_ReadBytes		# line 764, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab156
.Lab158:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 4,%eax
	jne	.Lab157
.Lab156:
.LN204:
	.stabn  68,0,765,.LN204-FileIO_ReadBytes		# line 765, column 17
	movb	$0,FileIO_s 
.LN205:
	.stabn  68,0,765,.LN205-FileIO_ReadBytes		# line 765, column 31
	movl	20(%ebp),%eax
	movl	$0,(%eax) 
	jmp	.Lab155
.Lab157:
.LN206:
	.stabn  68,0,767,.LN206-FileIO_ReadBytes		# line 767, column 9
	movl	20(%ebp),%eax
	cmpl	$0,(%eax)
	jne	.Lab159
.Lab160:
.LN207:
	.stabn  68,0,767,.LN207-FileIO_ReadBytes		# line 767, column 30
	movb	$1,FileIO_s 
.LN208:
	.stabn  68,0,767,.LN208-FileIO_ReadBytes		# line 767, column 39
	leave
	ret
.Lab159:
.LN209:
	.stabn  68,0,768,.LN209-FileIO_ReadBytes		# line 768, column 17
	movl	20(%ebp),%eax
	movl	(%eax),%eax
 	subl	$1,%eax 
	cmpl	16(%ebp),%eax
	seta	%al
	movb	%al,-5(%ebp) 
.LN210:
	.stabn  68,0,769,.LN210-FileIO_ReadBytes		# line 769, column 9
	cmpb	$0,-5(%ebp)
	je	.Lab163
.Lab162:
.LN211:
	.stabn  68,0,769,.LN211-FileIO_ReadBytes		# line 769, column 32
	movl	$1,%eax
 	addl	16(%ebp),%eax 
	movl	%eax,-12(%ebp) 
	jmp	.Lab161
.Lab163:
.LN212:
	.stabn  68,0,769,.LN212-FileIO_ReadBytes		# line 769, column 61
	movl	20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp) 
.Lab161:
.LN213:
	.stabn  68,0,770,.LN213-FileIO_ReadBytes		# line 770, column 9
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_GetBytes
	addl	$16, %esp
.LN214:
	.stabn  68,0,771,.LN214-FileIO_ReadBytes		# line 771, column 14
	cmpl	$0,-12(%ebp)
	setne	%al
	movb	%al,FileIO_s 
.LN215:
	.stabn  68,0,772,.LN215-FileIO_ReadBytes		# line 772, column 9
	movl	20(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	.Lab164
.Lab165:
.LN216:
	.stabn  68,0,772,.LN216-FileIO_ReadBytes		# line 772, column 35
	movb	$0,FileIO_s 
.Lab164:
.LN217:
	.stabn  68,0,773,.LN217-FileIO_ReadBytes		# line 773, column 13
	movl	20(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx) 
.Lab155:
.LN218:
	.stabn  68,0,775,.LN218-FileIO_ReadBytes		# line 775, column 5
	cmpb	$1,FileIO_s
	je	.Lab166
.Lab167:
.LN219:
	.stabn  68,0,775,.LN219-FileIO_ReadBytes		# line 775, column 27
	movl	8(%ebp),%eax
	movb	$1,14(%eax) 
.Lab166:
.LN220:
	.stabn  68,0,776,.LN220-FileIO_ReadBytes		# line 776, column 5
	cmpb	$0,-5(%ebp)
	je	.Lab168
.Lab169:
.LN221:
	.stabn  68,0,776,.LN221-FileIO_ReadBytes		# line 776, column 26
	movb	$0,FileIO_s 
.Lab168:
.LN222:
	.stabn  68,0,777,.LN222-FileIO_ReadBytes		# line 777, column 0
.LBE24:
	leave
	ret
	.Lab154 = 12
	.stabs "Wanted:4",128,0,4,-12
	.stabs "TooMany:1",128,0,1,-5
	.stabs "len:v4",160,0,4,20
	.stabs "buf:p36=s8start:*13,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB24-FileIO_ReadBytes
	.stabn 224,0,0,.LBE24-FileIO_ReadBytes
	.stabs "FileIO_ReadCard:F16",36,0,0,FileIO_ReadCard
	.align 4
FileIO_ReadCard:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab170, %esp
.LN223:
	.stabn  68,0,743,.LN223-FileIO_ReadCard		# line 743, column 3
.LBB25:
.LN224:
	.stabn  68,0,744,.LN224-FileIO_ReadCard		# line 744, column 7
	movl	12(%ebp),%eax
	movl	$0,(%eax) 
.LN225:
	.stabn  68,0,744,.LN225-FileIO_ReadCard		# line 744, column 15
	movl	$0,-12(%ebp) 
.LN226:
	.stabn  68,0,745,.LN226-FileIO_ReadCard		# line 745, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab171
.Lab172:
.LN227:
	.stabn  68,0,745,.LN227-FileIO_ReadCard		# line 745, column 29
	movb	$0,FileIO_s 
.LN228:
	.stabn  68,0,745,.LN228-FileIO_ReadCard		# line 745, column 39
	leave
	ret
.Lab171:
.LN229:
	.stabn  68,0,746,.LN229-FileIO_ReadCard		# line 746, column 5
	pushl	$80
	leal	-93(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_ReadToken
	addl	$12, %esp
	jmp	.Lab173
.Lab174:
.LN230:
	.stabn  68,0,748,.LN230-FileIO_ReadCard		# line 748, column 13
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab176
.Lab177:
   	call	BoundErr_		
.Lab176:
	movzbl	-93(%ebp,%eax,1),%eax
 	subl	$48,%eax 
	movl	%eax,-8(%ebp) 
.LN231:
	.stabn  68,0,749,.LN231-FileIO_ReadCard		# line 749, column 7
	movl	12(%ebp),%ecx
	movl	$-1,%eax
 	subl	-8(%ebp),%eax 
	movl	$10,%ebx
	xorl	%edx,%edx
	divl	%ebx
	cmpl	%eax,(%ecx)
	ja	.Lab180
.Lab179:
.LN232:
	.stabn  68,0,750,.LN232-FileIO_ReadCard		# line 750, column 16
	movl	12(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	shll	$1, %eax
	leal	(%eax,%eax,4),%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,(%ebx) 
	jmp	.Lab178
.Lab180:
.LN233:
	.stabn  68,0,751,.LN233-FileIO_ReadCard		# line 751, column 19
	movb	$0,FileIO_s 
.Lab178:
.LN234:
	.stabn  68,0,753,.LN234-FileIO_ReadCard		# line 753, column 7
	incl	-12(%ebp) 
.Lab173:
.LN235:
	.stabn  68,0,747,.LN235-FileIO_ReadCard		# line 747, column 37
	cmpl	$80,-12(%ebp)
	ja	.Lab175
.Lab182:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab183
.Lab184:
   	call	BoundErr_		
.Lab183:
	cmpb	$48,-93(%ebp,%eax,1)
	jb	.Lab175
.Lab181:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab185
.Lab186:
   	call	BoundErr_		
.Lab185:
	cmpb	$57,-93(%ebp,%eax,1)
	jbe	.Lab174
.Lab175:
.LN236:
	.stabn  68,0,755,.LN236-FileIO_ReadCard		# line 755, column 5
	cmpl	$80,-12(%ebp)
	ja	.Lab188
.Lab189:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab190
.Lab191:
   	call	BoundErr_		
.Lab190:
	cmpb	$0,-93(%ebp,%eax,1)
	je	.Lab187
.Lab188:
.LN237:
	.stabn  68,0,755,.LN237-FileIO_ReadCard		# line 755, column 42
	movb	$0,FileIO_s 
.Lab187:
.LN238:
	.stabn  68,0,756,.LN238-FileIO_ReadCard		# line 756, column 5
	cmpb	$1,FileIO_s
	je	.Lab192
.Lab193:
.LN239:
	.stabn  68,0,756,.LN239-FileIO_ReadCard		# line 756, column 22
	movl	12(%ebp),%eax
	movl	$0,(%eax) 
.Lab192:
.LN240:
	.stabn  68,0,757,.LN240-FileIO_ReadCard		# line 757, column 0
.LBE25:
	leave
	ret
	.Lab170 = 96
	.stabs "s:37=ar4;0;80;2",128,0,81,-93
	.stabs "j:4",128,0,4,-12
	.stabs "Digit:4",128,0,4,-8
	.stabs "i:v4",160,0,4,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB25-FileIO_ReadCard
	.stabn 224,0,0,.LBE25-FileIO_ReadCard
	.stabs "FileIO_ReadInt:F16",36,0,0,FileIO_ReadInt
	.align 4
FileIO_ReadInt:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab194, %esp
.LN241:
	.stabn  68,0,716,.LN241-FileIO_ReadInt		# line 716, column 3
.LBB26:
.LN242:
	.stabn  68,0,717,.LN242-FileIO_ReadInt		# line 717, column 7
	movl	12(%ebp),%eax
	movl	$0,(%eax) 
.LN243:
	.stabn  68,0,717,.LN243-FileIO_ReadInt		# line 717, column 15
	movl	$0,-12(%ebp) 
.LN244:
	.stabn  68,0,718,.LN244-FileIO_ReadInt		# line 718, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab195
.Lab196:
.LN245:
	.stabn  68,0,718,.LN245-FileIO_ReadInt		# line 718, column 29
	movb	$0,FileIO_s 
.LN246:
	.stabn  68,0,718,.LN246-FileIO_ReadInt		# line 718, column 39
	leave
	ret
.Lab195:
.LN247:
	.stabn  68,0,719,.LN247-FileIO_ReadInt		# line 719, column 5
	pushl	$80
	leal	-94(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_ReadToken
	addl	$12, %esp
.LN248:
	.stabn  68,0,720,.LN248-FileIO_ReadInt		# line 720, column 5
	cmpb	$45,-94(%ebp)
	jne	.Lab199
.Lab198:
.LN249:
	.stabn  68,0,721,.LN249-FileIO_ReadInt		# line 721, column 21
	movb	$1,-13(%ebp) 
.LN250:
	.stabn  68,0,721,.LN250-FileIO_ReadInt		# line 721, column 30
	incl	-12(%ebp) 
	jmp	.Lab197
.Lab199:
.LN251:
	.stabn  68,0,722,.LN251-FileIO_ReadInt		# line 722, column 21
	movb	$0,-13(%ebp) 
.LN252:
	.stabn  68,0,722,.LN252-FileIO_ReadInt		# line 722, column 31
	cmpb	$43,-94(%ebp)
	jne	.Lab200
.Lab201:
.LN253:
	.stabn  68,0,722,.LN253-FileIO_ReadInt		# line 722, column 50
	incl	-12(%ebp) 
.Lab200:
.Lab197:
.LN254:
	.stabn  68,0,724,.LN254-FileIO_ReadInt		# line 724, column 5
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab205
.Lab206:
   	call	BoundErr_		
.Lab205:
	cmpb	$48,-94(%ebp,%eax,1)
	jb	.Lab203
.Lab204:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab207
.Lab208:
   	call	BoundErr_		
.Lab207:
	cmpb	$57,-94(%ebp,%eax,1)
	jbe	.Lab202
.Lab203:
.LN255:
	.stabn  68,0,724,.LN255-FileIO_ReadInt		# line 724, column 47
	movb	$0,FileIO_s 
.Lab202:
	jmp	.Lab209
.Lab210:
.LN256:
	.stabn  68,0,726,.LN256-FileIO_ReadInt		# line 726, column 13
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab212
.Lab213:
   	call	BoundErr_		
.Lab212:
	movzbl	-94(%ebp,%eax,1),%eax
 	subl	$48,%eax 
	cmpl	$2147483647,%eax
	jbe	.Lab214
.Lab215:
   	call	BoundErr_		
.Lab214:
	movl	%eax,-8(%ebp) 
.LN257:
	.stabn  68,0,727,.LN257-FileIO_ReadInt		# line 727, column 7
	movl	12(%ebp),%ecx
	movl	$2147483647,%eax
 	subl	-8(%ebp),%eax 
	movl	$10,%ebx
	cdq
	idivl	%ebx
	cmpl	%eax,(%ecx)
	jg	.Lab218
.Lab217:
.LN258:
	.stabn  68,0,728,.LN258-FileIO_ReadInt		# line 728, column 16
	movl	12(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	shll	$1, %eax
	leal	(%eax,%eax,4),%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,(%ebx) 
	jmp	.Lab216
.Lab218:
.LN259:
	.stabn  68,0,729,.LN259-FileIO_ReadInt		# line 729, column 19
	movb	$0,FileIO_s 
.Lab216:
.LN260:
	.stabn  68,0,731,.LN260-FileIO_ReadInt		# line 731, column 7
	incl	-12(%ebp) 
.Lab209:
.LN261:
	.stabn  68,0,725,.LN261-FileIO_ReadInt		# line 725, column 37
	cmpl	$80,-12(%ebp)
	ja	.Lab211
.Lab220:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab221
.Lab222:
   	call	BoundErr_		
.Lab221:
	cmpb	$48,-94(%ebp,%eax,1)
	jb	.Lab211
.Lab219:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab223
.Lab224:
   	call	BoundErr_		
.Lab223:
	cmpb	$57,-94(%ebp,%eax,1)
	jbe	.Lab210
.Lab211:
.LN262:
	.stabn  68,0,733,.LN262-FileIO_ReadInt		# line 733, column 5
	cmpb	$0,-13(%ebp)
	je	.Lab225
.Lab226:
.LN263:
	.stabn  68,0,733,.LN263-FileIO_ReadInt		# line 733, column 24
	movl	12(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	negl	%eax
	movl	%eax,(%ebx) 
.Lab225:
.LN264:
	.stabn  68,0,734,.LN264-FileIO_ReadInt		# line 734, column 5
	cmpl	$80,-12(%ebp)
	ja	.Lab228
.Lab229:
	movl	-12(%ebp),%eax
	cmpl	$80,%eax
	jbe	.Lab230
.Lab231:
   	call	BoundErr_		
.Lab230:
	cmpb	$0,-94(%ebp,%eax,1)
	je	.Lab227
.Lab228:
.LN265:
	.stabn  68,0,734,.LN265-FileIO_ReadInt		# line 734, column 42
	movb	$0,FileIO_s 
.Lab227:
.LN266:
	.stabn  68,0,735,.LN266-FileIO_ReadInt		# line 735, column 5
	cmpb	$1,FileIO_s
	je	.Lab232
.Lab233:
.LN267:
	.stabn  68,0,735,.LN267-FileIO_ReadInt		# line 735, column 22
	movl	12(%ebp),%eax
	movl	$0,(%eax) 
.Lab232:
.LN268:
	.stabn  68,0,736,.LN268-FileIO_ReadInt		# line 736, column 0
.LBE26:
	leave
	ret
	.Lab194 = 96
	.stabs "s:38=ar4;0;80;2",128,0,81,-94
	.stabs "Negative:1",128,0,1,-13
	.stabs "j:4",128,0,4,-12
	.stabs "Digit:7",128,0,4,-8
	.stabs "i:v7",160,0,4,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB26-FileIO_ReadInt
	.stabn 224,0,0,.LBE26-FileIO_ReadInt
	.stabs "FileIO_ReadToken:F16",36,0,0,FileIO_ReadToken
	.align 4
FileIO_ReadToken:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab234, %esp
.LN269:
	.stabn  68,0,693,.LN269-FileIO_ReadToken		# line 693, column 3
.LBB27:
.LN270:
	.stabn  68,0,694,.LN270-FileIO_ReadToken		# line 694, column 12
	movl	$0,%eax
	cmpl	16(%ebp),%eax
	jbe	.Lab235
.Lab236:
   	call	BoundErr_		
.Lab235:
 	addl	12(%ebp),%eax 
	movb	$0,(%eax) 
.LN271:
	.stabn  68,0,694,.LN271-FileIO_ReadToken		# line 694, column 21
	movl	$0,-8(%ebp) 
.LN272:
	.stabn  68,0,695,.LN272-FileIO_ReadToken		# line 695, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab237
.Lab238:
.LN273:
	.stabn  68,0,695,.LN273-FileIO_ReadToken		# line 695, column 29
	movb	$0,FileIO_s 
.LN274:
	.stabn  68,0,695,.LN274-FileIO_ReadToken		# line 695, column 39
	leave
	ret
.Lab237:
.Lab239:
.LN275:
	.stabn  68,0,696,.LN275-FileIO_ReadToken		# line 696, column 12
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.LN276:
	.stabn  68,0,696,.LN276-FileIO_ReadToken		# line 696, column 41
	cmpb	$32,-9(%ebp)
	ja	.Lab240
.Lab241:
	cmpb	$1,FileIO_s
	je	.Lab239
.Lab240:
.LN277:
	.stabn  68,0,697,.LN277-FileIO_ReadToken		# line 697, column 5
	cmpb	$0,FileIO_s
	je	.Lab242
.Lab243:
	jmp	.Lab244
.Lab245:
.LN278:
	.stabn  68,0,699,.LN278-FileIO_ReadToken		# line 699, column 9
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab247
.Lab248:
.LN279:
	.stabn  68,0,699,.LN279-FileIO_ReadToken		# line 699, column 39
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab250
	cmpl	16(%ebp),%ebx
	jbe	.Lab249
.Lab250:
   	call	BoundErr_		
.Lab249:
 	addl	12(%ebp),%ebx 
	movb	-9(%ebp),%al
	movb	%al,(%ebx) 
.Lab247:
.LN280:
	.stabn  68,0,699,.LN280-FileIO_ReadToken		# line 699, column 50
	incl	-8(%ebp) 
.LN281:
	.stabn  68,0,700,.LN281-FileIO_ReadToken		# line 700, column 9
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
	jmp	.Lab251
.Lab252:
.LN282:
	.stabn  68,0,702,.LN282-FileIO_ReadToken		# line 702, column 11
	cmpl	$0,-8(%ebp)
	jbe	.Lab254
.Lab255:
.LN283:
	.stabn  68,0,702,.LN283-FileIO_ReadToken		# line 702, column 25
	decl	-8(%ebp) 
.Lab254:
.LN284:
	.stabn  68,0,702,.LN284-FileIO_ReadToken		# line 702, column 37
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.Lab251:
.LN285:
	.stabn  68,0,701,.LN285-FileIO_ReadToken		# line 701, column 18
	movb	-9(%ebp),%al
	cmpb	FileIO_s + 108,%al
	je	.Lab252
.Lab253:
.Lab244:
.LN286:
	.stabn  68,0,698,.LN286-FileIO_ReadToken		# line 698, column 16
	cmpb	$32,-9(%ebp)
	ja	.Lab245
.Lab246:
.LN287:
	.stabn  68,0,705,.LN287-FileIO_ReadToken		# line 705, column 7
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab256
.Lab257:
.LN288:
	.stabn  68,0,705,.LN288-FileIO_ReadToken		# line 705, column 37
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab259
	cmpl	16(%ebp),%eax
	jbe	.Lab258
.Lab259:
   	call	BoundErr_		
.Lab258:
 	addl	12(%ebp),%eax 
	movb	$0,(%eax) 
.Lab256:
.LN289:
	.stabn  68,0,706,.LN289-FileIO_ReadToken		# line 706, column 12
	cmpl	$0,-8(%ebp)
	seta	%al
	movb	%al,FileIO_s 
.LN290:
	.stabn  68,0,706,.LN290-FileIO_ReadToken		# line 706, column 32
	movl	8(%ebp),%eax
	movb	$1,18(%eax) 
.LN291:
	.stabn  68,0,706,.LN291-FileIO_ReadToken		# line 706, column 52
	movl	8(%ebp),%ebx
	movb	-9(%ebp),%al
	movb	%al,12(%ebx) 
.Lab242:
.LN292:
	.stabn  68,0,707,.LN292-FileIO_ReadToken		# line 707, column 0
.LBE27:
	leave
	ret
	.Lab234 = 12
	.stabs "ch:2",128,0,1,-9
	.stabs "j:4",128,0,4,-8
	.stabs "str:p39=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB27-FileIO_ReadToken
	.stabn 224,0,0,.LBE27-FileIO_ReadToken
	.stabs "FileIO_ReadLine:F16",36,0,0,FileIO_ReadLine
	.align 4
FileIO_ReadLine:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab260, %esp
.LN293:
	.stabn  68,0,672,.LN293-FileIO_ReadLine		# line 672, column 3
.LBB28:
.LN294:
	.stabn  68,0,673,.LN294-FileIO_ReadLine		# line 673, column 12
	movl	$0,%eax
	cmpl	16(%ebp),%eax
	jbe	.Lab261
.Lab262:
   	call	BoundErr_		
.Lab261:
 	addl	12(%ebp),%eax 
	movb	$0,(%eax) 
.LN295:
	.stabn  68,0,673,.LN295-FileIO_ReadLine		# line 673, column 21
	movl	$0,-8(%ebp) 
.LN296:
	.stabn  68,0,674,.LN296-FileIO_ReadLine		# line 674, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab263
.Lab264:
.LN297:
	.stabn  68,0,674,.LN297-FileIO_ReadLine		# line 674, column 29
	movb	$0,FileIO_s 
.LN298:
	.stabn  68,0,674,.LN298-FileIO_ReadLine		# line 674, column 39
	leave
	ret
.Lab263:
.LN299:
	.stabn  68,0,675,.LN299-FileIO_ReadLine		# line 675, column 5
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.LN300:
	.stabn  68,0,676,.LN300-FileIO_ReadLine		# line 676, column 5
	cmpb	$0,FileIO_s
	je	.Lab265
.Lab266:
	jmp	.Lab267
.Lab268:
.LN301:
	.stabn  68,0,678,.LN301-FileIO_ReadLine		# line 678, column 9
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab270
.Lab271:
.LN302:
	.stabn  68,0,678,.LN302-FileIO_ReadLine		# line 678, column 39
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab273
	cmpl	16(%ebp),%ebx
	jbe	.Lab272
.Lab273:
   	call	BoundErr_		
.Lab272:
 	addl	12(%ebp),%ebx 
	movb	-9(%ebp),%al
	movb	%al,(%ebx) 
.Lab270:
.LN303:
	.stabn  68,0,678,.LN303-FileIO_ReadLine		# line 678, column 50
	incl	-8(%ebp) 
.LN304:
	.stabn  68,0,679,.LN304-FileIO_ReadLine		# line 679, column 9
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
	jmp	.Lab274
.Lab275:
.LN305:
	.stabn  68,0,681,.LN305-FileIO_ReadLine		# line 681, column 11
	cmpl	$0,-8(%ebp)
	jbe	.Lab277
.Lab278:
.LN306:
	.stabn  68,0,681,.LN306-FileIO_ReadLine		# line 681, column 25
	decl	-8(%ebp) 
.Lab277:
.LN307:
	.stabn  68,0,681,.LN307-FileIO_ReadLine		# line 681, column 37
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.Lab274:
.LN308:
	.stabn  68,0,680,.LN308-FileIO_ReadLine		# line 680, column 18
	movb	-9(%ebp),%al
	cmpb	FileIO_s + 108,%al
	je	.Lab275
.Lab276:
.Lab267:
.LN309:
	.stabn  68,0,677,.LN309-FileIO_ReadLine		# line 677, column 16
	cmpb	$32,-9(%ebp)
	jae	.Lab268
.Lab269:
.LN310:
	.stabn  68,0,684,.LN310-FileIO_ReadLine		# line 684, column 7
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab279
.Lab280:
.LN311:
	.stabn  68,0,684,.LN311-FileIO_ReadLine		# line 684, column 37
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab282
	cmpl	16(%ebp),%eax
	jbe	.Lab281
.Lab282:
   	call	BoundErr_		
.Lab281:
 	addl	12(%ebp),%eax 
	movb	$0,(%eax) 
.Lab279:
.LN312:
	.stabn  68,0,685,.LN312-FileIO_ReadLine		# line 685, column 12
	cmpl	$0,-8(%ebp)
	seta	%al
	movb	%al,FileIO_s 
.LN313:
	.stabn  68,0,685,.LN313-FileIO_ReadLine		# line 685, column 32
	movl	8(%ebp),%eax
	movb	$1,18(%eax) 
.LN314:
	.stabn  68,0,685,.LN314-FileIO_ReadLine		# line 685, column 52
	movl	8(%ebp),%ebx
	movb	-9(%ebp),%al
	movb	%al,12(%ebx) 
.Lab265:
.LN315:
	.stabn  68,0,686,.LN315-FileIO_ReadLine		# line 686, column 0
.LBE28:
	leave
	ret
	.Lab260 = 12
	.stabs "ch:2",128,0,1,-9
	.stabs "j:4",128,0,4,-8
	.stabs "str:p40=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB28-FileIO_ReadLine
	.stabn 224,0,0,.LBE28-FileIO_ReadLine
	.stabs "FileIO_ReadString:F16",36,0,0,FileIO_ReadString
	.align 4
FileIO_ReadString:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab283, %esp
.LN316:
	.stabn  68,0,651,.LN316-FileIO_ReadString		# line 651, column 3
.LBB29:
.LN317:
	.stabn  68,0,652,.LN317-FileIO_ReadString		# line 652, column 12
	movl	$0,%eax
	cmpl	16(%ebp),%eax
	jbe	.Lab284
.Lab285:
   	call	BoundErr_		
.Lab284:
 	addl	12(%ebp),%eax 
	movb	$0,(%eax) 
.LN318:
	.stabn  68,0,652,.LN318-FileIO_ReadString		# line 652, column 21
	movl	$0,-8(%ebp) 
.LN319:
	.stabn  68,0,653,.LN319-FileIO_ReadString		# line 653, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab286
.Lab287:
.LN320:
	.stabn  68,0,653,.LN320-FileIO_ReadString		# line 653, column 29
	movb	$0,FileIO_s 
.LN321:
	.stabn  68,0,653,.LN321-FileIO_ReadString		# line 653, column 39
	leave
	ret
.Lab286:
.Lab288:
.LN322:
	.stabn  68,0,654,.LN322-FileIO_ReadString		# line 654, column 12
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.LN323:
	.stabn  68,0,654,.LN323-FileIO_ReadString		# line 654, column 41
	cmpb	$32,-9(%ebp)
	jne	.Lab289
.Lab290:
	cmpb	$1,FileIO_s
	je	.Lab288
.Lab289:
.LN324:
	.stabn  68,0,655,.LN324-FileIO_ReadString		# line 655, column 5
	cmpb	$0,FileIO_s
	je	.Lab291
.Lab292:
	jmp	.Lab293
.Lab294:
.LN325:
	.stabn  68,0,657,.LN325-FileIO_ReadString		# line 657, column 9
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab296
.Lab297:
.LN326:
	.stabn  68,0,657,.LN326-FileIO_ReadString		# line 657, column 39
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab299
	cmpl	16(%ebp),%ebx
	jbe	.Lab298
.Lab299:
   	call	BoundErr_		
.Lab298:
 	addl	12(%ebp),%ebx 
	movb	-9(%ebp),%al
	movb	%al,(%ebx) 
.Lab296:
.LN327:
	.stabn  68,0,657,.LN327-FileIO_ReadString		# line 657, column 50
	incl	-8(%ebp) 
.LN328:
	.stabn  68,0,658,.LN328-FileIO_ReadString		# line 658, column 9
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
	jmp	.Lab300
.Lab301:
.LN329:
	.stabn  68,0,660,.LN329-FileIO_ReadString		# line 660, column 11
	cmpl	$0,-8(%ebp)
	jbe	.Lab303
.Lab304:
.LN330:
	.stabn  68,0,660,.LN330-FileIO_ReadString		# line 660, column 25
	decl	-8(%ebp) 
.Lab303:
.LN331:
	.stabn  68,0,660,.LN331-FileIO_ReadString		# line 660, column 37
	leal	-9(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.Lab300:
.LN332:
	.stabn  68,0,659,.LN332-FileIO_ReadString		# line 659, column 18
	movb	-9(%ebp),%al
	cmpb	FileIO_s + 108,%al
	je	.Lab301
.Lab302:
.Lab293:
.LN333:
	.stabn  68,0,656,.LN333-FileIO_ReadString		# line 656, column 16
	cmpb	$32,-9(%ebp)
	jae	.Lab294
.Lab295:
.LN334:
	.stabn  68,0,663,.LN334-FileIO_ReadString		# line 663, column 7
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	ja	.Lab305
.Lab306:
.LN335:
	.stabn  68,0,663,.LN335-FileIO_ReadString		# line 663, column 37
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab308
	cmpl	16(%ebp),%eax
	jbe	.Lab307
.Lab308:
   	call	BoundErr_		
.Lab307:
 	addl	12(%ebp),%eax 
	movb	$0,(%eax) 
.Lab305:
.LN336:
	.stabn  68,0,664,.LN336-FileIO_ReadString		# line 664, column 12
	cmpl	$0,-8(%ebp)
	seta	%al
	movb	%al,FileIO_s 
.LN337:
	.stabn  68,0,664,.LN337-FileIO_ReadString		# line 664, column 32
	movl	8(%ebp),%eax
	movb	$1,18(%eax) 
.LN338:
	.stabn  68,0,664,.LN338-FileIO_ReadString		# line 664, column 52
	movl	8(%ebp),%ebx
	movb	-9(%ebp),%al
	movb	%al,12(%ebx) 
.Lab291:
.LN339:
	.stabn  68,0,665,.LN339-FileIO_ReadString		# line 665, column 0
.LBE29:
	leave
	ret
	.Lab283 = 12
	.stabs "ch:2",128,0,1,-9
	.stabs "j:4",128,0,4,-8
	.stabs "str:p41=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB29-FileIO_ReadString
	.stabn 224,0,0,.LBE29-FileIO_ReadString
	.stabs "FileIO_ReadLn:F16",36,0,0,FileIO_ReadLn
	.align 4
FileIO_ReadLn:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab309, %esp
.LN340:
	.stabn  68,0,641,.LN340-FileIO_ReadLn		# line 641, column 3
.LBB30:
.LN341:
	.stabn  68,0,642,.LN341-FileIO_ReadLn		# line 642, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab310
.Lab311:
.LN342:
	.stabn  68,0,642,.LN342-FileIO_ReadLn		# line 642, column 29
	movb	$0,FileIO_s 
.LN343:
	.stabn  68,0,642,.LN343-FileIO_ReadLn		# line 642, column 39
	leave
	ret
.Lab310:
	jmp	.Lab312
.Lab313:
.LN344:
	.stabn  68,0,643,.LN344-FileIO_ReadLn		# line 643, column 23
	leal	-5(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Read
	addl	$8, %esp
.Lab312:
.LN345:
	.stabn  68,0,643,.LN345-FileIO_ReadLn		# line 643, column 11
	movl	8(%ebp),%eax
	cmpb	$0,15(%eax)
	je	.Lab313
.Lab314:
.LN346:
	.stabn  68,0,644,.LN346-FileIO_ReadLn		# line 644, column 15
	movl	8(%ebp),%eax
	movb	$0,18(%eax) 
.LN347:
	.stabn  68,0,644,.LN347-FileIO_ReadLn		# line 644, column 32
	movl	8(%ebp),%eax
	movb	$0,15(%eax) 
.LN348:
	.stabn  68,0,645,.LN348-FileIO_ReadLn		# line 645, column 0
.LBE30:
	leave
	ret
	.Lab309 = 8
	.stabs "ch:2",128,0,1,-5
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB30-FileIO_ReadLn
	.stabn 224,0,0,.LBE30-FileIO_ReadLn
	.stabs "FileIO_ReadAgain:F16",36,0,0,FileIO_ReadAgain
	.align 4
FileIO_ReadAgain:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab315, %esp
.LN349:
	.stabn  68,0,631,.LN349-FileIO_ReadAgain		# line 631, column 3
.LBB31:
.LN350:
	.stabn  68,0,632,.LN350-FileIO_ReadAgain		# line 632, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab318
.Lab317:
.LN351:
	.stabn  68,0,633,.LN351-FileIO_ReadAgain		# line 633, column 17
	movb	$0,FileIO_s 
	jmp	.Lab316
.Lab318:
.LN352:
	.stabn  68,0,634,.LN352-FileIO_ReadAgain		# line 634, column 22
	movl	8(%ebp),%eax
	movb	$1,18(%eax) 
.Lab316:
.LN353:
	.stabn  68,0,635,.LN353-FileIO_ReadAgain		# line 635, column 0
.LBE31:
	leave
	ret
	.Lab315 = 4
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB31-FileIO_ReadAgain
	.stabn 224,0,0,.LBE31-FileIO_ReadAgain
	.stabs "FileIO_Read:F16",36,0,0,FileIO_Read
	.align 4
FileIO_Read:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab319, %esp
.LN354:
	.stabn  68,0,607,.LN354-FileIO_Read		# line 607, column 3
.LBB32:
.LN355:
	.stabn  68,0,608,.LN355-FileIO_Read		# line 608, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab320
.Lab321:
.LN356:
	.stabn  68,0,608,.LN356-FileIO_Read		# line 608, column 29
	movb	$0,FileIO_s 
.LN357:
	.stabn  68,0,608,.LN357-FileIO_Read		# line 608, column 42
	movl	12(%ebp),%eax
	movb	$0,(%eax) 
.LN358:
	.stabn  68,0,608,.LN358-FileIO_Read		# line 608, column 49
	leave
	ret
.Lab320:
.LN359:
	.stabn  68,0,609,.LN359-FileIO_Read		# line 609, column 5
	movl	8(%ebp),%eax
	cmpb	$1,18(%eax)
	je	.Lab323
.Lab325:
	movl	8(%ebp),%eax
	cmpb	$0,14(%eax)
	je	.Lab324
.Lab323:
.LN360:
	.stabn  68,0,611,.LN360-FileIO_Read		# line 611, column 12
	movl	12(%ebp),%ebx
	movl	8(%ebp),%eax
	movb	12(%eax),%al
	movb	%al,(%ebx) 
.LN361:
	.stabn  68,0,611,.LN361-FileIO_Read		# line 611, column 32
	movl	12(%ebp),%eax
	cmpb	$0,(%eax)
	setne	%al
	movb	%al,FileIO_s 
	jmp	.Lab322
.Lab324:
.LN362:
	.stabn  68,0,613,.LN362-FileIO_Read		# line 613, column 9
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 4,%eax
	je	.Lab327
.Lab329:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 12,%eax
	jne	.Lab328
.Lab330:
	cmpb	$0,FileIO_s + 92
	je	.Lab328
.Lab327:
.LN363:
	.stabn  68,0,615,.LN363-FileIO_Read		# line 615, column 13
	pushl	12(%ebp)
	call	FileIO_ConRead
	addl	$4, %esp
.LN364:
	.stabn  68,0,615,.LN364-FileIO_Read		# line 615, column 26
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	pushl	%eax
	call	FileIO_ConWrite
	addl	$4, %esp
.LN365:
	.stabn  68,0,615,.LN365-FileIO_Read		# line 615, column 45
	movl	12(%ebp),%eax
	movb	(%eax),%al
	cmpb	FileIO_s + 20,%al
	setne	%al
	movb	%al,FileIO_s 
.LN366:
	.stabn  68,0,616,.LN366-FileIO_Read		# line 616, column 13
	movl	12(%ebp),%eax
	movb	(%eax),%al
	cmpb	FileIO_s + 108,%al
	jne	.Lab331
.Lab332:
.LN367:
	.stabn  68,0,617,.LN367-FileIO_Read		# line 617, column 15
	movl	12(%ebp),%eax
	cmpb	$8,(%eax)
	je	.Lab333
.Lab334:
.LN368:
	.stabn  68,0,617,.LN368-FileIO_Read		# line 617, column 31
	pushl	$8
	call	FileIO_ConWrite
	addl	$4, %esp
.Lab333:
.LN369:
	.stabn  68,0,618,.LN369-FileIO_Read		# line 618, column 15
	pushl	$32
	call	FileIO_ConWrite
	addl	$4, %esp
.LN370:
	.stabn  68,0,618,.LN370-FileIO_Read		# line 618, column 30
	pushl	$8
	call	FileIO_ConWrite
	addl	$4, %esp
.Lab331:
	jmp	.Lab326
.Lab328:
.LN371:
	.stabn  68,0,621,.LN371-FileIO_Read		# line 621, column 13
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_GetByte
	addl	$8, %esp
.LN372:
	.stabn  68,0,622,.LN372-FileIO_Read		# line 622, column 13
	movl	12(%ebp),%eax
	cmpb	$13,(%eax)
	jne	.Lab335
.Lab336:
.LN373:
	.stabn  68,0,622,.LN373-FileIO_Read		# line 622, column 32
	movl	12(%ebp),%eax
	movb	$10,(%eax) 
.Lab335:
.Lab326:
.Lab322:
.LN374:
	.stabn  68,0,625,.LN374-FileIO_Read		# line 625, column 5
	cmpb	$1,FileIO_s
	je	.Lab337
.Lab338:
.LN375:
	.stabn  68,0,625,.LN375-FileIO_Read		# line 625, column 23
	movl	12(%ebp),%eax
	movb	$0,(%eax) 
.Lab337:
.LN376:
	.stabn  68,0,626,.LN376-FileIO_Read		# line 626, column 16
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,12(%ebx) 
.LN377:
	.stabn  68,0,626,.LN377-FileIO_Read		# line 626, column 33
	cmpb	$1,FileIO_s
	je	.Lab340
.Lab339:
	movb	$1,-8(%ebp) 
	jmp	.Lab341
.Lab340:
	movb	$0,-8(%ebp) 
.Lab341:
	movl	8(%ebp),%ebx
	movb	-8(%ebp),%al
	movb	%al,18(%ebx) 
.LN378:
	.stabn  68,0,627,.LN378-FileIO_Read		# line 627, column 12
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	cmpb	$0,(%eax)
	sete	%al
	movb	%al,14(%ebx) 
.LN379:
	.stabn  68,0,627,.LN379-FileIO_Read		# line 627, column 31
	movl	8(%ebp),%eax
	cmpb	$1,14(%eax)
	je	.Lab343
.Lab342:
	movl	12(%ebp),%eax
	cmpb	$10,(%eax)
	jne	.Lab344
.Lab343:
	movb	$1,-12(%ebp) 
	jmp	.Lab345
.Lab344:
	movb	$0,-12(%ebp) 
.Lab345:
	movl	8(%ebp),%ebx
	movb	-12(%ebp),%al
	movb	%al,15(%ebx) 
.LN380:
	.stabn  68,0,628,.LN380-FileIO_Read		# line 628, column 0
.LBE32:
	leave
	ret
	.Lab319 = 12
	.stabs "ch:v2",160,0,1,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB32-FileIO_Read
	.stabn 224,0,0,.LBE32-FileIO_Read
	.stabs "FileIO_EndOfFile:F1",36,0,0,FileIO_EndOfFile
	.align 4
FileIO_EndOfFile:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab346, %esp
.LN381:
	.stabn  68,0,599,.LN381-FileIO_EndOfFile		# line 599, column 3
.LBB33:
.LN382:
	.stabn  68,0,600,.LN382-FileIO_EndOfFile		# line 600, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab349
.Lab348:
.LN383:
	.stabn  68,0,601,.LN383-FileIO_EndOfFile		# line 601, column 17
	movb	$0,FileIO_s 
.LN384:
	.stabn  68,0,601,.LN384-FileIO_EndOfFile		# line 601, column 27
	movb	$1,%al
	leave
	ret
	jmp	.Lab347
.Lab349:
.LN385:
	.stabn  68,0,602,.LN385-FileIO_EndOfFile		# line 602, column 17
	movb	$1,FileIO_s 
.LN386:
	.stabn  68,0,602,.LN386-FileIO_EndOfFile		# line 602, column 26
	movl	8(%ebp),%eax
	movb	14(%eax),%al
	leave
	ret
.Lab347:
.LN387:
	.stabn  68,0,603,.LN387-FileIO_EndOfFile		# line 603, column 0
	call	ReturnErr_
.LBE33:
	leave
	ret
	.Lab346 = 4
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB33-FileIO_EndOfFile
	.stabn 224,0,0,.LBE33-FileIO_EndOfFile
	.stabs "FileIO_EndOfLine:F1",36,0,0,FileIO_EndOfLine
	.align 4
FileIO_EndOfLine:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab350, %esp
.LN388:
	.stabn  68,0,591,.LN388-FileIO_EndOfLine		# line 591, column 3
.LBB34:
.LN389:
	.stabn  68,0,592,.LN389-FileIO_EndOfLine		# line 592, column 5
	pushl	8(%ebp)
	call	FileIO_NotRead
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab353
.Lab352:
.LN390:
	.stabn  68,0,593,.LN390-FileIO_EndOfLine		# line 593, column 17
	movb	$0,FileIO_s 
.LN391:
	.stabn  68,0,593,.LN391-FileIO_EndOfLine		# line 593, column 27
	movb	$1,%al
	leave
	ret
	jmp	.Lab351
.Lab353:
.LN392:
	.stabn  68,0,594,.LN392-FileIO_EndOfLine		# line 594, column 17
	movb	$1,FileIO_s 
.LN393:
	.stabn  68,0,594,.LN393-FileIO_EndOfLine		# line 594, column 26
	movl	8(%ebp),%eax
	cmpb	$1,15(%eax)
	je	.Lab355
.Lab354:
	movl	8(%ebp),%eax
	cmpb	$0,14(%eax)
	je	.Lab356
.Lab355:
	movb	$1,-8(%ebp) 
	jmp	.Lab357
.Lab356:
	movb	$0,-8(%ebp) 
.Lab357:
	movb	-8(%ebp),%al
	leave
	ret
.Lab351:
.LN394:
	.stabn  68,0,595,.LN394-FileIO_EndOfLine		# line 595, column 0
	call	ReturnErr_
.LBE34:
	leave
	ret
	.Lab350 = 8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB34-FileIO_EndOfLine
	.stabn 224,0,0,.LBE34-FileIO_EndOfLine
	.stabs "FileIO_Rewrite:F16",36,0,0,FileIO_Rewrite
	.align 4
FileIO_Rewrite:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab358, %esp
.LN395:
	.stabn  68,0,572,.LN395-FileIO_Rewrite		# line 572, column 3
.LBB35:
.LN396:
	.stabn  68,0,573,.LN396-FileIO_Rewrite		# line 573, column 5
	pushl	8(%ebp)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab361
.Lab360:
.LN397:
	.stabn  68,0,575,.LN397-FileIO_Rewrite		# line 575, column 14
	movb	$0,FileIO_s 
	jmp	.Lab359
.Lab361:
.LN398:
	.stabn  68,0,577,.LN398-FileIO_Rewrite		# line 577, column 9
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_Close
	addl	$4, %esp
.LN399:
	.stabn  68,0,578,.LN399-FileIO_Rewrite		# line 578, column 9
	pushl	$256
	movl	$19,%eax
 	addl	8(%ebp),%eax 
	pushl	%eax
	movl	$0,%eax
 	addl	8(%ebp),%eax 
	pushl	%eax
	call	FileIO_BuffIO_OpenOutput
	addl	$12, %esp
.LN400:
	.stabn  68,0,579,.LN400-FileIO_Rewrite		# line 579, column 9
	cmpb	$1,FileIO_s
	je	.Lab364
.Lab363:
.LN401:
	.stabn  68,0,581,.LN401-FileIO_Rewrite		# line 581, column 13
	pushl	$276
	leal	8(%ebp),%eax
	pushl	%eax
	call	Storage_DEALLOCATE
	addl	$8, %esp
.LN402:
	.stabn  68,0,581,.LN402-FileIO_Rewrite		# line 581, column 53
	movl	$0,8(%ebp) 
	jmp	.Lab362
.Lab364:
.LN403:
	.stabn  68,0,583,.LN403-FileIO_Rewrite		# line 583, column 24
	movl	8(%ebp),%eax
	movb	$0,12(%eax) 
.LN404:
	.stabn  68,0,583,.LN404-FileIO_Rewrite		# line 583, column 41
	movl	8(%ebp),%eax
	movb	$0,18(%eax) 
.LN405:
	.stabn  68,0,584,.LN405-FileIO_Rewrite		# line 584, column 20
	movl	8(%ebp),%eax
	movb	$1,14(%eax) 
.LN406:
	.stabn  68,0,584,.LN406-FileIO_Rewrite		# line 584, column 36
	movl	8(%ebp),%eax
	movb	$1,15(%eax) 
.LN407:
	.stabn  68,0,585,.LN407-FileIO_Rewrite		# line 585, column 24
	movl	8(%ebp),%eax
	movb	$1,17(%eax) 
.LN408:
	.stabn  68,0,585,.LN408-FileIO_Rewrite		# line 585, column 45
	movl	8(%ebp),%eax
	movb	$0,16(%eax) 
.Lab362:
.Lab359:
.LN409:
	.stabn  68,0,586,.LN409-FileIO_Rewrite		# line 586, column 0
.LBE35:
	leave
	ret
	.Lab358 = 4
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB35-FileIO_Rewrite
	.stabn 224,0,0,.LBE35-FileIO_Rewrite
	.stabs "FileIO_Reset:F16",36,0,0,FileIO_Reset
	.align 4
FileIO_Reset:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab365, %esp
.LN410:
	.stabn  68,0,559,.LN410-FileIO_Reset		# line 559, column 3
.LBB36:
.LN411:
	.stabn  68,0,560,.LN411-FileIO_Reset		# line 560, column 5
	pushl	8(%ebp)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab368
.Lab367:
.LN412:
	.stabn  68,0,562,.LN412-FileIO_Reset		# line 562, column 14
	movb	$0,FileIO_s 
	jmp	.Lab366
.Lab368:
.LN413:
	.stabn  68,0,564,.LN413-FileIO_Reset		# line 564, column 9
	pushl	$0
	pushl	8(%ebp)
	call	FileIO_SetPos
	addl	$8, %esp
.LN414:
	.stabn  68,0,565,.LN414-FileIO_Reset		# line 565, column 9
	cmpb	$0,FileIO_s
	je	.Lab369
.Lab370:
.LN415:
	.stabn  68,0,566,.LN415-FileIO_Reset		# line 566, column 21
	movl	8(%ebp),%eax
	movb	$0,18(%eax) 
.LN416:
	.stabn  68,0,566,.LN416-FileIO_Reset		# line 566, column 38
	movl	8(%ebp),%ebx
	movl	8(%ebp),%eax
	movb	17(%eax),%al
	movb	%al,14(%ebx) 
.LN417:
	.stabn  68,0,566,.LN417-FileIO_Reset		# line 566, column 60
	movl	8(%ebp),%ebx
	movl	8(%ebp),%eax
	movb	17(%eax),%al
	movb	%al,15(%ebx) 
.Lab369:
.Lab366:
.LN418:
	.stabn  68,0,567,.LN418-FileIO_Reset		# line 567, column 0
.LBE36:
	leave
	ret
	.Lab365 = 4
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB36-FileIO_Reset
	.stabn 224,0,0,.LBE36-FileIO_Reset
	.stabs "FileIO_SetPos:F16",36,0,0,FileIO_SetPos
	.align 4
FileIO_SetPos:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab371, %esp
.LN419:
	.stabn  68,0,551,.LN419-FileIO_SetPos		# line 551, column 3
.LBB37:
.LN420:
	.stabn  68,0,552,.LN420-FileIO_SetPos		# line 552, column 5
	pushl	8(%ebp)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab374
.Lab373:
.LN421:
	.stabn  68,0,553,.LN421-FileIO_SetPos		# line 553, column 17
	movb	$0,FileIO_s 
	jmp	.Lab372
.Lab374:
.LN422:
	.stabn  68,0,554,.LN422-FileIO_SetPos		# line 554, column 12
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_SetPos
	addl	$8, %esp
.LN423:
	.stabn  68,0,554,.LN423-FileIO_SetPos		# line 554, column 50
	movl	8(%ebp),%eax
	movb	$0,18(%eax) 
.Lab372:
.LN424:
	.stabn  68,0,555,.LN424-FileIO_SetPos		# line 555, column 0
.LBE37:
	leave
	ret
	.Lab371 = 4
	.stabs "pos:p7",160,0,4,12
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB37-FileIO_SetPos
	.stabn 224,0,0,.LBE37-FileIO_SetPos
	.stabs "FileIO_GetPos:F7",36,0,0,FileIO_GetPos
	.align 4
FileIO_GetPos:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab375, %esp
.LN425:
	.stabn  68,0,542,.LN425-FileIO_GetPos		# line 542, column 3
.LBB38:
.LN426:
	.stabn  68,0,543,.LN426-FileIO_GetPos		# line 543, column 5
	pushl	8(%ebp)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab378
.Lab377:
.LN427:
	.stabn  68,0,544,.LN427-FileIO_GetPos		# line 544, column 17
	movb	$0,FileIO_s 
.LN428:
	.stabn  68,0,544,.LN428-FileIO_GetPos		# line 544, column 27
	movl	$0,%eax
	leave
	ret
	jmp	.Lab376
.Lab378:
.LN429:
	.stabn  68,0,545,.LN429-FileIO_GetPos		# line 545, column 16
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_GetPos
	addl	$4, %esp
	.data
	.align 4
.Lab379:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab379
	movl	%eax,-8(%ebp) 
.Lab376:
.LN430:
	.stabn  68,0,547,.LN430-FileIO_GetPos		# line 547, column 5
	movl	-8(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab380
.Lab381:
   	call	BoundErr_		
.Lab380:
	leave
	ret
.LN431:
	.stabn  68,0,548,.LN431-FileIO_GetPos		# line 548, column 0
	call	ReturnErr_
.LBE38:
	leave
	ret
	.Lab375 = 8
	.stabs "pos:4",128,0,4,-8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB38-FileIO_GetPos
	.stabn 224,0,0,.LBE38-FileIO_GetPos
	.stabs "FileIO_Length:F7",36,0,0,FileIO_Length
	.align 4
FileIO_Length:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab382, %esp
.LN432:
	.stabn  68,0,526,.LN432-FileIO_Length		# line 526, column 3
.LBB39:
.LN433:
	.stabn  68,0,527,.LN433-FileIO_Length		# line 527, column 5
	pushl	8(%ebp)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab385
.Lab384:
.LN434:
	.stabn  68,0,529,.LN434-FileIO_Length		# line 529, column 14
	movb	$0,FileIO_s 
.LN435:
	.stabn  68,0,529,.LN435-FileIO_Length		# line 529, column 24
	movl	$0,%eax
	leave
	ret
	jmp	.Lab383
.Lab385:
.LN436:
	.stabn  68,0,531,.LN436-FileIO_Length		# line 531, column 13
	pushl	$1
	pushl	$0
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	lseek
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN437:
	.stabn  68,0,532,.LN437-FileIO_Length		# line 532, column 13
	pushl	$2
	pushl	$0
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	lseek
	addl	$12, %esp
	movl	%eax,-12(%ebp) 
.LN438:
	.stabn  68,0,533,.LN438-FileIO_Length		# line 533, column 13
	pushl	$0
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab386:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab386
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	lseek
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN439:
	.stabn  68,0,534,.LN439-FileIO_Length		# line 534, column 14
	cmpl	$0,-8(%ebp)
	setge	%al
	movb	%al,FileIO_s 
.Lab383:
.LN440:
	.stabn  68,0,536,.LN440-FileIO_Length		# line 536, column 5
	movl	-12(%ebp),%eax
	leave
	ret
.LN441:
	.stabn  68,0,537,.LN441-FileIO_Length		# line 537, column 0
	call	ReturnErr_
.LBE39:
	leave
	ret
	.Lab382 = 12
	.stabs "len:7",128,0,4,-12
	.stabs "pos:7",128,0,4,-8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB39-FileIO_Length
	.stabn 224,0,0,.LBE39-FileIO_Length
	.stabs "FileIO_ChangeExtension:F16",36,0,0,FileIO_ChangeExtension
	.align 4
FileIO_ChangeExtension:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab387, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
	movl	20(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	16(%ebp),%esi
	movl	%edi,16(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN442:
	.stabn  68,0,503,.LN442-FileIO_ChangeExtension		# line 503, column 3
.LBB40:
.LN443:
	.stabn  68,0,504,.LN443-FileIO_ChangeExtension		# line 504, column 5
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	FileIO_ExtractDirectory
	addl	$16, %esp
.LN444:
	.stabn  68,0,505,.LN444-FileIO_ChangeExtension		# line 505, column 5
	pushl	$256
	leal	-269(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	FileIO_ExtractFileName
	addl	$16, %esp
.LN445:
	.stabn  68,0,506,.LN445-FileIO_ChangeExtension		# line 506, column 7
	movl	$0,-8(%ebp) 
.LN446:
	.stabn  68,0,506,.LN446-FileIO_ChangeExtension		# line 506, column 15
	movl	$0,-12(%ebp) 
	jmp	.Lab388
.Lab389:
.LN447:
	.stabn  68,0,508,.LN447-FileIO_ChangeExtension		# line 508, column 7
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab393
.Lab394:
   	call	BoundErr_		
.Lab393:
	cmpb	$46,-269(%ebp,%eax,1)
	jne	.Lab391
.Lab392:
.LN448:
	.stabn  68,0,508,.LN448-FileIO_ChangeExtension		# line 508, column 29
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.Lab391:
.LN449:
	.stabn  68,0,509,.LN449-FileIO_ChangeExtension		# line 509, column 7
	incl	-8(%ebp) 
.Lab388:
.LN450:
	.stabn  68,0,507,.LN450-FileIO_ChangeExtension		# line 507, column 29
	cmpl	$256,-8(%ebp)
	ja	.Lab390
.Lab395:
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab396
.Lab397:
   	call	BoundErr_		
.Lab396:
	cmpb	$0,-269(%ebp,%eax,1)
	jne	.Lab389
.Lab390:
.LN451:
	.stabn  68,0,511,.LN451-FileIO_ChangeExtension		# line 511, column 5
	cmpl	$0,-12(%ebp)
	je	.Lab398
.Lab399:
.LN452:
	.stabn  68,0,511,.LN452-FileIO_ChangeExtension		# line 511, column 21
	movl	-12(%ebp),%eax
 	subl	$1,%eax 
	movl	%eax,-8(%ebp) 
.Lab398:
.LN453:
	.stabn  68,0,512,.LN453-FileIO_ChangeExtension		# line 512, column 5
	movl	$0,%eax
	cmpl	20(%ebp),%eax
	jbe	.Lab403
.Lab404:
   	call	BoundErr_		
.Lab403:
 	addl	16(%ebp),%eax 
	cmpb	$46,(%eax)
	je	.Lab400
.Lab402:
	movl	$0,%eax
	cmpl	20(%ebp),%eax
	jbe	.Lab405
.Lab406:
   	call	BoundErr_		
.Lab405:
 	addl	16(%ebp),%eax 
	cmpb	$0,(%eax)
	je	.Lab400
.Lab401:
.LN454:
	.stabn  68,0,513,.LN454-FileIO_ChangeExtension		# line 513, column 7
	cmpl	$256,-8(%ebp)
	ja	.Lab407
.Lab408:
.LN455:
	.stabn  68,0,513,.LN455-FileIO_ChangeExtension		# line 513, column 37
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab409
.Lab410:
   	call	BoundErr_		
.Lab409:
	movb	$46,-269(%ebp,%eax,1) 
.LN456:
	.stabn  68,0,513,.LN456-FileIO_ChangeExtension		# line 513, column 45
	incl	-8(%ebp) 
.Lab407:
.Lab400:
.LN457:
	.stabn  68,0,515,.LN457-FileIO_ChangeExtension		# line 515, column 7
	movl	$0,-12(%ebp) 
	jmp	.Lab411
.Lab412:
.LN458:
	.stabn  68,0,517,.LN458-FileIO_ChangeExtension		# line 517, column 13
	movl	-8(%ebp),%ebx
	cmpl	$256,%ebx
	jbe	.Lab414
.Lab415:
   	call	BoundErr_		
.Lab414:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab417
	cmpl	20(%ebp),%eax
	jbe	.Lab416
.Lab417:
   	call	BoundErr_		
.Lab416:
 	addl	16(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,-269(%ebp,%ebx,1) 
.LN459:
	.stabn  68,0,517,.LN459-FileIO_ChangeExtension		# line 517, column 24
	incl	-8(%ebp) 
.LN460:
	.stabn  68,0,517,.LN460-FileIO_ChangeExtension		# line 517, column 32
	incl	-12(%ebp) 
.Lab411:
.LN461:
	.stabn  68,0,516,.LN461-FileIO_ChangeExtension		# line 516, column 44
	movl	-12(%ebp),%eax
	cmpl	20(%ebp),%eax
	ja	.Lab413
.Lab419:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab421
	cmpl	20(%ebp),%eax
	jbe	.Lab420
.Lab421:
   	call	BoundErr_		
.Lab420:
 	addl	16(%ebp),%eax 
	cmpb	$0,(%eax)
	je	.Lab413
.Lab418:
	leal	-269(%ebp),%eax
	cmpl	$256,-8(%ebp)
	jbe	.Lab412
.Lab413:
.LN462:
	.stabn  68,0,519,.LN462-FileIO_ChangeExtension		# line 519, column 5
	cmpl	$256,-8(%ebp)
	ja	.Lab422
.Lab423:
.LN463:
	.stabn  68,0,519,.LN463-FileIO_ChangeExtension		# line 519, column 35
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab424
.Lab425:
   	call	BoundErr_		
.Lab424:
	movb	$0,-269(%ebp,%eax,1) 
.Lab422:
.LN464:
	.stabn  68,0,520,.LN464-FileIO_ChangeExtension		# line 520, column 5
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	$256
	leal	-269(%ebp),%eax
	pushl	%eax
	pushl	28(%ebp)
	pushl	24(%ebp)
	call	FileIO_Concat
	addl	$24, %esp
.LN465:
	.stabn  68,0,521,.LN465-FileIO_ChangeExtension		# line 521, column 0
.LBE40:
	leave
	ret
	.Lab387 = 272
	.stabs "fn:42=ar4;0;256;2",128,0,257,-269
	.stabs "j:4",128,0,4,-12
	.stabs "i:4",128,0,4,-8
	.stabs "newName:p43=s8start:*2,0,32;high:5,32,32;;",160,0,8,24
	.stabs "ext:p44=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "oldName:p44",160,0,8,8
	.stabn 192,0,0,.LBB40-FileIO_ChangeExtension
	.stabn 224,0,0,.LBE40-FileIO_ChangeExtension
	.stabs "FileIO_AppendExtension:F16",36,0,0,FileIO_AppendExtension
	.align 4
FileIO_AppendExtension:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab426, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
	movl	20(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	16(%ebp),%esi
	movl	%edi,16(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN466:
	.stabn  68,0,476,.LN466-FileIO_AppendExtension		# line 476, column 3
.LBB41:
.LN467:
	.stabn  68,0,477,.LN467-FileIO_AppendExtension		# line 477, column 5
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	FileIO_ExtractDirectory
	addl	$16, %esp
.LN468:
	.stabn  68,0,478,.LN468-FileIO_AppendExtension		# line 478, column 5
	pushl	$256
	leal	-269(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	FileIO_ExtractFileName
	addl	$16, %esp
.LN469:
	.stabn  68,0,479,.LN469-FileIO_AppendExtension		# line 479, column 7
	movl	$0,-8(%ebp) 
.LN470:
	.stabn  68,0,479,.LN470-FileIO_AppendExtension		# line 479, column 15
	movl	$0,-12(%ebp) 
	jmp	.Lab427
.Lab428:
.LN471:
	.stabn  68,0,481,.LN471-FileIO_AppendExtension		# line 481, column 7
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab432
.Lab433:
   	call	BoundErr_		
.Lab432:
	cmpb	$46,-269(%ebp,%eax,1)
	jne	.Lab430
.Lab431:
.LN472:
	.stabn  68,0,481,.LN472-FileIO_AppendExtension		# line 481, column 29
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.Lab430:
.LN473:
	.stabn  68,0,482,.LN473-FileIO_AppendExtension		# line 482, column 7
	incl	-8(%ebp) 
.Lab427:
.LN474:
	.stabn  68,0,480,.LN474-FileIO_AppendExtension		# line 480, column 29
	cmpl	$256,-8(%ebp)
	ja	.Lab429
.Lab434:
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab435
.Lab436:
   	call	BoundErr_		
.Lab435:
	cmpb	$0,-269(%ebp,%eax,1)
	jne	.Lab428
.Lab429:
.LN475:
	.stabn  68,0,484,.LN475-FileIO_AppendExtension		# line 484, column 5
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	.Lab438
.Lab439:
	cmpl	$0,-8(%ebp)
	jne	.Lab437
.Lab438:
.LN476:
	.stabn  68,0,485,.LN476-FileIO_AppendExtension		# line 485, column 7
	cmpl	$0,-12(%ebp)
	je	.Lab440
.Lab441:
.LN477:
	.stabn  68,0,485,.LN477-FileIO_AppendExtension		# line 485, column 23
	movl	-12(%ebp),%eax
 	subl	$1,%eax 
	movl	%eax,-8(%ebp) 
.Lab440:
.LN478:
	.stabn  68,0,486,.LN478-FileIO_AppendExtension		# line 486, column 7
	movl	$0,%eax
	cmpl	20(%ebp),%eax
	jbe	.Lab445
.Lab446:
   	call	BoundErr_		
.Lab445:
 	addl	16(%ebp),%eax 
	cmpb	$46,(%eax)
	je	.Lab442
.Lab444:
	movl	$0,%eax
	cmpl	20(%ebp),%eax
	jbe	.Lab447
.Lab448:
   	call	BoundErr_		
.Lab447:
 	addl	16(%ebp),%eax 
	cmpb	$0,(%eax)
	je	.Lab442
.Lab443:
.LN479:
	.stabn  68,0,487,.LN479-FileIO_AppendExtension		# line 487, column 9
	cmpl	$256,-8(%ebp)
	ja	.Lab449
.Lab450:
.LN480:
	.stabn  68,0,487,.LN480-FileIO_AppendExtension		# line 487, column 39
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab451
.Lab452:
   	call	BoundErr_		
.Lab451:
	movb	$46,-269(%ebp,%eax,1) 
.LN481:
	.stabn  68,0,487,.LN481-FileIO_AppendExtension		# line 487, column 47
	incl	-8(%ebp) 
.Lab449:
.Lab442:
.LN482:
	.stabn  68,0,489,.LN482-FileIO_AppendExtension		# line 489, column 9
	movl	$0,-12(%ebp) 
	jmp	.Lab453
.Lab454:
.LN483:
	.stabn  68,0,491,.LN483-FileIO_AppendExtension		# line 491, column 15
	movl	-8(%ebp),%ebx
	cmpl	$256,%ebx
	jbe	.Lab456
.Lab457:
   	call	BoundErr_		
.Lab456:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab459
	cmpl	20(%ebp),%eax
	jbe	.Lab458
.Lab459:
   	call	BoundErr_		
.Lab458:
 	addl	16(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,-269(%ebp,%ebx,1) 
.LN484:
	.stabn  68,0,491,.LN484-FileIO_AppendExtension		# line 491, column 26
	incl	-8(%ebp) 
.LN485:
	.stabn  68,0,491,.LN485-FileIO_AppendExtension		# line 491, column 34
	incl	-12(%ebp) 
.Lab453:
.LN486:
	.stabn  68,0,490,.LN486-FileIO_AppendExtension		# line 490, column 46
	movl	-12(%ebp),%eax
	cmpl	20(%ebp),%eax
	ja	.Lab455
.Lab461:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab463
	cmpl	20(%ebp),%eax
	jbe	.Lab462
.Lab463:
   	call	BoundErr_		
.Lab462:
 	addl	16(%ebp),%eax 
	cmpb	$0,(%eax)
	je	.Lab455
.Lab460:
	cmpl	$256,-8(%ebp)
	jbe	.Lab454
.Lab455:
.Lab437:
.LN487:
	.stabn  68,0,494,.LN487-FileIO_AppendExtension		# line 494, column 5
	cmpl	$256,-8(%ebp)
	ja	.Lab464
.Lab465:
.LN488:
	.stabn  68,0,494,.LN488-FileIO_AppendExtension		# line 494, column 35
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab466
.Lab467:
   	call	BoundErr_		
.Lab466:
	movb	$0,-269(%ebp,%eax,1) 
.Lab464:
.LN489:
	.stabn  68,0,495,.LN489-FileIO_AppendExtension		# line 495, column 5
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	$256
	leal	-269(%ebp),%eax
	pushl	%eax
	pushl	28(%ebp)
	pushl	24(%ebp)
	call	FileIO_Concat
	addl	$24, %esp
.LN490:
	.stabn  68,0,496,.LN490-FileIO_AppendExtension		# line 496, column 0
.LBE41:
	leave
	ret
	.Lab426 = 272
	.stabs "fn:45=ar4;0;256;2",128,0,257,-269
	.stabs "j:4",128,0,4,-12
	.stabs "i:4",128,0,4,-8
	.stabs "newName:p46=s8start:*2,0,32;high:5,32,32;;",160,0,8,24
	.stabs "ext:p47=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "oldName:p47",160,0,8,8
	.stabn 192,0,0,.LBB41-FileIO_AppendExtension
	.stabn 224,0,0,.LBE41-FileIO_AppendExtension
	.stabs "FileIO_ExtractFileName:F16",36,0,0,FileIO_ExtractFileName
	.align 4
FileIO_ExtractFileName:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab468, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN491:
	.stabn  68,0,458,.LN491-FileIO_ExtractFileName		# line 458, column 3
.LBB42:
.LN492:
	.stabn  68,0,459,.LN492-FileIO_ExtractFileName		# line 459, column 11
	movl	$0,-16(%ebp) 
.LN493:
	.stabn  68,0,459,.LN493-FileIO_ExtractFileName		# line 459, column 19
	movl	$0,-12(%ebp) 
	jmp	.Lab469
.Lab470:
.LN494:
	.stabn  68,0,461,.LN494-FileIO_ExtractFileName		# line 461, column 7
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab476
	cmpl	12(%ebp),%eax
	jbe	.Lab475
.Lab476:
   	call	BoundErr_		
.Lab475:
 	addl	8(%ebp),%eax 
	cmpb	$58,(%eax)
	je	.Lab473
.Lab474:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab478
	cmpl	12(%ebp),%eax
	jbe	.Lab477
.Lab478:
   	call	BoundErr_		
.Lab477:
 	addl	8(%ebp),%eax 
	cmpb	$47,(%eax)
	jne	.Lab472
.Lab473:
.LN495:
	.stabn  68,0,461,.LN495-FileIO_ExtractFileName		# line 461, column 67
	movl	$1,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-16(%ebp) 
.Lab472:
.LN496:
	.stabn  68,0,462,.LN496-FileIO_ExtractFileName		# line 462, column 7
	incl	-12(%ebp) 
.Lab469:
.LN497:
	.stabn  68,0,460,.LN497-FileIO_ExtractFileName		# line 460, column 33
	movl	-12(%ebp),%eax
	cmpl	12(%ebp),%eax
	ja	.Lab471
.Lab479:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab481
	cmpl	12(%ebp),%eax
	jbe	.Lab480
.Lab481:
   	call	BoundErr_		
.Lab480:
 	addl	8(%ebp),%eax 
	cmpb	$0,(%eax)
	jne	.Lab470
.Lab471:
.LN498:
	.stabn  68,0,464,.LN498-FileIO_ExtractFileName		# line 464, column 7
	movl	$0,-8(%ebp) 
	jmp	.Lab482
.Lab483:
.LN499:
	.stabn  68,0,466,.LN499-FileIO_ExtractFileName		# line 466, column 19
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab486
	cmpl	20(%ebp),%ebx
	jbe	.Lab485
.Lab486:
   	call	BoundErr_		
.Lab485:
 	addl	16(%ebp),%ebx 
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab488
	cmpl	12(%ebp),%eax
	jbe	.Lab487
.Lab488:
   	call	BoundErr_		
.Lab487:
 	addl	8(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,(%ebx) 
.LN500:
	.stabn  68,0,466,.LN500-FileIO_ExtractFileName		# line 466, column 39
	incl	-16(%ebp) 
.LN501:
	.stabn  68,0,466,.LN501-FileIO_ExtractFileName		# line 466, column 51
	incl	-8(%ebp) 
.Lab482:
.LN502:
	.stabn  68,0,465,.LN502-FileIO_ExtractFileName		# line 465, column 23
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jae	.Lab484
.Lab489:
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	jbe	.Lab483
.Lab484:
.LN503:
	.stabn  68,0,468,.LN503-FileIO_ExtractFileName		# line 468, column 5
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	ja	.Lab490
.Lab491:
.LN504:
	.stabn  68,0,468,.LN504-FileIO_ExtractFileName		# line 468, column 45
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab493
	cmpl	20(%ebp),%eax
	jbe	.Lab492
.Lab493:
   	call	BoundErr_		
.Lab492:
 	addl	16(%ebp),%eax 
	movb	$0,(%eax) 
.Lab490:
.LN505:
	.stabn  68,0,469,.LN505-FileIO_ExtractFileName		# line 469, column 0
.LBE42:
	leave
	ret
	.Lab468 = 16
	.stabs "start:4",128,0,4,-16
	.stabs "l:4",128,0,4,-12
	.stabs "i:4",128,0,4,-8
	.stabs "fileName:p48=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "fullName:p49=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB42-FileIO_ExtractFileName
	.stabn 224,0,0,.LBE42-FileIO_ExtractFileName
	.stabs "FileIO_ExtractDirectory:F16",36,0,0,FileIO_ExtractDirectory
	.align 4
FileIO_ExtractDirectory:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab494, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN506:
	.stabn  68,0,442,.LN506-FileIO_ExtractDirectory		# line 442, column 3
.LBB43:
.LN507:
	.stabn  68,0,443,.LN507-FileIO_ExtractDirectory		# line 443, column 11
	movl	$0,-12(%ebp) 
.LN508:
	.stabn  68,0,443,.LN508-FileIO_ExtractDirectory		# line 443, column 19
	movl	$0,-8(%ebp) 
	jmp	.Lab495
.Lab496:
.LN509:
	.stabn  68,0,445,.LN509-FileIO_ExtractDirectory		# line 445, column 7
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	ja	.Lab498
.Lab499:
.LN510:
	.stabn  68,0,446,.LN510-FileIO_ExtractDirectory		# line 446, column 22
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab501
	cmpl	20(%ebp),%ebx
	jbe	.Lab500
.Lab501:
   	call	BoundErr_		
.Lab500:
 	addl	16(%ebp),%ebx 
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab503
	cmpl	12(%ebp),%eax
	jbe	.Lab502
.Lab503:
   	call	BoundErr_		
.Lab502:
 	addl	8(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,(%ebx) 
.Lab498:
.LN511:
	.stabn  68,0,448,.LN511-FileIO_ExtractDirectory		# line 448, column 7
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab508
	cmpl	12(%ebp),%eax
	jbe	.Lab507
.Lab508:
   	call	BoundErr_		
.Lab507:
 	addl	8(%ebp),%eax 
	cmpb	$58,(%eax)
	je	.Lab505
.Lab506:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab510
	cmpl	12(%ebp),%eax
	jbe	.Lab509
.Lab510:
   	call	BoundErr_		
.Lab509:
 	addl	8(%ebp),%eax 
	cmpb	$47,(%eax)
	jne	.Lab504
.Lab505:
.LN512:
	.stabn  68,0,448,.LN512-FileIO_ExtractDirectory		# line 448, column 67
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.Lab504:
.LN513:
	.stabn  68,0,449,.LN513-FileIO_ExtractDirectory		# line 449, column 7
	incl	-8(%ebp) 
.Lab495:
.LN514:
	.stabn  68,0,444,.LN514-FileIO_ExtractDirectory		# line 444, column 33
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	ja	.Lab497
.Lab511:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab513
	cmpl	12(%ebp),%eax
	jbe	.Lab512
.Lab513:
   	call	BoundErr_		
.Lab512:
 	addl	8(%ebp),%eax 
	cmpb	$0,(%eax)
	jne	.Lab496
.Lab497:
.LN515:
	.stabn  68,0,451,.LN515-FileIO_ExtractDirectory		# line 451, column 5
	movl	-12(%ebp),%eax
	cmpl	20(%ebp),%eax
	ja	.Lab514
.Lab515:
.LN516:
	.stabn  68,0,451,.LN516-FileIO_ExtractDirectory		# line 451, column 55
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab517
	cmpl	20(%ebp),%eax
	jbe	.Lab516
.Lab517:
   	call	BoundErr_		
.Lab516:
 	addl	16(%ebp),%eax 
	movb	$0,(%eax) 
.Lab514:
.LN517:
	.stabn  68,0,452,.LN517-FileIO_ExtractDirectory		# line 452, column 0
.LBE43:
	leave
	ret
	.Lab494 = 12
	.stabs "start:4",128,0,4,-12
	.stabs "i:4",128,0,4,-8
	.stabs "directory:p50=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "fullName:p51=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB43-FileIO_ExtractDirectory
	.stabn 224,0,0,.LBE43-FileIO_ExtractDirectory
	.stabs "FileIO_SearchFile:F16",36,0,0,FileIO_SearchFile
	.align 4
FileIO_SearchFile:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab518, %esp
	movl	16(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	12(%ebp),%esi
	movl	%edi,12(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
	movl	24(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	20(%ebp),%esi
	movl	%edi,20(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN518:
	.stabn  68,0,423,.LN518-FileIO_SearchFile		# line 423, column 3
.LBB44:
.LN519:
	.stabn  68,0,424,.LN519-FileIO_SearchFile		# line 424, column 5
	movl	16(%ebp),%eax
	movl	%eax,-536(%ebp) 
	cmpl	$0,-536(%ebp)
	jb	.Lab519
	movl	$0,-16(%ebp) 
	movl	-536(%ebp),%eax
	movl	%eax,-540(%ebp) 
.Lab520:
.LN520:
	.stabn  68,0,424,.LN520-FileIO_SearchFile		# line 424, column 45
	movl	-16(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab522
	cmpl	16(%ebp),%ebx
	jbe	.Lab521
.Lab522:
   	call	BoundErr_		
.Lab521:
 	addl	12(%ebp),%ebx 
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab524
	cmpl	16(%ebp),%eax
	jbe	.Lab523
.Lab524:
   	call	BoundErr_		
.Lab523:
 	addl	12(%ebp),%eax 
	movb	(%eax),%al
	cmpb	$97,%al
	jl	.Lab525
	cmpb	$122,%al
	jg	.Lab525
	subb	$32,%al
.Lab525:
	movb	%al,(%ebx) 
.LN521:
	.stabn  68,0,424,.LN521-FileIO_SearchFile		# line 424, column 5
	movl	-16(%ebp),%eax
	cmpl	-540(%ebp),%eax
	jae	.Lab519
	incl	-16(%ebp) 
	jmp	.Lab520
.Lab519:
.LN522:
	.stabn  68,0,425,.LN522-FileIO_SearchFile		# line 425, column 5
	pushl	$256
	leal	-531(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	call	FileIO_GetEnv
	addl	$16, %esp
.LN523:
	.stabn  68,0,426,.LN523-FileIO_SearchFile		# line 426, column 7
	movl	$0,-8(%ebp) 
.Lab526:
.LN524:
	.stabn  68,0,428,.LN524-FileIO_SearchFile		# line 428, column 9
	movl	$0,-12(%ebp) 
.Lab528:
.LN525:
	.stabn  68,0,430,.LN525-FileIO_SearchFile		# line 430, column 11
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab530:
	.long	0,256
	.text
	boundl	%eax,.Lab530
	movb	-531(%ebp,%eax,1),%al
	movb	%al,-17(%ebp) 
.LN526:
	.stabn  68,0,430,.LN526-FileIO_SearchFile		# line 430, column 32
	movl	-12(%ebp),%ebx
	.data
	.align 4
.Lab531:
	.long	0,256
	.text
	boundl	%ebx,.Lab531
	movb	-17(%ebp),%al
	movb	%al,-274(%ebp,%ebx,1) 
.LN527:
	.stabn  68,0,430,.LN527-FileIO_SearchFile		# line 430, column 38
	incl	-8(%ebp) 
.LN528:
	.stabn  68,0,430,.LN528-FileIO_SearchFile		# line 430, column 46
	incl	-12(%ebp) 
.LN529:
	.stabn  68,0,431,.LN529-FileIO_SearchFile		# line 431, column 27
	cmpb	$58,-17(%ebp)
	je	.Lab529
.Lab532:
	cmpb	$0,-17(%ebp)
	jne	.Lab528
.Lab529:
.LN530:
	.stabn  68,0,432,.LN530-FileIO_SearchFile		# line 432, column 7
	cmpl	$1,-12(%ebp)
	jle	.Lab535
.Lab536:
	movl	-12(%ebp),%eax
 	subl	$2,%eax 
	.data
	.align 4
.Lab537:
	.long	0,256
	.text
	boundl	%eax,.Lab537
	cmpb	$47,-274(%ebp,%eax,1)
	jne	.Lab535
.Lab534:
.LN531:
	.stabn  68,0,432,.LN531-FileIO_SearchFile		# line 432, column 47
	decl	-12(%ebp) 
	jmp	.Lab533
.Lab535:
.LN532:
	.stabn  68,0,432,.LN532-FileIO_SearchFile		# line 432, column 70
	movl	-12(%ebp),%eax
 	subl	$1,%eax 
	.data
	.align 4
.Lab538:
	.long	0,256
	.text
	boundl	%eax,.Lab538
	movb	$47,-274(%ebp,%eax,1) 
.Lab533:
.LN533:
	.stabn  68,0,433,.LN533-FileIO_SearchFile		# line 433, column 16
	movl	-12(%ebp),%eax
	.data
	.align 4
.Lab539:
	.long	0,256
	.text
	boundl	%eax,.Lab539
	movb	$0,-274(%ebp,%eax,1) 
.LN534:
	.stabn  68,0,433,.LN534-FileIO_SearchFile		# line 433, column 23
	pushl	$256
	leal	-274(%ebp),%eax
	pushl	%eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	$256
	leal	-274(%ebp),%eax
	pushl	%eax
	call	FileIO_Concat
	addl	$24, %esp
.LN535:
	.stabn  68,0,434,.LN535-FileIO_SearchFile		# line 434, column 7
	movzbl	28(%ebp),%eax
	pushl	%eax
	pushl	$256
	leal	-274(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	FileIO_Open
	addl	$16, %esp
.LN536:
	.stabn  68,0,435,.LN536-FileIO_SearchFile		# line 435, column 20
	cmpb	$0,-17(%ebp)
	je	.Lab527
.Lab540:
	cmpb	$0,FileIO_s
	je	.Lab526
.Lab527:
.LN537:
	.stabn  68,0,436,.LN537-FileIO_SearchFile		# line 436, column 0
.LBE44:
	leave
	ret
	.Lab518 = 540
	.stabs "path:52=ar4;0;256;2",128,0,257,-531
	.stabs "fname:53=ar4;0;256;2",128,0,257,-274
	.stabs "c:2",128,0,1,-17
	.stabs "k:4",128,0,4,-16
	.stabs "j:7",128,0,4,-12
	.stabs "i:7",128,0,4,-8
	.stabs "newFile:p1",160,0,1,28
	.stabs "fileName:p54=s8start:*2,0,32;high:5,32,32;;",160,0,8,20
	.stabs "envVar:p54",160,0,8,12
	.stabs "f:v26",160,0,4,8
	.stabn 192,0,0,.LBB44-FileIO_SearchFile
	.stabn 224,0,0,.LBE44-FileIO_SearchFile
	.stabs "FileIO_Delete:F16",36,0,0,FileIO_Delete
	.align 4
FileIO_Delete:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab541, %esp
.LN538:
	.stabn  68,0,392,.LN538-FileIO_Delete		# line 392, column 3
.LBB45:
.LN539:
	.stabn  68,0,393,.LN539-FileIO_Delete		# line 393, column 5
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab544
.Lab543:
.LN540:
	.stabn  68,0,394,.LN540-FileIO_Delete		# line 394, column 17
	movb	$0,FileIO_s 
	jmp	.Lab542
.Lab544:
.LN541:
	.stabn  68,0,395,.LN541-FileIO_Delete		# line 395, column 12
	.data
.Lab545:
 	.ascii	"FileIO.Delete not implemented\000"
	.text
	pushl	$29
	leal	.Lab545,%eax
	pushl	%eax
	pushl	FileIO_s + 8
	call	FileIO_WriteString
	addl	$12, %esp
.Lab542:
.LN542:
	.stabn  68,0,397,.LN542-FileIO_Delete		# line 397, column 10
	movb	$0,FileIO_s 
.LN543:
	.stabn  68,0,397,.LN543-FileIO_Delete		# line 397, column 22
	movl	8(%ebp),%eax
	movl	$0,(%eax) 
.LN544:
	.stabn  68,0,398,.LN544-FileIO_Delete		# line 398, column 0
.LBE45:
	leave
	ret
	.Lab541 = 4
	.stabs "f:v26",160,0,4,8
	.stabn 192,0,0,.LBB45-FileIO_Delete
	.stabn 224,0,0,.LBE45-FileIO_Delete
	.stabs "FileIO_Close:F16",36,0,0,FileIO_Close
	.align 4
FileIO_Close:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab546, %esp
.LN545:
	.stabn  68,0,380,.LN545-FileIO_Close		# line 380, column 3
.LBB46:
.LN546:
	.stabn  68,0,381,.LN546-FileIO_Close		# line 381, column 5
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	FileIO_NotFile
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab548
.Lab551:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	FileIO_s + 12,%eax
	je	.Lab548
.Lab550:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	FileIO_s + 16,%eax
	jne	.Lab549
.Lab548:
.LN547:
	.stabn  68,0,382,.LN547-FileIO_Close		# line 382, column 17
	movb	$0,FileIO_s 
	jmp	.Lab547
.Lab549:
.LN548:
	.stabn  68,0,384,.LN548-FileIO_Close		# line 384, column 9
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	cmpl	$31,%eax
	jbe	.Lab552
.Lab553:
   	call	BoundErr_		
.Lab552:
	btrl	%eax,FileIO_s + 24 
.LN549:
	.stabn  68,0,385,.LN549-FileIO_Close		# line 385, column 9
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	pushl	(%eax)
	call	FileIO_BuffIO_Close
	addl	$4, %esp
.LN550:
	.stabn  68,0,386,.LN550-FileIO_Close		# line 386, column 9
	cmpb	$0,FileIO_s
	je	.Lab554
.Lab555:
.LN551:
	.stabn  68,0,386,.LN551-FileIO_Close		# line 386, column 22
	pushl	$276
	pushl	8(%ebp)
	call	Storage_DEALLOCATE
	addl	$8, %esp
.Lab554:
.LN552:
	.stabn  68,0,387,.LN552-FileIO_Close		# line 387, column 11
	movl	8(%ebp),%eax
	movl	$0,(%eax) 
.Lab547:
.LN553:
	.stabn  68,0,388,.LN553-FileIO_Close		# line 388, column 0
.LBE46:
	leave
	ret
	.Lab546 = 4
	.stabs "f:v26",160,0,4,8
	.stabn 192,0,0,.LBB46-FileIO_Close
	.stabn 224,0,0,.LBE46-FileIO_Close
	.stabs "FileIO_Open:F16",36,0,0,FileIO_Open
	.align 4
FileIO_Open:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab556, %esp
	movl	16(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	12(%ebp),%esi
	movl	%edi,12(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN554:
	.stabn  68,0,343,.LN554-FileIO_Open		# line 343, column 3
.LBB47:
.LN555:
	.stabn  68,0,344,.LN555-FileIO_Open		# line 344, column 5
	pushl	$256
	leal	-265(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	call	FileIO_ExtractFileName
	addl	$16, %esp
.LN556:
	.stabn  68,0,345,.LN556-FileIO_Open		# line 345, column 5
	movl	$0,-8(%ebp) 
.Lab557:
.LN557:
	.stabn  68,0,345,.LN557-FileIO_Open		# line 345, column 45
	movl	-8(%ebp),%ebx
	cmpl	$256,%ebx
	jbe	.Lab559
.Lab560:
   	call	BoundErr_		
.Lab559:
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jbe	.Lab561
.Lab562:
   	call	BoundErr_		
.Lab561:
	movb	-265(%ebp,%eax,1),%al
	cmpb	$97,%al
	jl	.Lab563
	cmpb	$122,%al
	jg	.Lab563
	subb	$32,%al
.Lab563:
	movb	%al,-265(%ebp,%ebx,1) 
.LN558:
	.stabn  68,0,345,.LN558-FileIO_Open		# line 345, column 5
	cmpl	$255,-8(%ebp)
	jae	.Lab558
	incl	-8(%ebp) 
	jmp	.Lab557
.Lab558:
.LN559:
	.stabn  68,0,346,.LN559-FileIO_Open		# line 346, column 5
	cmpb	$0,-265(%ebp)
	je	.Lab565
.Lab567:
	.data
.Lab568:
 	.ascii	"CON\000"
	.text
	pushl	$3
	leal	.Lab568,%eax
	pushl	%eax
	pushl	$256
	leal	-265(%ebp),%eax
	pushl	%eax
	call	FileIO_Compare
	addl	$16, %esp
	cmpl	$0,%eax
	jne	.Lab566
.Lab565:
.LN560:
	.stabn  68,0,348,.LN560-FileIO_Open		# line 348, column 12
	movb	$1,FileIO_s 
.LN561:
	.stabn  68,0,348,.LN561-FileIO_Open		# line 348, column 23
	movl	8(%ebp),%ebx
	movl	FileIO_s + 4,%eax
	movl	%eax,(%ebx) 
.LN562:
	.stabn  68,0,349,.LN562-FileIO_Open		# line 349, column 18
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,12(%eax) 
.LN563:
	.stabn  68,0,349,.LN563-FileIO_Open		# line 349, column 35
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,18(%eax) 
.LN564:
	.stabn  68,0,350,.LN564-FileIO_Open		# line 350, column 14
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,14(%eax) 
.LN565:
	.stabn  68,0,350,.LN565-FileIO_Open		# line 350, column 31
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,15(%eax) 
.LN566:
	.stabn  68,0,350,.LN566-FileIO_Open		# line 350, column 49
	.data
.Lab569:
 	.ascii	"CON\000"
	.text
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	.Lab569,%ebx
	movl	%ebx,19(%eax)
.LN567:
	.stabn  68,0,351,.LN567-FileIO_Open		# line 351, column 7
	leave
	ret
	jmp	.Lab564
.Lab566:
.LN568:
	.stabn  68,0,352,.LN568-FileIO_Open		# line 352, column 5
	.data
.Lab573:
 	.ascii	"ERR\000"
	.text
	pushl	$3
	leal	.Lab573,%eax
	pushl	%eax
	pushl	$256
	leal	-265(%ebp),%eax
	pushl	%eax
	call	FileIO_Compare
	addl	$16, %esp
	cmpl	$0,%eax
	jne	.Lab572
.Lab571:
.LN569:
	.stabn  68,0,353,.LN569-FileIO_Open		# line 353, column 12
	movb	$1,FileIO_s 
.LN570:
	.stabn  68,0,353,.LN570-FileIO_Open		# line 353, column 23
	movl	8(%ebp),%ebx
	movl	FileIO_s + 8,%eax
	movl	%eax,(%ebx) 
.LN571:
	.stabn  68,0,353,.LN571-FileIO_Open		# line 353, column 31
	leave
	ret
	jmp	.Lab570
.Lab572:
.LN572:
	.stabn  68,0,355,.LN572-FileIO_Open		# line 355, column 7
	pushl	$276
	pushl	8(%ebp)
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN573:
	.stabn  68,0,356,.LN573-FileIO_Open		# line 356, column 7
	cmpb	$0,20(%ebp)
	je	.Lab576
.Lab575:
.LN574:
	.stabn  68,0,357,.LN574-FileIO_Open		# line 357, column 14
	pushl	16(%ebp)
	pushl	12(%ebp)
	movl	8(%ebp),%ebx
	movl	$0,%eax
 	addl	(%ebx),%eax 
	pushl	%eax
	call	FileIO_BuffIO_OpenOutput
	addl	$12, %esp
	jmp	.Lab574
.Lab576:
.LN575:
	.stabn  68,0,358,.LN575-FileIO_Open		# line 358, column 14
	pushl	16(%ebp)
	pushl	12(%ebp)
	movl	8(%ebp),%ebx
	movl	$0,%eax
 	addl	(%ebx),%eax 
	pushl	%eax
	call	FileIO_BuffIO_OpenInput
	addl	$12, %esp
.Lab574:
.LN576:
	.stabn  68,0,360,.LN576-FileIO_Open		# line 360, column 7
	cmpb	$1,FileIO_s
	je	.Lab579
.Lab578:
.LN577:
	.stabn  68,0,362,.LN577-FileIO_Open		# line 362, column 11
	pushl	$276
	pushl	8(%ebp)
	call	Storage_DEALLOCATE
	addl	$8, %esp
.LN578:
	.stabn  68,0,362,.LN578-FileIO_Open		# line 362, column 51
	movl	8(%ebp),%eax
	movl	$0,(%eax) 
	jmp	.Lab577
.Lab579:
.LN579:
	.stabn  68,0,365,.LN579-FileIO_Open		# line 365, column 22
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,12(%eax) 
.LN580:
	.stabn  68,0,365,.LN580-FileIO_Open		# line 365, column 39
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,18(%eax) 
.LN581:
	.stabn  68,0,365,.LN581-FileIO_Open		# line 365, column 59
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$1,13(%eax) 
.LN582:
	.stabn  68,0,366,.LN582-FileIO_Open		# line 366, column 18
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	movb	20(%ebp),%al
	movb	%al,14(%ebx) 
.LN583:
	.stabn  68,0,366,.LN583-FileIO_Open		# line 366, column 37
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	movb	20(%ebp),%al
	movb	%al,15(%ebx) 
.LN584:
	.stabn  68,0,366,.LN584-FileIO_Open		# line 366, column 57
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%ebx) 
.LN585:
	.stabn  68,0,367,.LN585-FileIO_Open		# line 367, column 22
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	movb	20(%ebp),%al
	movb	%al,17(%ebx) 
.LN586:
	.stabn  68,0,367,.LN586-FileIO_Open		# line 367, column 46
	cmpb	$1,20(%ebp)
	je	.Lab581
.Lab580:
	movb	$1,-272(%ebp) 
	jmp	.Lab582
.Lab581:
	movb	$0,-272(%ebp) 
.Lab582:
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	movb	-272(%ebp),%al
	movb	%al,16(%ebx) 
.LN587:
	.stabn  68,0,368,.LN587-FileIO_Open		# line 368, column 11
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$256
	movl	8(%ebp),%ebx
	movl	$19,%eax
 	addl	(%ebx),%eax 
	pushl	%eax
	call	FileIO_ASCIIZ
	addl	$16, %esp
.LN588:
	.stabn  68,0,369,.LN588-FileIO_Open		# line 369, column 13
	movl	$0,-8(%ebp) 
	jmp	.Lab583
.Lab584:
.LN589:
	.stabn  68,0,370,.LN589-FileIO_Open		# line 370, column 52
	incl	-8(%ebp) 
.Lab583:
.LN590:
	.stabn  68,0,370,.LN590-FileIO_Open		# line 370, column 32
	movl	-8(%ebp),%eax
	cmpl	$31,%eax
	jbe	.Lab587
.Lab588:
   	call	BoundErr_		
.Lab587:
	btl	%eax,FileIO_s + 24
	jnc	.Lab585
.Lab586:
	cmpl	$16,-8(%ebp)
	jb	.Lab584
.Lab585:
.LN591:
	.stabn  68,0,371,.LN591-FileIO_Open		# line 371, column 11
	cmpl	$16,-8(%ebp)
	jae	.Lab591
.Lab590:
.LN592:
	.stabn  68,0,372,.LN592-FileIO_Open		# line 372, column 28
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx) 
.LN593:
	.stabn  68,0,372,.LN593-FileIO_Open		# line 372, column 34
	movl	-8(%ebp),%eax
	cmpl	$31,%eax
	jbe	.Lab592
.Lab593:
   	call	BoundErr_		
.Lab592:
	btsl	%eax,FileIO_s + 24 
.LN594:
	.stabn  68,0,372,.LN594-FileIO_Open		# line 372, column 62
	movl	-8(%ebp),%ebx
	cmpl	$15,%ebx
	jbe	.Lab594
.Lab595:
   	call	BoundErr_		
.Lab594:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,FileIO_s + 28(,%ebx,4) 
	jmp	.Lab589
.Lab591:
.LN595:
	.stabn  68,0,373,.LN595-FileIO_Open		# line 373, column 18
	.data
.Lab596:
 	.ascii	"Too many files\000"
	.text
	pushl	$14
	leal	.Lab596,%eax
	pushl	%eax
	pushl	FileIO_s + 8
	call	FileIO_WriteString
	addl	$12, %esp
.LN596:
	.stabn  68,0,373,.LN596-FileIO_Open		# line 373, column 59
	movb	$0,FileIO_s 
.Lab589:
.Lab577:
.Lab570:
.Lab564:
.LN597:
	.stabn  68,0,374,.LN597-FileIO_Open		# line 374, column 0
.LBE47:
	leave
	ret
	.Lab556 = 272
	.stabs "name:55=ar4;0;256;2",128,0,257,-265
	.stabs "i:4",128,0,4,-8
	.stabs "newFile:p1",160,0,1,20
	.stabs "fileName:p56=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "f:v26",160,0,4,8
	.stabn 192,0,0,.LBB47-FileIO_Open
	.stabn 224,0,0,.LBE47-FileIO_Open
	.stabs "FileIO_GetEnv:F16",36,0,0,FileIO_GetEnv
	.align 4
FileIO_GetEnv:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab597, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN598:
	.stabn  68,0,331,.LN598-FileIO_GetEnv		# line 331, column 3
.LBB48:
.LN599:
	.stabn  68,0,332,.LN599-FileIO_GetEnv		# line 332, column 8
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	getenv
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN600:
	.stabn  68,0,333,.LN600-FileIO_GetEnv		# line 333, column 5
	cmpl	$0,-8(%ebp)
	je	.Lab600
.Lab599:
.LN601:
	.stabn  68,0,334,.LN601-FileIO_GetEnv		# line 334, column 12
	pushl	$255
	pushl	-8(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	Strings1_Assign
	addl	$16, %esp
	jmp	.Lab598
.Lab600:
.LN602:
	.stabn  68,0,335,.LN602-FileIO_GetEnv		# line 335, column 17
	movl	$0,%eax
	cmpl	20(%ebp),%eax
	jbe	.Lab601
.Lab602:
   	call	BoundErr_		
.Lab601:
 	addl	16(%ebp),%eax 
	movb	$0,(%eax) 
.Lab598:
.LN603:
	.stabn  68,0,336,.LN603-FileIO_GetEnv		# line 336, column 0
.LBE48:
	leave
	ret
	.Lab597 = 8
	.stabs "str:t58=ar4;0;255;2",128,0,0,0
	.stabs "vp:57=*58",128,0,4,-8
	.stabs "s:p59=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "envVar:p60=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB48-FileIO_GetEnv
	.stabn 224,0,0,.LBE48-FileIO_GetEnv
	.stabs "FileIO_NextParameter:F16",36,0,0,FileIO_NextParameter
	.align 4
FileIO_NextParameter:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab603, %esp
.LN604:
	.stabn  68,0,318,.LN604-FileIO_NextParameter		# line 318, column 3
.LBB49:
.LN605:
	.stabn  68,0,319,.LN605-FileIO_NextParameter		# line 319, column 5
	incl	FileIO_s + 96 
.LN606:
	.stabn  68,0,320,.LN606-FileIO_NextParameter		# line 320, column 5
	movzwl	FileIO_s + 100,%eax
	cmpl	%eax,FileIO_s + 96
	jae	.Lab606
.Lab605:
.LN607:
	.stabn  68,0,321,.LN607-FileIO_NextParameter		# line 321, column 12
	pushl	$999
	movl	FileIO_s + 104,%ebx
	movl	FileIO_s + 96,%eax
	cmpl	$999,%eax
	jbe	.Lab607
.Lab608:
   	call	BoundErr_		
.Lab607:
	pushl	(%ebx,%eax,4)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Strings1_Assign
	addl	$16, %esp
	jmp	.Lab604
.Lab606:
.LN608:
	.stabn  68,0,322,.LN608-FileIO_NextParameter		# line 322, column 17
	movl	$0,%eax
	cmpl	12(%ebp),%eax
	jbe	.Lab609
.Lab610:
   	call	BoundErr_		
.Lab609:
 	addl	8(%ebp),%eax 
	movb	$0,(%eax) 
.Lab604:
.LN609:
	.stabn  68,0,323,.LN609-FileIO_NextParameter		# line 323, column 0
.LBE49:
	leave
	ret
	.Lab603 = 4
	.stabs "s:p61=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB49-FileIO_NextParameter
	.stabn 224,0,0,.LBE49-FileIO_NextParameter
	.stabs "FileIO_ASCIIZ:F16",36,0,0,FileIO_ASCIIZ
	.align 4
FileIO_ASCIIZ:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab611, %esp
.LN610:
	.stabn  68,0,309,.LN610-FileIO_ASCIIZ		# line 309, column 3
.LBB50:
.LN611:
	.stabn  68,0,310,.LN611-FileIO_ASCIIZ		# line 310, column 7
	movl	$0,-8(%ebp) 
	jmp	.Lab612
.Lab613:
.LN612:
	.stabn  68,0,312,.LN612-FileIO_ASCIIZ		# line 312, column 13
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab616
	cmpl	12(%ebp),%ebx
	jbe	.Lab615
.Lab616:
   	call	BoundErr_		
.Lab615:
 	addl	8(%ebp),%ebx 
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab618
	cmpl	20(%ebp),%eax
	jbe	.Lab617
.Lab618:
   	call	BoundErr_		
.Lab617:
 	addl	16(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,(%ebx) 
.LN613:
	.stabn  68,0,312,.LN613-FileIO_ASCIIZ		# line 312, column 23
	incl	-8(%ebp) 
.Lab612:
.LN614:
	.stabn  68,0,311,.LN614-FileIO_ASCIIZ		# line 311, column 27
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	ja	.Lab614
.Lab619:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab621
	cmpl	20(%ebp),%eax
	jbe	.Lab620
.Lab621:
   	call	BoundErr_		
.Lab620:
 	addl	16(%ebp),%eax 
	cmpb	$0,(%eax)
	jne	.Lab613
.Lab614:
.LN615:
	.stabn  68,0,314,.LN615-FileIO_ASCIIZ		# line 314, column 11
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab623
	cmpl	12(%ebp),%eax
	jbe	.Lab622
.Lab623:
   	call	BoundErr_		
.Lab622:
 	addl	8(%ebp),%eax 
	movb	$0,(%eax) 
.LN616:
	.stabn  68,0,315,.LN616-FileIO_ASCIIZ		# line 315, column 0
.LBE50:
	leave
	ret
	.Lab611 = 8
	.stabs "i:4",128,0,4,-8
	.stabs "s2:p62=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "s1:p62",160,0,8,8
	.stabn 192,0,0,.LBB50-FileIO_ASCIIZ
	.stabn 224,0,0,.LBE50-FileIO_ASCIIZ
	.stabs "FileIO_NotFile:F1",36,0,0,FileIO_NotFile
	.align 4
FileIO_NotFile:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab624, %esp
.LN617:
	.stabn  68,0,299,.LN617-FileIO_NotFile		# line 299, column 3
.LBB51:
.LN618:
	.stabn  68,0,300,.LN618-FileIO_NotFile		# line 300, column 5
	cmpl	$0,8(%ebp)
	je	.Lab626
.Lab631:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	8(%ebp),%eax
	jne	.Lab626
.Lab630:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 4,%eax
	je	.Lab626
.Lab629:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 8,%eax
	je	.Lab626
.Lab628:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 12,%eax
	jne	.Lab625
.Lab632:
	cmpb	$1,FileIO_s + 92
	je	.Lab626
.Lab625:
	movl	8(%ebp),%eax
	cmpl	FileIO_s + 16,%eax
	jne	.Lab627
.Lab633:
	cmpb	$0,FileIO_s + 93
	je	.Lab627
.Lab626:
	movb	$1,-8(%ebp) 
	jmp	.Lab634
.Lab627:
	movb	$0,-8(%ebp) 
.Lab634:
	movb	-8(%ebp),%al
	leave
	ret
.LN619:
	.stabn  68,0,301,.LN619-FileIO_NotFile		# line 301, column 0
	call	ReturnErr_
.LBE51:
	leave
	ret
	.Lab624 = 8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB51-FileIO_NotFile
	.stabn 224,0,0,.LBE51-FileIO_NotFile
	.stabs "FileIO_NotWrite:F1",36,0,0,FileIO_NotWrite
	.align 4
FileIO_NotWrite:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab635, %esp
.LN620:
	.stabn  68,0,294,.LN620-FileIO_NotWrite		# line 294, column 3
.LBB52:
.LN621:
	.stabn  68,0,295,.LN621-FileIO_NotWrite		# line 295, column 5
	cmpl	$0,8(%ebp)
	je	.Lab637
.Lab639:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	8(%ebp),%eax
	jne	.Lab637
.Lab636:
	movl	8(%ebp),%eax
	cmpb	$0,16(%eax)
	je	.Lab638
.Lab637:
	movb	$1,-8(%ebp) 
	jmp	.Lab640
.Lab638:
	movb	$0,-8(%ebp) 
.Lab640:
	movb	-8(%ebp),%al
	leave
	ret
.LN622:
	.stabn  68,0,296,.LN622-FileIO_NotWrite		# line 296, column 0
	call	ReturnErr_
.LBE52:
	leave
	ret
	.Lab635 = 8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB52-FileIO_NotWrite
	.stabn 224,0,0,.LBE52-FileIO_NotWrite
	.stabs "FileIO_NotRead:F1",36,0,0,FileIO_NotRead
	.align 4
FileIO_NotRead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab641, %esp
.LN623:
	.stabn  68,0,289,.LN623-FileIO_NotRead		# line 289, column 3
.LBB53:
.LN624:
	.stabn  68,0,290,.LN624-FileIO_NotRead		# line 290, column 5
	cmpl	$0,8(%ebp)
	je	.Lab643
.Lab645:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	8(%ebp),%eax
	jne	.Lab643
.Lab642:
	movl	8(%ebp),%eax
	cmpb	$0,17(%eax)
	je	.Lab644
.Lab643:
	movb	$1,-8(%ebp) 
	jmp	.Lab646
.Lab644:
	movb	$0,-8(%ebp) 
.Lab646:
	movb	-8(%ebp),%al
	leave
	ret
.LN625:
	.stabn  68,0,291,.LN625-FileIO_NotRead		# line 291, column 0
	call	ReturnErr_
.LBE53:
	leave
	ret
	.Lab641 = 8
	.stabs "f:p26",160,0,4,8
	.stabn 192,0,0,.LBB53-FileIO_NotRead
	.stabn 224,0,0,.LBE53-FileIO_NotRead
	.stabs "FileIO_ErrWrite:F16",36,0,0,FileIO_ErrWrite
	.align 4
FileIO_ErrWrite:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab647, %esp
.LN626:
	.stabn  68,0,284,.LN626-FileIO_ErrWrite		# line 284, column 3
.LBB54:
.LN627:
	.stabn  68,0,285,.LN627-FileIO_ErrWrite		# line 285, column 12
	pushl	$1
	leal	8(%ebp),%eax
	pushl	%eax
	pushl	$2
	call	write
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN628:
	.stabn  68,0,286,.LN628-FileIO_ErrWrite		# line 286, column 0
.LBE54:
	leave
	ret
	.Lab647 = 8
	.stabs "result:7",128,0,4,-8
	.stabs "ch:p2",160,0,1,8
	.stabn 192,0,0,.LBB54-FileIO_ErrWrite
	.stabn 224,0,0,.LBE54-FileIO_ErrWrite
	.stabs "FileIO_ConWrite:F16",36,0,0,FileIO_ConWrite
	.align 4
FileIO_ConWrite:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab648, %esp
.LN629:
	.stabn  68,0,277,.LN629-FileIO_ConWrite		# line 277, column 3
.LBB55:
.LN630:
	.stabn  68,0,278,.LN630-FileIO_ConWrite		# line 278, column 12
	pushl	$1
	leal	8(%ebp),%eax
	pushl	%eax
	pushl	FileIO_s + 112
	call	write
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN631:
	.stabn  68,0,279,.LN631-FileIO_ConWrite		# line 279, column 0
.LBE55:
	leave
	ret
	.Lab648 = 8
	.stabs "result:7",128,0,4,-8
	.stabs "ch:p2",160,0,1,8
	.stabn 192,0,0,.LBB55-FileIO_ConWrite
	.stabn 224,0,0,.LBE55-FileIO_ConWrite
	.stabs "FileIO_ConRead:F16",36,0,0,FileIO_ConRead
	.align 4
FileIO_ConRead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab649, %esp
.LN632:
	.stabn  68,0,266,.LN632-FileIO_ConRead		# line 266, column 3
.LBB56:
.LN633:
	.stabn  68,0,267,.LN633-FileIO_ConRead		# line 267, column 12
	leal	FileIO_s + 156,%eax
	pushl	%eax
	pushl	$0
	pushl	FileIO_s + 112
	call	tcsetattr
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN634:
	.stabn  68,0,268,.LN634-FileIO_ConRead		# line 268, column 12
	pushl	$1
	pushl	8(%ebp)
	pushl	FileIO_s + 112
	call	read
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN635:
	.stabn  68,0,269,.LN635-FileIO_ConRead		# line 269, column 12
	leal	FileIO_s + 116,%eax
	pushl	%eax
	pushl	$0
	pushl	FileIO_s + 112
	call	tcsetattr
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN636:
	.stabn  68,0,270,.LN636-FileIO_ConRead		# line 270, column 5
	movl	8(%ebp),%eax
	cmpb	$13,(%eax)
	jne	.Lab650
.Lab651:
.LN637:
	.stabn  68,0,270,.LN637-FileIO_ConRead		# line 270, column 24
	movl	8(%ebp),%eax
	movb	$10,(%eax) 
.Lab650:
.LN638:
	.stabn  68,0,271,.LN638-FileIO_ConRead		# line 271, column 5
	movl	8(%ebp),%eax
	movb	(%eax),%al
	cmpb	FileIO_s + 110,%al
	jne	.Lab652
.Lab654:
	cmpb	$0,FileIO_s + 94
	je	.Lab652
.Lab653:
.LN639:
	.stabn  68,0,271,.LN639-FileIO_ConRead		# line 271, column 40
	call	exit_
.Lab652:
.LN640:
	.stabn  68,0,272,.LN640-FileIO_ConRead		# line 272, column 0
.LBE56:
	leave
	ret
	.Lab649 = 8
	.stabs "result:7",128,0,4,-8
	.stabs "ch:v2",160,0,1,8
	.stabn 192,0,0,.LBB56-FileIO_ConRead
	.stabn 224,0,0,.LBE56-FileIO_ConRead
	.stabs "FileIO_BuffIO_SetPos:F16",36,0,0,FileIO_BuffIO_SetPos
	.align 4
FileIO_BuffIO_SetPos:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab655, %esp
.LN641:
	.stabn  68,0,252,.LN641-FileIO_BuffIO_SetPos		# line 252, column 5
.LBB57:
.LN642:
	.stabn  68,0,253,.LN642-FileIO_BuffIO_SetPos		# line 253, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab659:
	.long	0,50
	.text
	boundl	%eax,.Lab659
	cmpb	$0,FileIO_s + 240(%eax)
	je	.Lab658
.Lab657:
.LN643:
	.stabn  68,0,254,.LN643-FileIO_BuffIO_SetPos		# line 254, column 14
	pushl	8(%ebp)
	call	FileIO_BuffIO_PutBf
	addl	$4, %esp
	jmp	.Lab656
.Lab658:
.LN644:
	.stabn  68,0,255,.LN644-FileIO_BuffIO_SetPos		# line 255, column 25
	movl	8(%ebp),%ecx
	.data
	.align 4
.Lab660:
	.long	0,50
	.text
	boundl	%ecx,.Lab660
	movl	8(%ebp),%ebx
	.data
	.align 4
.Lab661:
	.long	0,50
	.text
	boundl	%ebx,.Lab661
	movl	$1,%eax
 	addl	FileIO_s + 700(,%ebx,4),%eax 
	movl	%eax,FileIO_s + 496(,%ecx,4) 
.Lab656:
.LN645:
	.stabn  68,0,257,.LN645-FileIO_BuffIO_SetPos		# line 257, column 11
	pushl	$0
	movl	12(%ebp),%eax
	.data
	.align 4
.Lab662:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab662
	pushl	%eax
	pushl	8(%ebp)
	call	lseek
	addl	$12, %esp
	movl	%eax,12(%ebp) 
.LN646:
	.stabn  68,0,258,.LN646-FileIO_BuffIO_SetPos		# line 258, column 12
	cmpl	$0,12(%ebp)
	setge	%al
	movb	%al,FileIO_s 
.LN647:
	.stabn  68,0,259,.LN647-FileIO_BuffIO_SetPos		# line 259, column 0
.LBE57:
	leave
	ret
	.Lab655 = 4
	.stabs "pos:p7",160,0,4,12
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB57-FileIO_BuffIO_SetPos
	.stabn 224,0,0,.LBE57-FileIO_BuffIO_SetPos
	.stabs "FileIO_BuffIO_GetPos:F7",36,0,0,FileIO_BuffIO_GetPos
	.align 4
FileIO_BuffIO_GetPos:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab663, %esp
.LN648:
	.stabn  68,0,239,.LN648-FileIO_BuffIO_GetPos		# line 239, column 5
.LBB58:
.LN649:
	.stabn  68,0,240,.LN649-FileIO_BuffIO_GetPos		# line 240, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab667:
	.long	0,50
	.text
	boundl	%eax,.Lab667
	cmpb	$0,FileIO_s + 240(%eax)
	je	.Lab666
.Lab665:
.LN650:
	.stabn  68,0,242,.LN650-FileIO_BuffIO_GetPos		# line 242, column 11
	pushl	8(%ebp)
	call	FileIO_BuffIO_PutBf
	addl	$4, %esp
.LN651:
	.stabn  68,0,242,.LN651-FileIO_BuffIO_GetPos		# line 242, column 28
	pushl	$1
	pushl	$0
	pushl	8(%ebp)
	call	lseek
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
	jmp	.Lab664
.Lab666:
.LN652:
	.stabn  68,0,244,.LN652-FileIO_BuffIO_GetPos		# line 244, column 15
	pushl	$1
	pushl	$0
	pushl	8(%ebp)
	call	lseek
	addl	$12, %esp
 	movl	%eax, %ecx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab668:
	.long	0,50
	.text
	boundl	%eax,.Lab668
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab669:
	.long	0,50
	.text
	boundl	%eax,.Lab669
 	subl	FileIO_s + 700(,%eax,4),%ebx 
	leal	-1(%ecx,%ebx,1),%eax
	movl	%eax,-8(%ebp) 
.Lab664:
.LN653:
	.stabn  68,0,247,.LN653-FileIO_BuffIO_GetPos		# line 247, column 12
	cmpl	$0,-8(%ebp)
	setge	%al
	movb	%al,FileIO_s 
.LN654:
	.stabn  68,0,248,.LN654-FileIO_BuffIO_GetPos		# line 248, column 7
	movl	-8(%ebp),%eax
	leave
	ret
.LN655:
	.stabn  68,0,249,.LN655-FileIO_BuffIO_GetPos		# line 249, column 0
	call	ReturnErr_
.LBE58:
	leave
	ret
	.Lab663 = 8
	.stabs "pos:7",128,0,4,-8
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB58-FileIO_BuffIO_GetPos
	.stabn 224,0,0,.LBE58-FileIO_BuffIO_GetPos
	.stabs "FileIO_BuffIO_FillBuffer:F16",36,0,0,FileIO_BuffIO_FillBuffer
	.align 4
FileIO_BuffIO_FillBuffer:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab670, %esp
.LN656:
	.stabn  68,0,223,.LN656-FileIO_BuffIO_FillBuffer		# line 223, column 5
.LBB59:
.LN657:
	.stabn  68,0,224,.LN657-FileIO_BuffIO_FillBuffer		# line 224, column 9
	pushl	$1024
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab671:
	.long	0,50
	.text
	boundl	%eax,.Lab671
	pushl	FileIO_s + 292(,%eax,4)
	pushl	8(%ebp)
	call	read
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN658:
	.stabn  68,0,225,.LN658-FileIO_BuffIO_FillBuffer		# line 225, column 7
	cmpl	$0,-8(%ebp)
	jle	.Lab674
.Lab673:
.LN659:
	.stabn  68,0,226,.LN659-FileIO_BuffIO_FillBuffer		# line 226, column 20
	movl	8(%ebp),%ebx
	.data
	.align 4
.Lab675:
	.long	0,50
	.text
	boundl	%ebx,.Lab675
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab676:
	.long	0,50
	.text
	boundl	%eax,.Lab676
	movl	FileIO_s + 292(,%eax,4),%eax
	movl	%eax,FileIO_s + 496(,%ebx,4) 
.LN660:
	.stabn  68,0,227,.LN660-FileIO_BuffIO_FillBuffer		# line 227, column 21
	movl	8(%ebp),%ecx
	.data
	.align 4
.Lab677:
	.long	0,50
	.text
	boundl	%ecx,.Lab677
	movl	8(%ebp),%ebx
	.data
	.align 4
.Lab678:
	.long	0,50
	.text
	boundl	%ebx,.Lab678
	movl	-8(%ebp),%eax
 	addl	FileIO_s + 292(,%ebx,4),%eax 
 	subl	$1,%eax 
	movl	%eax,FileIO_s + 700(,%ecx,4) 
.LN661:
	.stabn  68,0,228,.LN661-FileIO_BuffIO_FillBuffer		# line 228, column 14
	movb	$1,FileIO_s 
	jmp	.Lab672
.Lab674:
.LN662:
	.stabn  68,0,230,.LN662-FileIO_BuffIO_FillBuffer		# line 230, column 20
	movl	8(%ebp),%ebx
	.data
	.align 4
.Lab679:
	.long	0,50
	.text
	boundl	%ebx,.Lab679
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab680:
	.long	0,50
	.text
	boundl	%eax,.Lab680
	movl	FileIO_s + 292(,%eax,4),%eax
	movl	%eax,FileIO_s + 496(,%ebx,4) 
.LN663:
	.stabn  68,0,231,.LN663-FileIO_BuffIO_FillBuffer		# line 231, column 21
	movl	8(%ebp),%ebx
	.data
	.align 4
.Lab681:
	.long	0,50
	.text
	boundl	%ebx,.Lab681
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab682:
	.long	0,50
	.text
	boundl	%eax,.Lab682
	movl	FileIO_s + 292(,%eax,4),%eax
 	subl	$1,%eax 
	movl	%eax,FileIO_s + 700(,%ebx,4) 
.LN664:
	.stabn  68,0,232,.LN664-FileIO_BuffIO_FillBuffer		# line 232, column 14
	movb	$0,FileIO_s 
.Lab672:
.LN665:
	.stabn  68,0,233,.LN665-FileIO_BuffIO_FillBuffer		# line 233, column 0
.LBE59:
	leave
	ret
	.Lab670 = 8
	.stabs "n:7",128,0,4,-8
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB59-FileIO_BuffIO_FillBuffer
	.stabn 224,0,0,.LBE59-FileIO_BuffIO_FillBuffer
	.stabs "FileIO_BuffIO_EmitBuffer:F16",36,0,0,FileIO_BuffIO_EmitBuffer
	.align 4
FileIO_BuffIO_EmitBuffer:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab683, %esp
.LN666:
	.stabn  68,0,215,.LN666-FileIO_BuffIO_EmitBuffer		# line 215, column 5
.LBB60:
.LN667:
	.stabn  68,0,216,.LN667-FileIO_BuffIO_EmitBuffer		# line 216, column 12
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab684:
	.long	0,50
	.text
	boundl	%eax,.Lab684
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab685:
	.long	0,50
	.text
	boundl	%eax,.Lab685
 	subl	FileIO_s + 292(,%eax,4),%ebx 
	.data
	.align 4
.Lab686:
	.long	0,2147483647
	.text
	boundl	%ebx,.Lab686
	pushl	%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab687:
	.long	0,50
	.text
	boundl	%eax,.Lab687
	pushl	FileIO_s + 292(,%eax,4)
	pushl	8(%ebp)
	call	write
	addl	$12, %esp
	cmpl	$-1,%eax
	setne	%al
	movb	%al,FileIO_s 
.LN668:
	.stabn  68,0,217,.LN668-FileIO_BuffIO_EmitBuffer		# line 217, column 18
	movl	8(%ebp),%ebx
	.data
	.align 4
.Lab688:
	.long	0,50
	.text
	boundl	%ebx,.Lab688
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab689:
	.long	0,50
	.text
	boundl	%eax,.Lab689
	movl	FileIO_s + 292(,%eax,4),%eax
	movl	%eax,FileIO_s + 496(,%ebx,4) 
.LN669:
	.stabn  68,0,218,.LN669-FileIO_BuffIO_EmitBuffer		# line 218, column 0
.LBE60:
	leave
	ret
	.Lab683 = 4
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB60-FileIO_BuffIO_EmitBuffer
	.stabn 224,0,0,.LBE60-FileIO_BuffIO_EmitBuffer
	.stabs "FileIO_BuffIO_PutBf:F16",36,0,0,FileIO_BuffIO_PutBf
	.align 4
FileIO_BuffIO_PutBf:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab690, %esp
.LN670:
	.stabn  68,0,210,.LN670-FileIO_BuffIO_PutBf		# line 210, column 5
.LBB61:
.LN671:
	.stabn  68,0,211,.LN671-FileIO_BuffIO_PutBf		# line 211, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab693:
	.long	0,50
	.text
	boundl	%eax,.Lab693
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab694:
	.long	0,50
	.text
	boundl	%eax,.Lab694
 	subl	FileIO_s + 292(,%eax,4),%ebx 
	cmpl	$0,%ebx
	jle	.Lab691
.Lab692:
.LN672:
	.stabn  68,0,211,.LN672-FileIO_BuffIO_PutBf		# line 211, column 54
	pushl	8(%ebp)
	call	FileIO_BuffIO_EmitBuffer
	addl	$4, %esp
.Lab691:
.LN673:
	.stabn  68,0,212,.LN673-FileIO_BuffIO_PutBf		# line 212, column 0
.LBE61:
	leave
	ret
	.Lab690 = 4
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB61-FileIO_BuffIO_PutBf
	.stabn 224,0,0,.LBE61-FileIO_BuffIO_PutBf
	.stabs "FileIO_BuffIO_PutBytes:F16",36,0,0,FileIO_BuffIO_PutBytes
	.align 4
FileIO_BuffIO_PutBytes:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab695, %esp
.LN674:
	.stabn  68,0,195,.LN674-FileIO_BuffIO_PutBytes		# line 195, column 5
.LBB62:
.LN675:
	.stabn  68,0,196,.LN675-FileIO_BuffIO_PutBytes		# line 196, column 9
	movl	$0,-8(%ebp) 
	jmp	.Lab696
.Lab697:
.LN676:
	.stabn  68,0,198,.LN676-FileIO_BuffIO_PutBytes		# line 198, column 9
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab701:
	.long	0,50
	.text
	boundl	%eax,.Lab701
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab702:
	.long	0,50
	.text
	boundl	%eax,.Lab702
	cmpl	FileIO_s + 700(,%eax,4),%ebx
	jle	.Lab699
.Lab700:
.LN677:
	.stabn  68,0,199,.LN677-FileIO_BuffIO_PutBytes		# line 199, column 11
	pushl	8(%ebp)
	call	FileIO_BuffIO_EmitBuffer
	addl	$4, %esp
.LN678:
	.stabn  68,0,200,.LN678-FileIO_BuffIO_PutBytes		# line 200, column 11
	cmpb	$1,FileIO_s
	je	.Lab703
.Lab704:
.LN679:
	.stabn  68,0,200,.LN679-FileIO_BuffIO_PutBytes		# line 200, column 26
	leave
	ret
.Lab703:
.Lab699:
.LN680:
	.stabn  68,0,202,.LN680-FileIO_BuffIO_PutBytes		# line 202, column 21
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab705:
	.long	0,50
	.text
	boundl	%eax,.Lab705
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab707
	cmpl	16(%ebp),%eax
	jbe	.Lab706
.Lab707:
   	call	BoundErr_		
.Lab706:
 	addl	12(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,(%ebx) 
.LN681:
	.stabn  68,0,203,.LN681-FileIO_BuffIO_PutBytes		# line 203, column 9
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab708:
	.long	0,50
	.text
	boundl	%eax,.Lab708
	incl	FileIO_s + 496(,%eax,4) 
.LN682:
	.stabn  68,0,204,.LN682-FileIO_BuffIO_PutBytes		# line 204, column 9
	incl	-8(%ebp) 
.Lab696:
.LN683:
	.stabn  68,0,197,.LN683-FileIO_BuffIO_PutBytes		# line 197, column 15
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	jne	.Lab697
.Lab698:
.LN684:
	.stabn  68,0,206,.LN684-FileIO_BuffIO_PutBytes		# line 206, column 12
	movb	$1,FileIO_s 
.LN685:
	.stabn  68,0,207,.LN685-FileIO_BuffIO_PutBytes		# line 207, column 0
.LBE62:
	leave
	ret
	.Lab695 = 8
	.stabs "i:4",128,0,4,-8
	.stabs "len:p4",160,0,4,20
	.stabs "x:p63=s8start:*13,0,32;high:5,32,32;;",160,0,8,12
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB62-FileIO_BuffIO_PutBytes
	.stabn 224,0,0,.LBE62-FileIO_BuffIO_PutBytes
	.stabs "FileIO_BuffIO_PutByte:F16",36,0,0,FileIO_BuffIO_PutByte
	.align 4
FileIO_BuffIO_PutByte:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab709, %esp
.LN686:
	.stabn  68,0,181,.LN686-FileIO_BuffIO_PutByte		# line 181, column 5
.LBB63:
.LN687:
	.stabn  68,0,182,.LN687-FileIO_BuffIO_PutByte		# line 182, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab712:
	.long	0,50
	.text
	boundl	%eax,.Lab712
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab713:
	.long	0,50
	.text
	boundl	%eax,.Lab713
	cmpl	FileIO_s + 700(,%eax,4),%ebx
	jle	.Lab710
.Lab711:
.LN688:
	.stabn  68,0,183,.LN688-FileIO_BuffIO_PutByte		# line 183, column 9
	pushl	8(%ebp)
	call	FileIO_BuffIO_EmitBuffer
	addl	$4, %esp
.LN689:
	.stabn  68,0,184,.LN689-FileIO_BuffIO_PutByte		# line 184, column 9
	cmpb	$1,FileIO_s
	je	.Lab714
.Lab715:
.LN690:
	.stabn  68,0,184,.LN690-FileIO_BuffIO_PutByte		# line 184, column 24
	leave
	ret
.Lab714:
.Lab710:
.LN691:
	.stabn  68,0,186,.LN691-FileIO_BuffIO_PutByte		# line 186, column 19
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab716:
	.long	0,50
	.text
	boundl	%eax,.Lab716
	movl	FileIO_s + 496(,%eax,4),%ebx
	movb	12(%ebp),%al
	movb	%al,(%ebx) 
.LN692:
	.stabn  68,0,187,.LN692-FileIO_BuffIO_PutByte		# line 187, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab717:
	.long	0,50
	.text
	boundl	%eax,.Lab717
	incl	FileIO_s + 496(,%eax,4) 
.LN693:
	.stabn  68,0,188,.LN693-FileIO_BuffIO_PutByte		# line 188, column 12
	movb	$1,FileIO_s 
.LN694:
	.stabn  68,0,189,.LN694-FileIO_BuffIO_PutByte		# line 189, column 0
.LBE63:
	leave
	ret
	.Lab709 = 4
	.stabs "x:p13",160,0,1,12
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB63-FileIO_BuffIO_PutByte
	.stabn 224,0,0,.LBE63-FileIO_BuffIO_PutByte
	.stabs "FileIO_BuffIO_GetBytes:F16",36,0,0,FileIO_BuffIO_GetBytes
	.align 4
FileIO_BuffIO_GetBytes:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab718, %esp
.LN695:
	.stabn  68,0,166,.LN695-FileIO_BuffIO_GetBytes		# line 166, column 5
.LBB64:
.LN696:
	.stabn  68,0,167,.LN696-FileIO_BuffIO_GetBytes		# line 167, column 9
	movl	$0,-8(%ebp) 
	jmp	.Lab719
.Lab720:
.LN697:
	.stabn  68,0,169,.LN697-FileIO_BuffIO_GetBytes		# line 169, column 9
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab724:
	.long	0,50
	.text
	boundl	%eax,.Lab724
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab725:
	.long	0,50
	.text
	boundl	%eax,.Lab725
	cmpl	FileIO_s + 700(,%eax,4),%ebx
	jle	.Lab722
.Lab723:
.LN698:
	.stabn  68,0,170,.LN698-FileIO_BuffIO_GetBytes		# line 170, column 11
	pushl	8(%ebp)
	call	FileIO_BuffIO_FillBuffer
	addl	$4, %esp
.LN699:
	.stabn  68,0,171,.LN699-FileIO_BuffIO_GetBytes		# line 171, column 11
	cmpb	$1,FileIO_s
	je	.Lab726
.Lab727:
.LN700:
	.stabn  68,0,171,.LN700-FileIO_BuffIO_GetBytes		# line 171, column 30
	movl	20(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx) 
.LN701:
	.stabn  68,0,171,.LN701-FileIO_BuffIO_GetBytes		# line 171, column 36
	leave
	ret
.Lab726:
.Lab722:
.LN702:
	.stabn  68,0,173,.LN702-FileIO_BuffIO_GetBytes		# line 173, column 14
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab729
	cmpl	16(%ebp),%ebx
	jbe	.Lab728
.Lab729:
   	call	BoundErr_		
.Lab728:
 	addl	12(%ebp),%ebx 
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab730:
	.long	0,50
	.text
	boundl	%eax,.Lab730
	movl	FileIO_s + 496(,%eax,4),%eax
	movb	(%eax),%al
	movb	%al,(%ebx) 
.LN703:
	.stabn  68,0,174,.LN703-FileIO_BuffIO_GetBytes		# line 174, column 9
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab731:
	.long	0,50
	.text
	boundl	%eax,.Lab731
	incl	FileIO_s + 496(,%eax,4) 
.LN704:
	.stabn  68,0,175,.LN704-FileIO_BuffIO_GetBytes		# line 175, column 9
	incl	-8(%ebp) 
.Lab719:
.LN705:
	.stabn  68,0,168,.LN705-FileIO_BuffIO_GetBytes		# line 168, column 15
	movl	-8(%ebp),%ebx
	movl	20(%ebp),%eax
	cmpl	(%eax),%ebx
	jne	.Lab720
.Lab721:
.LN706:
	.stabn  68,0,177,.LN706-FileIO_BuffIO_GetBytes		# line 177, column 12
	movb	$1,FileIO_s 
.LN707:
	.stabn  68,0,178,.LN707-FileIO_BuffIO_GetBytes		# line 178, column 0
.LBE64:
	leave
	ret
	.Lab718 = 8
	.stabs "i:4",128,0,4,-8
	.stabs "len:v4",160,0,4,20
	.stabs "x:p64=s8start:*13,0,32;high:5,32,32;;",160,0,8,12
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB64-FileIO_BuffIO_GetBytes
	.stabn 224,0,0,.LBE64-FileIO_BuffIO_GetBytes
	.stabs "FileIO_BuffIO_GetByte:F16",36,0,0,FileIO_BuffIO_GetByte
	.align 4
FileIO_BuffIO_GetByte:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab732, %esp
.LN708:
	.stabn  68,0,152,.LN708-FileIO_BuffIO_GetByte		# line 152, column 5
.LBB65:
.LN709:
	.stabn  68,0,153,.LN709-FileIO_BuffIO_GetByte		# line 153, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab735:
	.long	0,50
	.text
	boundl	%eax,.Lab735
	movl	FileIO_s + 496(,%eax,4),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab736:
	.long	0,50
	.text
	boundl	%eax,.Lab736
	cmpl	FileIO_s + 700(,%eax,4),%ebx
	jle	.Lab733
.Lab734:
.LN710:
	.stabn  68,0,154,.LN710-FileIO_BuffIO_GetByte		# line 154, column 9
	pushl	8(%ebp)
	call	FileIO_BuffIO_FillBuffer
	addl	$4, %esp
.LN711:
	.stabn  68,0,155,.LN711-FileIO_BuffIO_GetByte		# line 155, column 9
	cmpb	$1,FileIO_s
	je	.Lab737
.Lab738:
.LN712:
	.stabn  68,0,155,.LN712-FileIO_BuffIO_GetByte		# line 155, column 26
	movl	12(%ebp),%eax
	movb	$0,(%eax) 
.LN713:
	.stabn  68,0,155,.LN713-FileIO_BuffIO_GetByte		# line 155, column 46
	leave
	ret
.Lab737:
.Lab733:
.LN714:
	.stabn  68,0,157,.LN714-FileIO_BuffIO_GetByte		# line 157, column 9
	movl	12(%ebp),%ebx
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab739:
	.long	0,50
	.text
	boundl	%eax,.Lab739
	movl	FileIO_s + 496(,%eax,4),%eax
	movb	(%eax),%al
	movb	%al,(%ebx) 
.LN715:
	.stabn  68,0,158,.LN715-FileIO_BuffIO_GetByte		# line 158, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab740:
	.long	0,50
	.text
	boundl	%eax,.Lab740
	incl	FileIO_s + 496(,%eax,4) 
.LN716:
	.stabn  68,0,159,.LN716-FileIO_BuffIO_GetByte		# line 159, column 12
	movb	$1,FileIO_s 
.LN717:
	.stabn  68,0,160,.LN717-FileIO_BuffIO_GetByte		# line 160, column 0
.LBE65:
	leave
	ret
	.Lab732 = 4
	.stabs "x:v13",160,0,1,12
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB65-FileIO_BuffIO_GetByte
	.stabn 224,0,0,.LBE65-FileIO_BuffIO_GetByte
	.stabs "FileIO_BuffIO_FlushBuffer:F16",36,0,0,FileIO_BuffIO_FlushBuffer
	.align 4
FileIO_BuffIO_FlushBuffer:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab741, %esp
.LN718:
	.stabn  68,0,140,.LN718-FileIO_BuffIO_FlushBuffer		# line 140, column 5
.LBB66:
.LN719:
	.stabn  68,0,141,.LN719-FileIO_BuffIO_FlushBuffer		# line 141, column 10
	movl	8(%ebp),%eax
	movl	%eax,FileIO_s + 904 
.LN720:
	.stabn  68,0,142,.LN720-FileIO_BuffIO_FlushBuffer		# line 142, column 10
	movl	FileIO_s + 904,%eax
	.data
	.align 4
.Lab742:
	.long	0,50
	.text
	boundl	%eax,.Lab742
	movl	FileIO_s + 496(,%eax,4),%eax
	movl	%eax,FileIO_s + 908 
.LN721:
	.stabn  68,0,143,.LN721-FileIO_BuffIO_FlushBuffer		# line 143, column 10
	movl	FileIO_s + 904,%eax
	.data
	.align 4
.Lab743:
	.long	0,50
	.text
	boundl	%eax,.Lab743
	movl	FileIO_s + 292(,%eax,4),%eax
	movl	%eax,FileIO_s + 912 
.LN722:
	.stabn  68,0,144,.LN722-FileIO_BuffIO_FlushBuffer		# line 144, column 21
	movl	FileIO_s + 908,%eax
	cmpl	FileIO_s + 912,%eax
	setg	%al
	movb	%al,FileIO_s + 916 
.LN723:
	.stabn  68,0,145,.LN723-FileIO_BuffIO_FlushBuffer		# line 145, column 10
	movl	FileIO_s + 908,%eax
 	subl	FileIO_s + 912,%eax 
	movl	%eax,FileIO_s + 908 
.LN724:
	.stabn  68,0,146,.LN724-FileIO_BuffIO_FlushBuffer		# line 146, column 7
	movl	FileIO_s + 904,%eax
	.data
	.align 4
.Lab747:
	.long	0,50
	.text
	boundl	%eax,.Lab747
	cmpb	$0,FileIO_s + 240(%eax)
	je	.Lab744
.Lab746:
	cmpb	$0,FileIO_s + 916
	je	.Lab744
.Lab745:
.LN725:
	.stabn  68,0,147,.LN725-FileIO_BuffIO_FlushBuffer		# line 147, column 14
	movl	FileIO_s + 908,%eax
	.data
	.align 4
.Lab748:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab748
	pushl	%eax
	movl	FileIO_s + 904,%eax
	.data
	.align 4
.Lab749:
	.long	0,50
	.text
	boundl	%eax,.Lab749
	pushl	FileIO_s + 292(,%eax,4)
	pushl	FileIO_s + 904
	call	write
	addl	$12, %esp
	cmpl	$-1,%eax
	setne	%al
	movb	%al,FileIO_s 
.Lab744:
.LN726:
	.stabn  68,0,148,.LN726-FileIO_BuffIO_FlushBuffer		# line 148, column 0
.LBE66:
	leave
	ret
	.Lab741 = 4
	.stabs "ff:p7",160,0,4,8
	.stabn 192,0,0,.LBB66-FileIO_BuffIO_FlushBuffer
	.stabn 224,0,0,.LBE66-FileIO_BuffIO_FlushBuffer
	.stabs "FileIO_BuffIO_Close:F16",36,0,0,FileIO_BuffIO_Close
	.align 4
FileIO_BuffIO_Close:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab750, %esp
.LN727:
	.stabn  68,0,125,.LN727-FileIO_BuffIO_Close		# line 125, column 5
.LBB67:
.LN728:
	.stabn  68,0,126,.LN728-FileIO_BuffIO_Close		# line 126, column 7
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab753:
	.long	0,50
	.text
	boundl	%eax,.Lab753
	cmpb	$0,FileIO_s + 240(%eax)
	je	.Lab751
.Lab752:
.LN729:
	.stabn  68,0,126,.LN729-FileIO_BuffIO_Close		# line 126, column 30
	pushl	8(%ebp)
	call	FileIO_BuffIO_PutBf
	addl	$4, %esp
.Lab751:
.LN730:
	.stabn  68,0,127,.LN730-FileIO_BuffIO_Close		# line 127, column 7
	cmpl	$2,8(%ebp)
	jle	.Lab756
.Lab755:
.LN731:
	.stabn  68,0,129,.LN731-FileIO_BuffIO_Close		# line 129, column 11
	pushl	$1024
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab757:
	.long	0,50
	.text
	boundl	%eax,.Lab757
	leal	FileIO_s + 292(,%eax,4),%eax
	pushl	%eax
	call	Storage_DEALLOCATE
	addl	$8, %esp
.LN732:
	.stabn  68,0,130,.LN732-FileIO_BuffIO_Close		# line 130, column 16
	pushl	8(%ebp)
	call	close
	addl	$4, %esp
	cmpl	$-1,%eax
	setne	%al
	movb	%al,FileIO_s 
	jmp	.Lab754
.Lab756:
.LN733:
	.stabn  68,0,131,.LN733-FileIO_BuffIO_Close		# line 131, column 19
	movb	$0,FileIO_s 
.Lab754:
.LN734:
	.stabn  68,0,132,.LN734-FileIO_BuffIO_Close		# line 132, column 0
.LBE67:
	leave
	ret
	.Lab750 = 4
	.stabs "file:p7",160,0,4,8
	.stabn 192,0,0,.LBB67-FileIO_BuffIO_Close
	.stabn 224,0,0,.LBE67-FileIO_BuffIO_Close
	.stabs "FileIO_BuffIO_OpenOutput:F16",36,0,0,FileIO_BuffIO_OpenOutput
	.align 4
FileIO_BuffIO_OpenOutput:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab758, %esp
.LN735:
	.stabn  68,0,103,.LN735-FileIO_BuffIO_OpenOutput		# line 103, column 5
.LBB68:
.LN736:
	.stabn  68,0,104,.LN736-FileIO_BuffIO_OpenOutput		# line 104, column 7
	movl	$0,%eax
	cmpl	16(%ebp),%eax
	jbe	.Lab762
.Lab763:
   	call	BoundErr_		
.Lab762:
 	addl	12(%ebp),%eax 
	cmpb	$0,(%eax)
	jne	.Lab761
.Lab760:
.LN737:
	.stabn  68,0,105,.LN737-FileIO_BuffIO_OpenOutput		# line 105, column 19
	movl	8(%ebp),%eax
	movl	$1,(%eax) 
	jmp	.Lab759
.Lab761:
.LN738:
	.stabn  68,0,107,.LN738-FileIO_BuffIO_OpenOutput		# line 107, column 11
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$1023
	leal	-1028(%ebp),%eax
	pushl	%eax
	call	Strings1_Assign
	addl	$16, %esp
.LN739:
	.stabn  68,0,108,.LN739-FileIO_BuffIO_OpenOutput		# line 108, column 16
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	$438
	leal	-1028(%ebp),%eax
	pushl	%eax
	call	creat
	addl	$8, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.Lab759:
.LN740:
	.stabn  68,0,113,.LN740-FileIO_BuffIO_OpenOutput		# line 113, column 7
	movl	8(%ebp),%eax
	cmpl	$0,(%eax)
	jge	.Lab766
.Lab765:
.LN741:
	.stabn  68,0,114,.LN741-FileIO_BuffIO_OpenOutput		# line 114, column 14
	movb	$0,FileIO_s 
	jmp	.Lab764
.Lab766:
.LN742:
	.stabn  68,0,116,.LN742-FileIO_BuffIO_OpenOutput		# line 116, column 9
	pushl	$1024
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab767:
	.long	0,50
	.text
	boundl	%eax,.Lab767
	leal	FileIO_s + 292(,%eax,4),%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN743:
	.stabn  68,0,117,.LN743-FileIO_BuffIO_OpenOutput		# line 117, column 20
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	.data
	.align 4
.Lab768:
	.long	0,50
	.text
	boundl	%ebx,.Lab768
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab769:
	.long	0,50
	.text
	boundl	%eax,.Lab769
	movl	FileIO_s + 292(,%eax,4),%eax
	movl	%eax,FileIO_s + 496(,%ebx,4) 
.LN744:
	.stabn  68,0,118,.LN744-FileIO_BuffIO_OpenOutput		# line 118, column 21
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	.data
	.align 4
.Lab770:
	.long	0,50
	.text
	boundl	%ebx,.Lab770
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab771:
	.long	0,50
	.text
	boundl	%eax,.Lab771
	movl	FileIO_s + 292(,%eax,4),%eax
	leal	1023(%eax),%eax
	movl	%eax,FileIO_s + 700(,%ebx,4) 
.LN745:
	.stabn  68,0,119,.LN745-FileIO_BuffIO_OpenOutput		# line 119, column 24
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab772:
	.long	0,50
	.text
	boundl	%eax,.Lab772
	movb	$1,FileIO_s + 240(%eax) 
.LN746:
	.stabn  68,0,120,.LN746-FileIO_BuffIO_OpenOutput		# line 120, column 14
	movb	$1,FileIO_s 
.Lab764:
.LN747:
	.stabn  68,0,121,.LN747-FileIO_BuffIO_OpenOutput		# line 121, column 0
.LBE68:
	leave
	ret
	.Lab758 = 1028
	.stabs "s:65=ar4;0;1023;2",128,0,1024,-1028
	.stabs "name:p66=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "file:v7",160,0,4,8
	.stabn 192,0,0,.LBB68-FileIO_BuffIO_OpenOutput
	.stabn 224,0,0,.LBE68-FileIO_BuffIO_OpenOutput
	.stabs "FileIO_BuffIO_OpenInput:F16",36,0,0,FileIO_BuffIO_OpenInput
	.align 4
FileIO_BuffIO_OpenInput:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab773, %esp
.LN748:
	.stabn  68,0,82,.LN748-FileIO_BuffIO_OpenInput		# line 82, column 5
.LBB69:
.LN749:
	.stabn  68,0,83,.LN749-FileIO_BuffIO_OpenInput		# line 83, column 7
	movl	$0,%eax
	cmpl	16(%ebp),%eax
	jbe	.Lab777
.Lab778:
   	call	BoundErr_		
.Lab777:
 	addl	12(%ebp),%eax 
	cmpb	$0,(%eax)
	jne	.Lab776
.Lab775:
.LN750:
	.stabn  68,0,84,.LN750-FileIO_BuffIO_OpenInput		# line 84, column 19
	movl	8(%ebp),%eax
	movl	$0,(%eax) 
	jmp	.Lab774
.Lab776:
.LN751:
	.stabn  68,0,86,.LN751-FileIO_BuffIO_OpenInput		# line 86, column 11
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$1023
	leal	-1028(%ebp),%eax
	pushl	%eax
	call	Strings1_Assign
	addl	$16, %esp
.LN752:
	.stabn  68,0,87,.LN752-FileIO_BuffIO_OpenInput		# line 87, column 16
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	$0
	leal	-1028(%ebp),%eax
	pushl	%eax
	call	open
	addl	$8, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.Lab774:
.LN753:
	.stabn  68,0,89,.LN753-FileIO_BuffIO_OpenInput		# line 89, column 7
	movl	8(%ebp),%eax
	cmpl	$0,(%eax)
	jge	.Lab781
.Lab780:
.LN754:
	.stabn  68,0,90,.LN754-FileIO_BuffIO_OpenInput		# line 90, column 14
	movb	$0,FileIO_s 
	jmp	.Lab779
.Lab781:
.LN755:
	.stabn  68,0,92,.LN755-FileIO_BuffIO_OpenInput		# line 92, column 9
	pushl	$1024
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab782:
	.long	0,50
	.text
	boundl	%eax,.Lab782
	leal	FileIO_s + 292(,%eax,4),%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN756:
	.stabn  68,0,93,.LN756-FileIO_BuffIO_OpenInput		# line 93, column 21
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	.data
	.align 4
.Lab783:
	.long	0,50
	.text
	boundl	%ecx,.Lab783
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	.data
	.align 4
.Lab784:
	.long	0,50
	.text
	boundl	%ebx,.Lab784
	movl	$1,%eax
 	addl	FileIO_s + 292(,%ebx,4),%eax 
	movl	%eax,FileIO_s + 496(,%ecx,4) 
.LN757:
	.stabn  68,0,94,.LN757-FileIO_BuffIO_OpenInput		# line 94, column 21
	movl	8(%ebp),%eax
	movl	(%eax),%ebx
	.data
	.align 4
.Lab785:
	.long	0,50
	.text
	boundl	%ebx,.Lab785
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab786:
	.long	0,50
	.text
	boundl	%eax,.Lab786
	movl	FileIO_s + 292(,%eax,4),%eax
	movl	%eax,FileIO_s + 700(,%ebx,4) 
.LN758:
	.stabn  68,0,95,.LN758-FileIO_BuffIO_OpenInput		# line 95, column 24
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	.data
	.align 4
.Lab787:
	.long	0,50
	.text
	boundl	%eax,.Lab787
	movb	$0,FileIO_s + 240(%eax) 
.LN759:
	.stabn  68,0,96,.LN759-FileIO_BuffIO_OpenInput		# line 96, column 14
	movb	$1,FileIO_s 
.Lab779:
.LN760:
	.stabn  68,0,97,.LN760-FileIO_BuffIO_OpenInput		# line 97, column 0
.LBE69:
	leave
	ret
	.Lab773 = 1028
	.stabs "s:67=ar4;0;1023;2",128,0,1024,-1028
	.stabs "name:p68=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "file:v7",160,0,4,8
	.stabn 192,0,0,.LBB69-FileIO_BuffIO_OpenInput
	.stabn 224,0,0,.LBE69-FileIO_BuffIO_OpenInput
	.stabs "FileIO_BuffIO:F16",36,0,0,FileIO_BuffIO
	.align 4
FileIO_BuffIO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab788, %esp
.LN761:
	.stabn  68,0,261,.LN761-FileIO_BuffIO		# line 261, column 3
.LBB70:
.LN762:
	.stabn  68,0,262,.LN762-FileIO_BuffIO		# line 262, column 0
.LBE70:
	leave
	ret
	.Lab788 = 4
	.stabs "BUFFSIZE:c=i1024",128,0,0,0
	.stabs "MAXFILE:c=i50",128,0,0,0
	.stabn 192,0,0,.LBB70-FileIO_BuffIO
	.stabn 224,0,0,.LBE70-FileIO_BuffIO
	.stabs "FileIO:F16",36,0,0,FileIO
	.align 4
FileIO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab789, %esp
.LN763:
	.stabn  68,0,1016,.LN763-FileIO		# line 1016, column 1
	call	FileIO_BuffIO
.LBB71:
.LN764:
	.stabn  68,0,1017,.LN764-FileIO		# line 1017, column 3
	call	FileIO_InitTTY
.LN765:
	.stabn  68,0,1018,.LN765-FileIO		# line 1018, column 9
	call	clock
	movl	%eax,FileIO_s + 920 
.LN766:
	.stabn  68,0,1018,.LN766-FileIO		# line 1018, column 32
	movl	FileIO_s + 920,%eax
	movl	%eax,FileIO_s + 924 
.LN767:
	.stabn  68,0,1019,.LN767-FileIO		# line 1019, column 11
	movl	$0,FileIO_s + 24 
.LN768:
	.stabn  68,0,1020,.LN768-FileIO		# line 1020, column 8
	movb	$0,FileIO_s 
.LN769:
	.stabn  68,0,1021,.LN769-FileIO		# line 1021, column 9
	movl	$0,FileIO_s + 96 
.LN770:
	.stabn  68,0,1023,.LN770-FileIO		# line 1023, column 3
	pushl	$276
	leal	FileIO_s + 4,%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN771:
	.stabn  68,0,1024,.LN771-FileIO		# line 1024, column 12
	movl	FileIO_s + 4,%ebx
	movl	FileIO_s + 112,%eax
	movl	%eax,(%ebx) 
.LN772:
	.stabn  68,0,1025,.LN772-FileIO		# line 1025, column 16
	movl	FileIO_s + 4,%eax
	movb	$0,12(%eax) 
.LN773:
	.stabn  68,0,1025,.LN773-FileIO		# line 1025, column 35
	movl	FileIO_s + 4,%eax
	movb	$0,18(%eax) 
.LN774:
	.stabn  68,0,1025,.LN774-FileIO		# line 1025, column 55
	movl	FileIO_s + 4,%ebx
	movl	FileIO_s + 4,%eax
	movl	%eax,4(%ebx) 
.LN775:
	.stabn  68,0,1026,.LN775-FileIO		# line 1026, column 17
	movl	FileIO_s + 4,%eax
	movb	$0,16(%eax) 
.LN776:
	.stabn  68,0,1026,.LN776-FileIO		# line 1026, column 40
	movl	FileIO_s + 4,%eax
	movb	$0,17(%eax) 
.LN777:
	.stabn  68,0,1026,.LN777-FileIO		# line 1026, column 62
	movl	FileIO_s + 4,%eax
	movb	$1,13(%eax) 
.LN778:
	.stabn  68,0,1027,.LN778-FileIO		# line 1027, column 12
	movl	FileIO_s + 4,%eax
	movb	$0,14(%eax) 
.LN779:
	.stabn  68,0,1027,.LN779-FileIO		# line 1027, column 31
	movl	FileIO_s + 4,%eax
	movb	$0,15(%eax) 
.LN780:
	.stabn  68,0,1029,.LN780-FileIO		# line 1029, column 3
	pushl	$276
	leal	FileIO_s + 12,%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN781:
	.stabn  68,0,1030,.LN781-FileIO		# line 1030, column 3
	.data
.Lab790:
 	.ascii	"\000"
	.text
	pushl	$1
	leal	.Lab790,%eax
	pushl	%eax
	movl	$0,%eax
 	addl	FileIO_s + 12,%eax 
	pushl	%eax
	call	FileIO_BuffIO_OpenInput
	addl	$12, %esp
.LN782:
	.stabn  68,0,1031,.LN782-FileIO		# line 1031, column 18
	movl	FileIO_s + 12,%eax
	movb	$0,12(%eax) 
.LN783:
	.stabn  68,0,1031,.LN783-FileIO		# line 1031, column 39
	movl	FileIO_s + 12,%eax
	movb	$0,18(%eax) 
.LN784:
	.stabn  68,0,1031,.LN784-FileIO		# line 1031, column 61
	movl	FileIO_s + 12,%ebx
	movl	FileIO_s + 12,%eax
	movl	%eax,4(%ebx) 
.LN785:
	.stabn  68,0,1032,.LN785-FileIO		# line 1032, column 19
	movl	FileIO_s + 12,%eax
	movb	$1,16(%eax) 
.LN786:
	.stabn  68,0,1032,.LN786-FileIO		# line 1032, column 43
	movl	FileIO_s + 12,%eax
	movb	$0,17(%eax) 
.LN787:
	.stabn  68,0,1032,.LN787-FileIO		# line 1032, column 67
	movl	FileIO_s + 12,%eax
	movb	$1,13(%eax) 
.LN788:
	.stabn  68,0,1033,.LN788-FileIO		# line 1033, column 14
	movl	FileIO_s + 12,%eax
	movb	$0,14(%eax) 
.LN789:
	.stabn  68,0,1033,.LN789-FileIO		# line 1033, column 35
	movl	FileIO_s + 12,%eax
	movb	$0,15(%eax) 
.LN790:
	.stabn  68,0,1034,.LN790-FileIO		# line 1034, column 16
	leal	FileIO_s + 196,%eax
	pushl	%eax
	movl	FileIO_s + 12,%eax
	pushl	(%eax)
	call	tcgetattr
	addl	$8, %esp
	cmpl	$0,%eax
	sete	%al
	movb	%al,FileIO_s + 92 
.LN791:
	.stabn  68,0,1036,.LN791-FileIO		# line 1036, column 3
	pushl	$276
	leal	FileIO_s + 16,%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN792:
	.stabn  68,0,1037,.LN792-FileIO		# line 1037, column 3
	.data
.Lab791:
 	.ascii	"\000"
	.text
	pushl	$1
	leal	.Lab791,%eax
	pushl	%eax
	movl	$0,%eax
 	addl	FileIO_s + 16,%eax 
	pushl	%eax
	call	FileIO_BuffIO_OpenOutput
	addl	$12, %esp
.LN793:
	.stabn  68,0,1038,.LN793-FileIO		# line 1038, column 19
	movl	FileIO_s + 16,%eax
	movb	$0,12(%eax) 
.LN794:
	.stabn  68,0,1038,.LN794-FileIO		# line 1038, column 41
	movl	FileIO_s + 16,%eax
	movb	$0,18(%eax) 
.LN795:
	.stabn  68,0,1038,.LN795-FileIO		# line 1038, column 64
	movl	FileIO_s + 16,%ebx
	movl	FileIO_s + 16,%eax
	movl	%eax,4(%ebx) 
.LN796:
	.stabn  68,0,1039,.LN796-FileIO		# line 1039, column 20
	movl	FileIO_s + 16,%eax
	movb	$0,16(%eax) 
.LN797:
	.stabn  68,0,1039,.LN797-FileIO		# line 1039, column 46
	movl	FileIO_s + 16,%eax
	movb	$1,17(%eax) 
.LN798:
	.stabn  68,0,1039,.LN798-FileIO		# line 1039, column 70
	movl	FileIO_s + 16,%eax
	movb	$1,13(%eax) 
.LN799:
	.stabn  68,0,1040,.LN799-FileIO		# line 1040, column 15
	movl	FileIO_s + 16,%eax
	movb	$1,14(%eax) 
.LN800:
	.stabn  68,0,1040,.LN800-FileIO		# line 1040, column 36
	movl	FileIO_s + 16,%eax
	movb	$1,15(%eax) 
.LN801:
	.stabn  68,0,1041,.LN801-FileIO		# line 1041, column 12
	leal	FileIO_s + 196,%eax
	pushl	%eax
	movl	FileIO_s + 16,%eax
	pushl	(%eax)
	call	tcgetattr
	addl	$8, %esp
	cmpl	$0,%eax
	sete	%al
	movb	%al,FileIO_s + 93 
.LN802:
	.stabn  68,0,1043,.LN802-FileIO		# line 1043, column 3
	pushl	$276
	leal	FileIO_s + 8,%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
.LN803:
	.stabn  68,0,1044,.LN803-FileIO		# line 1044, column 12
	movl	FileIO_s + 8,%eax
	movl	$2,(%eax) 
.LN804:
	.stabn  68,0,1045,.LN804-FileIO		# line 1045, column 16
	movl	FileIO_s + 8,%eax
	movb	$0,12(%eax) 
.LN805:
	.stabn  68,0,1045,.LN805-FileIO		# line 1045, column 35
	movl	FileIO_s + 8,%eax
	movb	$0,18(%eax) 
.LN806:
	.stabn  68,0,1045,.LN806-FileIO		# line 1045, column 55
	movl	FileIO_s + 8,%ebx
	movl	FileIO_s + 8,%eax
	movl	%eax,4(%ebx) 
.LN807:
	.stabn  68,0,1046,.LN807-FileIO		# line 1046, column 17
	movl	FileIO_s + 8,%eax
	movb	$0,16(%eax) 
.LN808:
	.stabn  68,0,1046,.LN808-FileIO		# line 1046, column 40
	movl	FileIO_s + 8,%eax
	movb	$1,17(%eax) 
.LN809:
	.stabn  68,0,1046,.LN809-FileIO		# line 1046, column 61
	movl	FileIO_s + 8,%eax
	movb	$1,13(%eax) 
.LN810:
	.stabn  68,0,1047,.LN810-FileIO		# line 1047, column 12
	movl	FileIO_s + 8,%eax
	movb	$1,14(%eax) 
.LN811:
	.stabn  68,0,1047,.LN811-FileIO		# line 1047, column 30
	movl	FileIO_s + 8,%eax
	movb	$1,15(%eax) 
.LN812:
	.stabn  68,0,1048,.LN812-FileIO		# line 1048, column 3
	leal	FileIO_s + 104,%eax
	pushl	%eax
	leal	FileIO_s + 100,%eax
	pushl	%eax
	call	GetArgs
	addl	$8, %esp
.LN813:
	.stabn  68,0,1049,.LN813-FileIO		# line 1049, column 9
	leal	FileIO_CloseAll,%eax
	pushl	%eax
	call	atexit
	addl	$4, %esp
	movl	%eax,FileIO_s + 236 
.LN814:
	.stabn  68,0,1050,.LN814-FileIO		# line 1050, column 0
.LBE71:
	leave
	ret
	.Lab789 = 4
	.stabs "TermIO:t71=s37CC:72=ar4;0;19;2,136,160;Discipline:2,128,8;LFlag:11,96,32;CFlag:11,64,32;OFlag:11,32,32;IFlag:11,0,32;;",128,0,0,0
	.stabs "ArgTable:t73=*74=ar4;0;999;75=*76=ar4;0;999;2",128,0,0,0
	.stabs "NameLength:c=i256",128,0,0,0
	.stabs "MaxFiles:c=i16",128,0,0,0
	.stabs "EOF:c=i0",128,0,0,0
	.stabs "EOL:c=i10",128,0,0,0
	.stabs "ESC:c=i27",128,0,0,0
	.stabs "CR:c=i13",128,0,0,0
	.stabs "LF:c=i10",128,0,0,0
	.stabs "BS:c=i8",128,0,0,0
	.stabs "DEL:c=i127",128,0,0,0
	.stabs "BitSetSize:c=i16",128,0,0,0
	.stabs "Long0:c=i0",128,0,0,0
	.stabs "Long1:c=i1",128,0,0,0
	.stabs "Long2:c=i2",128,0,0,0
	.stabs "PathSep:c=i58",128,0,0,0
	.stabs "DirSep:c=i47",128,0,0,0
	.stabs "File:t78=15",128,0,0,0
	.stabn 192,0,0,.LBB71-FileIO
	.stabn 224,0,0,.LBE71-FileIO
	.stabs "FileIO_s:Gs928NeedsFlushing:1,7328,8;i2:7,7296,32;i1:7,7264,32;FD:7,7232,32;BLast:69=ar4;0;50;15,5600,1632;BPos:69,3968,1632;BFirst:69,2336,1632;IsOutput:70=ar4;0;50;1,1920,408;Time1:7,7392,32;Time0:7,7360,32;reply:7,1888,32;termioProbe:71,1568,296;termioNew:71,1248,296;termioOrig:71,928,296;TermFD:7,896,32;Intr:2,880,8;Kill:2,872,8;Erase:2,864,8;argv:73,832,32;numPar:3,800,16;Param:4,768,32;BreakEnabled:1,752,8;ToScreen:1,744,8;FromKeyboard:1,736,8;Opened:77=ar4;0;15;26,224,512;Handles:11,192,32;Okay:1,0,8;con:78,32,32;err:78,64,32;StdIn:78,96,32;StdOut:78,128,32;EOFChar:2,160,8;;",32,0,0,0
