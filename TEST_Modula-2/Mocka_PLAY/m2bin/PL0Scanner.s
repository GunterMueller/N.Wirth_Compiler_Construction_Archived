	.comm PL0Scanner_s, 1192
	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER/N.Wirth_Compiler_Construction/Modula-2/Mocka_PLAY/",100,0,0,.LBB0
	.stabs "PL0Scanner.mod",100,0,0,.LBB0
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
	.globl	PL0Scanner
	.globl	PL0Scanner_EnterKW
	.globl	PL0Scanner_CloseScanner
	.globl	PL0Scanner_InitScanner
	.globl	PL0Scanner_GetSym
	.globl	PL0Scanner_GetSym_Comment
	.globl	PL0Scanner_Number
	.globl	PL0Scanner_Identifier
	.globl	PL0Scanner_KeepId
	.globl	PL0Scanner_Diff
	.globl	PL0Scanner_GetCh
	.globl	PL0Scanner_Mark
	.stabs "PL0Scanner_EnterKW:F16",36,0,0,PL0Scanner_EnterKW
	.align 4
PL0Scanner_EnterKW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
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
.LN1:
	.stabn  68,0,169,.LN1-PL0Scanner_EnterKW		# line 169, column 5
.LBB1:
.LN2:
	.stabn  68,0,169,.LN2-PL0Scanner_EnterKW		# line 169, column 13
	incl	PL0Scanner_s + 188
.LN3:
	.stabn  68,0,170,.LN3-PL0Scanner_EnterKW		# line 170, column 25
	movl	PL0Scanner_s + 188,%ebx
	cmpl	$1,%ebx
	jb	.Lab3
	cmpl	$20,%ebx
	jbe	.Lab2
.Lab3:
   	call	BoundErr_		
.Lab2:
	movb	8(%ebp),%al
	movb	%al,PL0Scanner_s + 20(,%ebx,8) 
.LN4:
	.stabn  68,0,171,.LN4-PL0Scanner_EnterKW		# line 171, column 25
	movl	PL0Scanner_s + 188,%ebx
	cmpl	$1,%ebx
	jb	.Lab5
	cmpl	$20,%ebx
	jbe	.Lab4
.Lab5:
   	call	BoundErr_		
.Lab4:
	movl	PL0Scanner_s + 4,%eax
	movl	%eax,PL0Scanner_s + 24(,%ebx,8) 
.LN5:
	.stabn  68,0,172,.LN5-PL0Scanner_EnterKW		# line 172, column 13
	movl	$0,-8(%ebp) 
.LN6:
	.stabn  68,0,172,.LN6-PL0Scanner_EnterKW		# line 172, column 22
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp) 
.LN7:
	.stabn  68,0,173,.LN7-PL0Scanner_EnterKW		# line 173, column 19
	movl	PL0Scanner_s + 4,%ebx
	cmpl	$999,%ebx
	jbe	.Lab6
.Lab7:
   	call	BoundErr_		
.Lab6:
	movl	$2,%eax
 	addl	-12(%ebp),%eax 
	cmpl	$255,%eax
	jbe	.Lab8
.Lab9:
   	call	BoundErr_		
.Lab8:
	movb	%al,PL0Scanner_s + 192(%ebx) 
.LN8:
	.stabn  68,0,174,.LN8-PL0Scanner_EnterKW		# line 174, column 11
	incl	PL0Scanner_s + 4 
	jmp	.Lab10
.Lab11:
.LN9:
	.stabn  68,0,176,.LN9-PL0Scanner_EnterKW		# line 176, column 21
	movl	PL0Scanner_s + 4,%ebx
	cmpl	$999,%ebx
	jbe	.Lab13
.Lab14:
   	call	BoundErr_		
.Lab13:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab16
	cmpl	16(%ebp),%eax
	jbe	.Lab15
.Lab16:
   	call	BoundErr_		
.Lab15:
 	addl	12(%ebp),%eax 
	movb	(%eax),%al
	movb	%al,PL0Scanner_s + 192(%ebx) 
.LN10:
	.stabn  68,0,177,.LN10-PL0Scanner_EnterKW		# line 177, column 16
	incl	PL0Scanner_s + 4
.LN11:
	.stabn  68,0,177,.LN11-PL0Scanner_EnterKW		# line 177, column 29
	incl	-8(%ebp)
.Lab10:
.LN12:
	.stabn  68,0,175,.LN12-PL0Scanner_EnterKW		# line 175, column 19
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	.Lab11
.Lab12:
.LN13:
	.stabn  68,0,176,.LN13-PL0Scanner_EnterKW		# line 176, column 0
.LBE1:
	leave
	ret
	.Lab1 = 12
	.stabs "L:4",128,0,4,-12
	.stabs "l:4",128,0,4,-8
	.stabs "name:p17=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "Symbol:t18=eeof:32,period:31,procedure:30,var:29,const:28,write:27,read:26,begin:25,while:24,if:23,call:22,end:21,semicolon:20,ident:19,number:18,becomes:17,lparen:16,do:15,then:14,rparen:13,comma:12,geq:11,gtr:10,leq:9,lss:8,neq:7,eql:6,minus:5,plus:4,div:3,times:2,odd:1,null:0,;",128,0,0,0
	.stabs "sym:p18",160,0,1,8
	.stabn 192,0,0,.LBB1-PL0Scanner_EnterKW
	.stabn 224,0,0,.LBE1-PL0Scanner_EnterKW
	.stabs "PL0Scanner_CloseScanner:F16",36,0,0,PL0Scanner_CloseScanner
	.align 4
PL0Scanner_CloseScanner:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab17, %esp
.LN14:
	.stabn  68,0,164,.LN14-PL0Scanner_CloseScanner		# line 164, column 5
.LBB2:
.LN15:
	.stabn  68,0,165,.LN15-PL0Scanner_CloseScanner		# line 165, column 0
.LBE2:
	leave
	ret
	.Lab17 = 4
	.stabn 192,0,0,.LBB2-PL0Scanner_CloseScanner
	.stabn 224,0,0,.LBE2-PL0Scanner_CloseScanner
	.stabs "PL0Scanner_InitScanner:F16",36,0,0,PL0Scanner_InitScanner
	.align 4
PL0Scanner_InitScanner:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab18, %esp
.LN16:
	.stabn  68,0,156,.LN16-PL0Scanner_InitScanner		# line 156, column 7
.LBB3:
.LN17:
	.stabn  68,0,156,.LN17-PL0Scanner_InitScanner		# line 156, column 16
	movb	$32,PL0Scanner_s + 16 
.LN18:
	.stabn  68,0,157,.LN18-PL0Scanner_InitScanner		# line 157, column 13
	cmpl	$0,PL0Scanner_s + 20
	jne	.Lab21
.Lab20:
.LN19:
	.stabn  68,0,157,.LN19-PL0Scanner_InitScanner		# line 157, column 36
	movl	PL0Scanner_s + 4,%eax
	movl	%eax,PL0Scanner_s + 20 
	jmp	.Lab19
.Lab21:
.LN20:
	.stabn  68,0,158,.LN20-PL0Scanner_InitScanner		# line 158, column 22
	movl	PL0Scanner_s + 20,%eax
	movl	%eax,PL0Scanner_s + 4 
.Lab19:
.LN21:
	.stabn  68,0,159,.LN21-PL0Scanner_InitScanner		# line 159, column 0
.LBE3:
	leave
	ret
	.Lab18 = 4
	.stabn 192,0,0,.LBB3-PL0Scanner_InitScanner
	.stabn 224,0,0,.LBE3-PL0Scanner_InitScanner
	.stabs "PL0Scanner_GetSym_Comment:F16",36,0,0,PL0Scanner_GetSym_Comment
	.align 4
PL0Scanner_GetSym_Comment:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab22, %esp
.LN22:
	.stabn  68,0,92,.LN22-PL0Scanner_GetSym_Comment		# line 92, column 6
.LBB4:
.LN23:
	.stabn  68,0,92,.LN23-PL0Scanner_GetSym_Comment		# line 92, column 12
	call	PL0Scanner_GetCh
.Lab23:
	jmp	.Lab25
.Lab26:
.LN24:
	.stabn  68,0,94,.LN24-PL0Scanner_GetSym_Comment		# line 94, column 36
	call	PL0Scanner_GetCh
.Lab25:
.LN25:
	.stabn  68,0,94,.LN25-PL0Scanner_GetSym_Comment		# line 94, column 25
	cmpb	$42,PL0Scanner_s + 16
	jne	.Lab26
.Lab27:
.LN26:
	.stabn  68,0,95,.LN26-PL0Scanner_GetSym_Comment		# line 95, column 21
	call	PL0Scanner_GetCh
.LN27:
	.stabn  68,0,96,.LN27-PL0Scanner_GetSym_Comment		# line 96, column 25
	cmpb	$41,PL0Scanner_s + 16
	jne	.Lab23
.Lab24:
.LN28:
	.stabn  68,0,97,.LN28-PL0Scanner_GetSym_Comment		# line 97, column 15
	call	PL0Scanner_GetCh
.LN29:
	.stabn  68,0,98,.LN29-PL0Scanner_GetSym_Comment		# line 98, column 0
.LBE4:
	leave
	ret
	.Lab22 = 4
	.stabn 192,0,0,.LBB4-PL0Scanner_GetSym_Comment
	.stabn 224,0,0,.LBE4-PL0Scanner_GetSym_Comment
	.stabs "PL0Scanner_GetSym:F16",36,0,0,PL0Scanner_GetSym
	.align 4
PL0Scanner_GetSym:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab28, %esp
.LN30:
	.stabn  68,0,100,.LN30-PL0Scanner_GetSym		# line 100, column 4
.LBB5:
.LN31:
	.stabn  68,0,100,.LN31-PL0Scanner_GetSym		# line 100, column 10
	leal	-5(%ebp),%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.LN32:
	.stabn  68,0,101,.LN32-PL0Scanner_GetSym		# line 101, column 10
	cmpb	$0,-5(%ebp)
	jbe	.Lab29
.Lab30:
.LN33:
	.stabn  68,0,101,.LN33-PL0Scanner_GetSym		# line 101, column 31
	leal	-5(%ebp),%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.Lab29:
.Lab31:
.LN34:
	.stabn  68,0,103,.LN34-PL0Scanner_GetSym		# line 103, column 15
	cmpb	$32,PL0Scanner_s + 16
	ja	.Lab35
.Lab34:
.LN35:
	.stabn  68,0,104,.LN35-PL0Scanner_GetSym		# line 104, column 19
	cmpb	$0,PL0Scanner_s + 16
	jne	.Lab36
.Lab37:
.LN36:
	.stabn  68,0,104,.LN36-PL0Scanner_GetSym		# line 104, column 43
	movb	$32,PL0Scanner_s + 16 
.LN37:
	.stabn  68,0,104,.LN37-PL0Scanner_GetSym		# line 104, column 52
	jmp	.Lab32
.Lab36:
.LN38:
	.stabn  68,0,105,.LN38-PL0Scanner_GetSym		# line 105, column 21
	call	PL0Scanner_GetCh
	jmp	.Lab33
.Lab35:
.LN39:
	.stabn  68,0,106,.LN39-PL0Scanner_GetSym		# line 106, column 19
	cmpb	$127,PL0Scanner_s + 16
	jb	.Lab40
.Lab39:
.LN40:
	.stabn  68,0,106,.LN40-PL0Scanner_GetSym		# line 106, column 45
	call	PL0Scanner_GetCh
	jmp	.Lab38
.Lab40:
.LN41:
	.stabn  68,0,107,.LN41-PL0Scanner_GetSym		# line 107, column 24
	jmp	.Lab32
.Lab38:
.Lab33:
	jmp	.Lab31
.Lab32:
.LN42:
	.stabn  68,0,111,.LN42-PL0Scanner_GetSym		# line 111, column 11
	movzbl	PL0Scanner_s + 16,%eax
	.data
	.align 4
.Lab71:
	.long	.Lab70
	.long	.Lab69
	.long	.Lab68
	.long	.Lab67
	.long	.Lab66
	.long	.Lab65
	.long	.Lab64
	.long	.Lab63
	.long	.Lab62
	.long	.Lab61
	.long	.Lab60
	.long	.Lab59
	.long	.Lab58
	.long	.Lab57
	.long	.Lab56
	.long	.Lab55
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab54
	.long	.Lab53
	.long	.Lab52
	.long	.Lab51
	.long	.Lab50
	.long	.Lab49
	.long	.Lab48
	.long	.Lab47
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab46
	.long	.Lab45
	.long	.Lab45
	.long	.Lab45
	.long	.Lab45
	.long	.Lab45
	.long	.Lab45
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab44
	.long	.Lab43
	.long	.Lab43
	.long	.Lab43
	.long	.Lab43
	.text
	subl	$32,%eax
	jb	.Lab41
	cmpl	$94,%eax
	ja	.Lab41
	jmp	*.Lab71(,%eax,4)
.Lab70:
.LN43:
	.stabn  68,0,112,.LN43-PL0Scanner_GetSym		# line 112, column 25
	movb	$32,PL0Scanner_s 
.LN44:
	.stabn  68,0,112,.LN44-PL0Scanner_GetSym		# line 112, column 36
	movb	$0,PL0Scanner_s + 16 
	jmp	.Lab42
.Lab69:
.LN45:
	.stabn  68,0,113,.LN45-PL0Scanner_GetSym		# line 113, column 25
	movb	$27,PL0Scanner_s 
.LN46:
	.stabn  68,0,113,.LN46-PL0Scanner_GetSym		# line 113, column 35
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab68:
.LN47:
	.stabn  68,0,114,.LN47-PL0Scanner_GetSym		# line 114, column 25
	movb	$0,PL0Scanner_s 
.LN48:
	.stabn  68,0,114,.LN48-PL0Scanner_GetSym		# line 114, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab67:
.LN49:
	.stabn  68,0,115,.LN49-PL0Scanner_GetSym		# line 115, column 25
	movb	$7,PL0Scanner_s 
.LN50:
	.stabn  68,0,115,.LN50-PL0Scanner_GetSym		# line 115, column 33
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab66:
.LN51:
	.stabn  68,0,116,.LN51-PL0Scanner_GetSym		# line 116, column 25
	movb	$0,PL0Scanner_s 
.LN52:
	.stabn  68,0,116,.LN52-PL0Scanner_GetSym		# line 116, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab65:
.LN53:
	.stabn  68,0,117,.LN53-PL0Scanner_GetSym		# line 117, column 25
	movb	$0,PL0Scanner_s 
.LN54:
	.stabn  68,0,117,.LN54-PL0Scanner_GetSym		# line 117, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab64:
.LN55:
	.stabn  68,0,118,.LN55-PL0Scanner_GetSym		# line 118, column 25
	movb	$0,PL0Scanner_s 
.LN56:
	.stabn  68,0,118,.LN56-PL0Scanner_GetSym		# line 118, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab63:
.LN57:
	.stabn  68,0,119,.LN57-PL0Scanner_GetSym		# line 119, column 25
	movb	$0,PL0Scanner_s 
.LN58:
	.stabn  68,0,119,.LN58-PL0Scanner_GetSym		# line 119, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab62:
.LN59:
	.stabn  68,0,120,.LN59-PL0Scanner_GetSym		# line 120, column 21
	call	PL0Scanner_GetCh
.LN60:
	.stabn  68,0,121,.LN60-PL0Scanner_GetSym		# line 121, column 21
	cmpb	$42,PL0Scanner_s + 16
	jne	.Lab74
.Lab73:
.LN61:
	.stabn  68,0,121,.LN61-PL0Scanner_GetSym		# line 121, column 38
	call	PL0Scanner_GetSym_Comment
.LN62:
	.stabn  68,0,121,.LN62-PL0Scanner_GetSym		# line 121, column 47
	call	PL0Scanner_GetSym
	jmp	.Lab72
.Lab74:
.LN63:
	.stabn  68,0,122,.LN63-PL0Scanner_GetSym		# line 122, column 30
	movb	$16,PL0Scanner_s 
.Lab72:
	jmp	.Lab42
.Lab61:
.LN64:
	.stabn  68,0,124,.LN64-PL0Scanner_GetSym		# line 124, column 25
	movb	$13,PL0Scanner_s 
.LN65:
	.stabn  68,0,124,.LN65-PL0Scanner_GetSym		# line 124, column 36
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab60:
.LN66:
	.stabn  68,0,125,.LN66-PL0Scanner_GetSym		# line 125, column 25
	movb	$2,PL0Scanner_s 
.LN67:
	.stabn  68,0,125,.LN67-PL0Scanner_GetSym		# line 125, column 35
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab59:
.LN68:
	.stabn  68,0,126,.LN68-PL0Scanner_GetSym		# line 126, column 25
	movb	$4,PL0Scanner_s 
.LN69:
	.stabn  68,0,126,.LN69-PL0Scanner_GetSym		# line 126, column 35
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab58:
.LN70:
	.stabn  68,0,127,.LN70-PL0Scanner_GetSym		# line 127, column 25
	movb	$12,PL0Scanner_s 
.LN71:
	.stabn  68,0,127,.LN71-PL0Scanner_GetSym		# line 127, column 35
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab57:
.LN72:
	.stabn  68,0,128,.LN72-PL0Scanner_GetSym		# line 128, column 25
	movb	$5,PL0Scanner_s 
.LN73:
	.stabn  68,0,128,.LN73-PL0Scanner_GetSym		# line 128, column 35
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab56:
.LN74:
	.stabn  68,0,129,.LN74-PL0Scanner_GetSym		# line 129, column 25
	movb	$31,PL0Scanner_s 
.LN75:
	.stabn  68,0,129,.LN75-PL0Scanner_GetSym		# line 129, column 36
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab55:
.LN76:
	.stabn  68,0,130,.LN76-PL0Scanner_GetSym		# line 130, column 25
	movb	$3,PL0Scanner_s 
.LN77:
	.stabn  68,0,130,.LN77-PL0Scanner_GetSym		# line 130, column 33
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab54:
.LN78:
	.stabn  68,0,131,.LN78-PL0Scanner_GetSym		# line 131, column 21
	call	PL0Scanner_Number
	jmp	.Lab42
.Lab53:
.LN79:
	.stabn  68,0,132,.LN79-PL0Scanner_GetSym		# line 132, column 21
	call	PL0Scanner_GetCh
.LN80:
	.stabn  68,0,133,.LN80-PL0Scanner_GetSym		# line 133, column 21
	cmpb	$61,PL0Scanner_s + 16
	jne	.Lab77
.Lab76:
.LN81:
	.stabn  68,0,133,.LN81-PL0Scanner_GetSym		# line 133, column 38
	call	PL0Scanner_GetCh
.LN82:
	.stabn  68,0,133,.LN82-PL0Scanner_GetSym		# line 133, column 49
	movb	$17,PL0Scanner_s 
	jmp	.Lab75
.Lab77:
.LN83:
	.stabn  68,0,134,.LN83-PL0Scanner_GetSym		# line 134, column 30
	movb	$0,PL0Scanner_s 
.Lab75:
	jmp	.Lab42
.Lab52:
.LN84:
	.stabn  68,0,136,.LN84-PL0Scanner_GetSym		# line 136, column 25
	movb	$20,PL0Scanner_s 
.LN85:
	.stabn  68,0,136,.LN85-PL0Scanner_GetSym		# line 136, column 39
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab51:
.LN86:
	.stabn  68,0,137,.LN86-PL0Scanner_GetSym		# line 137, column 21
	call	PL0Scanner_GetCh
.LN87:
	.stabn  68,0,138,.LN87-PL0Scanner_GetSym		# line 138, column 21
	cmpb	$61,PL0Scanner_s + 16
	jne	.Lab80
.Lab79:
.LN88:
	.stabn  68,0,138,.LN88-PL0Scanner_GetSym		# line 138, column 38
	call	PL0Scanner_GetCh
.LN89:
	.stabn  68,0,138,.LN89-PL0Scanner_GetSym		# line 138, column 49
	movb	$9,PL0Scanner_s 
	jmp	.Lab78
.Lab80:
.LN90:
	.stabn  68,0,139,.LN90-PL0Scanner_GetSym		# line 139, column 30
	movb	$8,PL0Scanner_s 
.Lab78:
	jmp	.Lab42
.Lab50:
.LN91:
	.stabn  68,0,141,.LN91-PL0Scanner_GetSym		# line 141, column 25
	movb	$6,PL0Scanner_s 
.LN92:
	.stabn  68,0,141,.LN92-PL0Scanner_GetSym		# line 141, column 33
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab49:
.LN93:
	.stabn  68,0,142,.LN93-PL0Scanner_GetSym		# line 142, column 21
	call	PL0Scanner_GetCh
.LN94:
	.stabn  68,0,143,.LN94-PL0Scanner_GetSym		# line 143, column 21
	cmpb	$61,PL0Scanner_s + 16
	jne	.Lab83
.Lab82:
.LN95:
	.stabn  68,0,143,.LN95-PL0Scanner_GetSym		# line 143, column 38
	call	PL0Scanner_GetCh
.LN96:
	.stabn  68,0,143,.LN96-PL0Scanner_GetSym		# line 143, column 49
	movb	$11,PL0Scanner_s 
	jmp	.Lab81
.Lab83:
.LN97:
	.stabn  68,0,144,.LN97-PL0Scanner_GetSym		# line 144, column 30
	movb	$10,PL0Scanner_s 
.Lab81:
	jmp	.Lab42
.Lab48:
.LN98:
	.stabn  68,0,146,.LN98-PL0Scanner_GetSym		# line 146, column 25
	movb	$26,PL0Scanner_s 
.LN99:
	.stabn  68,0,146,.LN99-PL0Scanner_GetSym		# line 146, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab47:
.LN100:
	.stabn  68,0,147,.LN100-PL0Scanner_GetSym		# line 147, column 25
	movb	$0,PL0Scanner_s 
.LN101:
	.stabn  68,0,147,.LN101-PL0Scanner_GetSym		# line 147, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab46:
.LN102:
	.stabn  68,0,148,.LN102-PL0Scanner_GetSym		# line 148, column 21
	call	PL0Scanner_Identifier
	jmp	.Lab42
.Lab45:
.LN103:
	.stabn  68,0,149,.LN103-PL0Scanner_GetSym		# line 149, column 25
	movb	$0,PL0Scanner_s 
.LN104:
	.stabn  68,0,149,.LN104-PL0Scanner_GetSym		# line 149, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab44:
.LN105:
	.stabn  68,0,150,.LN105-PL0Scanner_GetSym		# line 150, column 21
	call	PL0Scanner_Identifier
	jmp	.Lab42
.Lab43:
.LN106:
	.stabn  68,0,151,.LN106-PL0Scanner_GetSym		# line 151, column 25
	movb	$0,PL0Scanner_s 
.LN107:
	.stabn  68,0,151,.LN107-PL0Scanner_GetSym		# line 151, column 34
	call	PL0Scanner_GetCh
	jmp	.Lab42
.Lab41:
	call	CaseErr_
.Lab42:
.LN108:
	.stabn  68,0,152,.LN108-PL0Scanner_GetSym		# line 152, column 0
.LBE5:
	leave
	ret
	.Lab28 = 8
	.stabs "xch:2",128,0,1,-5
	.stabn 192,0,0,.LBB5-PL0Scanner_GetSym
	.stabn 224,0,0,.LBE5-PL0Scanner_GetSym
	.stabs "PL0Scanner_Number:F16",36,0,0,PL0Scanner_Number
	.align 4
PL0Scanner_Number:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab84, %esp
.LN109:
	.stabn  68,0,74,.LN109-PL0Scanner_Number		# line 74, column 4
.LBB6:
.LN110:
	.stabn  68,0,74,.LN110-PL0Scanner_Number		# line 74, column 15
	movb	$18,PL0Scanner_s 
.LN111:
	.stabn  68,0,74,.LN111-PL0Scanner_Number		# line 74, column 30
	movl	$0,-8(%ebp) 
.Lab85:
.LN112:
	.stabn  68,0,75,.LN112-PL0Scanner_Number		# line 75, column 29
	movl	-8(%ebp),%ebx
	cmpl	$31,%ebx
	jbe	.Lab87
.Lab88:
   	call	BoundErr_		
.Lab87:
	movb	PL0Scanner_s + 16,%al
	movb	%al,-52(%ebp,%ebx,1) 
.LN113:
	.stabn  68,0,75,.LN113-PL0Scanner_Number		# line 75, column 41
	incl	-8(%ebp)
.LN114:
	.stabn  68,0,75,.LN114-PL0Scanner_Number		# line 75, column 51
	call	PL0Scanner_GetCh
.LN115:
	.stabn  68,0,76,.LN115-PL0Scanner_Number		# line 76, column 66
	cmpb	$48,PL0Scanner_s + 16
	jb	.Lab86
.Lab90:
	cmpb	$57,PL0Scanner_s + 16
	jbe	.Lab89
.Lab91:
	movb	PL0Scanner_s + 16,%al
	cmpb	$97,%al
	jl	.Lab92
	cmpb	$122,%al
	jg	.Lab92
	subb	$32,%al
.Lab92:
	cmpb	$65,%al
	jb	.Lab86
.Lab89:
	movb	PL0Scanner_s + 16,%al
	cmpb	$97,%al
	jl	.Lab93
	cmpb	$122,%al
	jg	.Lab93
	subb	$32,%al
.Lab93:
	cmpb	$90,%al
	jbe	.Lab85
.Lab86:
.LN116:
	.stabn  68,0,78,.LN116-PL0Scanner_Number		# line 78, column 17
	movl	$0,-12(%ebp) 
.LN117:
	.stabn  68,0,78,.LN117-PL0Scanner_Number		# line 78, column 27
	movl	$0,-16(%ebp) 
.Lab94:
.LN118:
	.stabn  68,0,80,.LN118-PL0Scanner_Number		# line 80, column 25
	movl	-12(%ebp),%eax
	cmpl	$31,%eax
	jbe	.Lab96
.Lab97:
   	call	BoundErr_		
.Lab96:
	movzbl	-52(%ebp,%eax,1),%eax
 	subl	$48,%eax 
	movl	%eax,-20(%ebp) 
.LN119:
	.stabn  68,0,81,.LN119-PL0Scanner_Number		# line 81, column 16
	cmpl	$10,-20(%ebp)
	jae	.Lab100
.Lab101:
	movl	$65535,%eax
 	subl	-20(%ebp),%eax 
	movl	$10,%ebx
	xorl	%edx,%edx
	divl	%ebx
	cmpl	-16(%ebp),%eax
	jb	.Lab100
.Lab99:
.LN120:
	.stabn  68,0,81,.LN120-PL0Scanner_Number		# line 81, column 71
	movl	-16(%ebp),%eax
	shll	$1, %eax
	leal	(%eax,%eax,4),%eax
 	addl	-20(%ebp),%eax 
	movl	%eax,-16(%ebp) 
	jmp	.Lab98
.Lab100:
.LN121:
	.stabn  68,0,82,.LN121-PL0Scanner_Number		# line 82, column 23
	pushl	$30
	call	PL0Scanner_Mark
	addl	$4, %esp
.LN122:
	.stabn  68,0,82,.LN122-PL0Scanner_Number		# line 82, column 36
	movl	$0,-16(%ebp) 
.Lab98:
.LN123:
	.stabn  68,0,84,.LN123-PL0Scanner_Number		# line 84, column 19
	incl	-12(%ebp)
.LN124:
	.stabn  68,0,85,.LN124-PL0Scanner_Number		# line 85, column 23
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	.Lab94
.Lab95:
.LN125:
	.stabn  68,0,86,.LN125-PL0Scanner_Number		# line 86, column 19
	movl	-16(%ebp),%eax
	movl	%eax,PL0Scanner_s + 8 
.LN126:
	.stabn  68,0,87,.LN126-PL0Scanner_Number		# line 87, column 0
.LBE6:
	leave
	ret
	.Lab84 = 52
	.stabs "dig:19=ar4;0;31;2",128,0,32,-52
	.stabs "d:4",128,0,4,-20
	.stabs "k:4",128,0,4,-16
	.stabs "j:4",128,0,4,-12
	.stabs "i:4",128,0,4,-8
	.stabn 192,0,0,.LBB6-PL0Scanner_Number
	.stabn 224,0,0,.LBE6-PL0Scanner_Number
	.stabs "PL0Scanner_Identifier:F16",36,0,0,PL0Scanner_Identifier
	.align 4
PL0Scanner_Identifier:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab102, %esp
.LN127:
	.stabn  68,0,48,.LN127-PL0Scanner_Identifier		# line 48, column 3
.LBB7:
.LN128:
	.stabn  68,0,48,.LN128-PL0Scanner_Identifier		# line 48, column 13
	movl	PL0Scanner_s + 4,%eax
	movl	%eax,PL0Scanner_s + 24 
.LN129:
	.stabn  68,0,49,.LN129-PL0Scanner_Identifier		# line 49, column 9
	cmpl	$1000,PL0Scanner_s + 24
	jae	.Lab103
.Lab104:
.LN130:
	.stabn  68,0,49,.LN130-PL0Scanner_Identifier		# line 49, column 32
	incl	PL0Scanner_s + 24 
.Lab103:
.Lab105:
.LN131:
	.stabn  68,0,51,.LN131-PL0Scanner_Identifier		# line 51, column 14
	cmpl	$1000,PL0Scanner_s + 24
	jae	.Lab107
.Lab108:
.LN132:
	.stabn  68,0,52,.LN132-PL0Scanner_Identifier		# line 52, column 27
	movl	PL0Scanner_s + 24,%ebx
	cmpl	$999,%ebx
	jbe	.Lab109
.Lab110:
   	call	BoundErr_		
.Lab109:
	movb	PL0Scanner_s + 16,%al
	movb	%al,PL0Scanner_s + 192(%ebx) 
.LN133:
	.stabn  68,0,52,.LN133-PL0Scanner_Identifier		# line 52, column 41
	incl	PL0Scanner_s + 24
.Lab107:
.LN134:
	.stabn  68,0,54,.LN134-PL0Scanner_Identifier		# line 54, column 14
	call	PL0Scanner_GetCh
.LN135:
	.stabn  68,0,55,.LN135-PL0Scanner_Identifier		# line 55, column 60
	cmpb	$48,PL0Scanner_s + 16
	jb	.Lab106
.Lab112:
	cmpb	$57,PL0Scanner_s + 16
	jbe	.Lab111
.Lab113:
	movb	PL0Scanner_s + 16,%al
	cmpb	$97,%al
	jl	.Lab114
	cmpb	$122,%al
	jg	.Lab114
	subb	$32,%al
.Lab114:
	cmpb	$65,%al
	jb	.Lab106
.Lab111:
	movb	PL0Scanner_s + 16,%al
	cmpb	$97,%al
	jl	.Lab115
	cmpb	$122,%al
	jg	.Lab115
	subb	$32,%al
.Lab115:
	cmpb	$90,%al
	jbe	.Lab105
.Lab106:
.LN136:
	.stabn  68,0,57,.LN136-PL0Scanner_Identifier		# line 57, column 23
	movl	PL0Scanner_s + 4,%ebx
	cmpl	$999,%ebx
	jbe	.Lab116
.Lab117:
   	call	BoundErr_		
.Lab116:
	movl	PL0Scanner_s + 24,%eax
 	subl	PL0Scanner_s + 4,%eax 
	cmpl	$255,%eax
	jbe	.Lab118
.Lab119:
   	call	BoundErr_		
.Lab118:
	movb	%al,PL0Scanner_s + 192(%ebx) 
.LN137:
	.stabn  68,0,58,.LN137-PL0Scanner_Identifier		# line 58, column 18
	movl	$1,-8(%ebp) 
.LN138:
	.stabn  68,0,58,.LN138-PL0Scanner_Identifier		# line 58, column 26
	movl	PL0Scanner_s + 188,%eax
	movl	%eax,-12(%ebp) 
.Lab120:
.LN139:
	.stabn  68,0,59,.LN139-PL0Scanner_Identifier		# line 59, column 24
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	shrl	$1, %eax 
	movl	%eax,-16(%ebp) 
.LN140:
	.stabn  68,0,60,.LN140-PL0Scanner_Identifier		# line 60, column 19
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab123
	cmpl	$20,%eax
	jbe	.Lab122
.Lab123:
   	call	BoundErr_		
.Lab122:
	pushl	PL0Scanner_s + 24(,%eax,8)
	pushl	PL0Scanner_s + 4
	call	PL0Scanner_Diff
	addl	$8, %esp
	movl	%eax,-20(%ebp) 
.LN141:
	.stabn  68,0,61,.LN141-PL0Scanner_Identifier		# line 61, column 16
	cmpl	$0,-20(%ebp)
	jg	.Lab124
.Lab125:
.LN142:
	.stabn  68,0,61,.LN142-PL0Scanner_Identifier		# line 61, column 38
	movl	-16(%ebp),%eax
 	subl	$1,%eax 
	movl	%eax,-12(%ebp) 
.Lab124:
.LN143:
	.stabn  68,0,62,.LN143-PL0Scanner_Identifier		# line 62, column 16
	cmpl	$0,-20(%ebp)
	jl	.Lab126
.Lab127:
.LN144:
	.stabn  68,0,62,.LN144-PL0Scanner_Identifier		# line 62, column 37
	movl	$1,%eax
 	addl	-16(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.Lab126:
.LN145:
	.stabn  68,0,63,.LN145-PL0Scanner_Identifier		# line 63, column 23
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	.Lab120
.Lab121:
.LN146:
	.stabn  68,0,64,.LN146-PL0Scanner_Identifier		# line 64, column 15
	movl	$1,%eax
 	addl	-12(%ebp),%eax 
	cmpl	%eax,-8(%ebp)
	jbe	.Lab130
.Lab129:
.LN147:
	.stabn  68,0,65,.LN147-PL0Scanner_Identifier		# line 65, column 20
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab132
	cmpl	$20,%eax
	jbe	.Lab131
.Lab132:
   	call	BoundErr_		
.Lab131:
	movb	PL0Scanner_s + 20(,%eax,8),%al
	movb	%al,PL0Scanner_s 
	jmp	.Lab128
.Lab130:
.LN148:
	.stabn  68,0,66,.LN148-PL0Scanner_Identifier		# line 66, column 25
	movb	$19,PL0Scanner_s 
.Lab128:
.LN149:
	.stabn  68,0,67,.LN149-PL0Scanner_Identifier		# line 67, column 0
.LBE7:
	leave
	ret
	.Lab102 = 20
	.stabs "d:7",128,0,4,-20
	.stabs "m:4",128,0,4,-16
	.stabs "l:4",128,0,4,-12
	.stabs "k:4",128,0,4,-8
	.stabn 192,0,0,.LBB7-PL0Scanner_Identifier
	.stabn 224,0,0,.LBE7-PL0Scanner_Identifier
	.stabs "PL0Scanner_KeepId:F16",36,0,0,PL0Scanner_KeepId
	.align 4
PL0Scanner_KeepId:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab133, %esp
.LN150:
	.stabn  68,0,43,.LN150-PL0Scanner_KeepId		# line 43, column 3
.LBB8:
.LN151:
	.stabn  68,0,43,.LN151-PL0Scanner_KeepId		# line 43, column 13
	movl	PL0Scanner_s + 24,%eax
	movl	%eax,PL0Scanner_s + 4 
.LN152:
	.stabn  68,0,44,.LN152-PL0Scanner_KeepId		# line 44, column 0
.LBE8:
	leave
	ret
	.Lab133 = 4
	.stabn 192,0,0,.LBB8-PL0Scanner_KeepId
	.stabn 224,0,0,.LBE8-PL0Scanner_KeepId
	.stabs "PL0Scanner_Diff:F7",36,0,0,PL0Scanner_Diff
	.align 4
PL0Scanner_Diff:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab134, %esp
.LN153:
	.stabn  68,0,31,.LN153-PL0Scanner_Diff		# line 31, column 4
.LBB9:
.LN154:
	.stabn  68,0,31,.LN154-PL0Scanner_Diff		# line 31, column 12
	movl	8(%ebp),%eax
	cmpl	$999,%eax
	jbe	.Lab135
.Lab136:
   	call	BoundErr_		
.Lab135:
	movzbl	PL0Scanner_s + 192(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab137:
.LN155:
	.stabn  68,0,33,.LN155-PL0Scanner_Diff		# line 33, column 12
	cmpl	$0,-8(%ebp)
	jne	.Lab141
.Lab140:
.LN156:
	.stabn  68,0,33,.LN156-PL0Scanner_Diff		# line 33, column 28
	movl	$0,%eax
	leave
	ret
	jmp	.Lab139
.Lab141:
.LN157:
	.stabn  68,0,34,.LN157-PL0Scanner_Diff		# line 34, column 12
	movl	8(%ebp),%eax
	cmpl	$999,%eax
	jbe	.Lab145
.Lab146:
   	call	BoundErr_		
.Lab145:
	movb	PL0Scanner_s + 192(%eax),%bl
	movl	12(%ebp),%eax
	cmpl	$999,%eax
	jbe	.Lab147
.Lab148:
   	call	BoundErr_		
.Lab147:
	cmpb	PL0Scanner_s + 192(%eax),%bl
	je	.Lab144
.Lab143:
.LN158:
	.stabn  68,0,36,.LN158-PL0Scanner_Diff		# line 36, column 15
	movl	8(%ebp),%eax
	cmpl	$999,%eax
	jbe	.Lab149
.Lab150:
   	call	BoundErr_		
.Lab149:
	movzbl	PL0Scanner_s + 192(%eax),%ebx
	movl	12(%ebp),%eax
	cmpl	$999,%eax
	jbe	.Lab151
.Lab152:
   	call	BoundErr_		
.Lab151:
	movzbl	PL0Scanner_s + 192(%eax),%eax
 	subl	%eax,%ebx 
 	movl	%ebx, %eax
	cmpl	$2147483647,%eax
	jbe	.Lab153
.Lab154:
   	call	BoundErr_		
.Lab153:
	leave
	ret
	jmp	.Lab142
.Lab144:
.LN159:
	.stabn  68,0,37,.LN159-PL0Scanner_Diff		# line 37, column 20
	incl	8(%ebp)
.LN160:
	.stabn  68,0,37,.LN160-PL0Scanner_Diff		# line 37, column 32
	incl	12(%ebp)
.LN161:
	.stabn  68,0,37,.LN161-PL0Scanner_Diff		# line 37, column 43
	decl	-8(%ebp)
.Lab142:
.Lab139:
	jmp	.Lab137
.Lab138:
.LN162:
	.stabn  68,0,38,.LN162-PL0Scanner_Diff		# line 38, column 0
	call	ReturnErr_
.LBE9:
	leave
	ret
	.Lab134 = 8
	.stabs "w:4",128,0,4,-8
	.stabs "v:p4",160,0,4,12
	.stabs "u:p4",160,0,4,8
	.stabn 192,0,0,.LBB9-PL0Scanner_Diff
	.stabn 224,0,0,.LBE9-PL0Scanner_Diff
	.stabs "PL0Scanner_GetCh:F16",36,0,0,PL0Scanner_GetCh
	.align 4
PL0Scanner_GetCh:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab155, %esp
.LN163:
	.stabn  68,0,26,.LN163-PL0Scanner_GetCh		# line 26, column 5
.LBB10:
.LN164:
	.stabn  68,0,26,.LN164-PL0Scanner_GetCh		# line 26, column 11
	leal	PL0Scanner_s + 16,%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.LN165:
	.stabn  68,0,26,.LN165-PL0Scanner_GetCh		# line 26, column 21
	movzbl	PL0Scanner_s + 16,%eax
	pushl	%eax
	call	InOut_Write
	addl	$4, %esp
.LN166:
	.stabn  68,0,27,.LN166-PL0Scanner_GetCh		# line 27, column 0
.LBE10:
	leave
	ret
	.Lab155 = 4
	.stabn 192,0,0,.LBB10-PL0Scanner_GetCh
	.stabn 224,0,0,.LBE10-PL0Scanner_GetCh
	.stabs "PL0Scanner_Mark:F16",36,0,0,PL0Scanner_Mark
	.align 4
PL0Scanner_Mark:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab156, %esp
.LN167:
	.stabn  68,0,21,.LN167-PL0Scanner_Mark		# line 21, column 5
.LBB11:
.LN168:
	.stabn  68,0,22,.LN168-PL0Scanner_Mark		# line 22, column 12
	pushl	$1
	pushl	8(%ebp)
	call	InOut_WriteCard
	addl	$8, %esp
.LN169:
	.stabn  68,0,23,.LN169-PL0Scanner_Mark		# line 23, column 0
.LBE11:
	leave
	ret
	.Lab156 = 4
	.stabs "n:p4",160,0,4,8
	.stabn 192,0,0,.LBB11-PL0Scanner_Mark
	.stabn 224,0,0,.LBE11-PL0Scanner_Mark
	.stabs "PL0Scanner:F16",36,0,0,PL0Scanner
	.align 4
PL0Scanner:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab157, %esp
.LN170:
	.stabn  68,0,181,.LN170-PL0Scanner		# line 181, column 1
.LBB12:
.LN171:
	.stabn  68,0,181,.LN171-PL0Scanner		# line 181, column 9
	movl	$0,PL0Scanner_s + 188 
.LN172:
	.stabn  68,0,181,.LN172-PL0Scanner		# line 181, column 18
	movl	$0,PL0Scanner_s + 4 
.LN173:
	.stabn  68,0,181,.LN173-PL0Scanner		# line 181, column 28
	movl	$0,PL0Scanner_s + 20 
.LN174:
	.stabn  68,0,182,.LN174-PL0Scanner		# line 182, column 3
	.data
.Lab158:
 	.ascii	"DO\000"
	.text
	pushl	$2
	leal	.Lab158,%eax
	pushl	%eax
	pushl	$15
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN175:
	.stabn  68,0,183,.LN175-PL0Scanner		# line 183, column 3
	.data
.Lab159:
 	.ascii	"IF\000"
	.text
	pushl	$2
	leal	.Lab159,%eax
	pushl	%eax
	pushl	$23
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN176:
	.stabn  68,0,184,.LN176-PL0Scanner		# line 184, column 3
	.data
.Lab160:
 	.ascii	"END\000"
	.text
	pushl	$3
	leal	.Lab160,%eax
	pushl	%eax
	pushl	$21
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN177:
	.stabn  68,0,185,.LN177-PL0Scanner		# line 185, column 3
	.data
.Lab161:
 	.ascii	"ODD\000"
	.text
	pushl	$3
	leal	.Lab161,%eax
	pushl	%eax
	pushl	$1
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN178:
	.stabn  68,0,186,.LN178-PL0Scanner		# line 186, column 3
	.data
.Lab162:
 	.ascii	"VAR\000"
	.text
	pushl	$3
	leal	.Lab162,%eax
	pushl	%eax
	pushl	$29
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN179:
	.stabn  68,0,187,.LN179-PL0Scanner		# line 187, column 3
	.data
.Lab163:
 	.ascii	"CALL\000"
	.text
	pushl	$4
	leal	.Lab163,%eax
	pushl	%eax
	pushl	$22
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN180:
	.stabn  68,0,188,.LN180-PL0Scanner		# line 188, column 3
	.data
.Lab164:
 	.ascii	"THEN\000"
	.text
	pushl	$4
	leal	.Lab164,%eax
	pushl	%eax
	pushl	$14
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN181:
	.stabn  68,0,189,.LN181-PL0Scanner		# line 189, column 3
	.data
.Lab165:
 	.ascii	"BEGIN\000"
	.text
	pushl	$5
	leal	.Lab165,%eax
	pushl	%eax
	pushl	$25
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN182:
	.stabn  68,0,190,.LN182-PL0Scanner		# line 190, column 3
	.data
.Lab166:
 	.ascii	"CONST\000"
	.text
	pushl	$5
	leal	.Lab166,%eax
	pushl	%eax
	pushl	$28
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN183:
	.stabn  68,0,191,.LN183-PL0Scanner		# line 191, column 3
	.data
.Lab167:
 	.ascii	"WHILE\000"
	.text
	pushl	$5
	leal	.Lab167,%eax
	pushl	%eax
	pushl	$24
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN184:
	.stabn  68,0,192,.LN184-PL0Scanner		# line 192, column 3
	.data
.Lab168:
 	.ascii	"PROCEDURE\000"
	.text
	pushl	$9
	leal	.Lab168,%eax
	pushl	%eax
	pushl	$30
	call	PL0Scanner_EnterKW
	addl	$12, %esp
.LN185:
	.stabn  68,0,193,.LN185-PL0Scanner		# line 193, column 0
.LBE12:
	leave
	ret
	.Lab157 = 4
	.stabs "bufLen:c=i1000",128,0,0,0
	.stabs "maxCard:c=i65535",128,0,0,0
	.stabs "eof:c=i32",128,0,0,0
	.stabs "period:c=i31",128,0,0,0
	.stabs "procedure:c=i30",128,0,0,0
	.stabs "var:c=i29",128,0,0,0
	.stabs "const:c=i28",128,0,0,0
	.stabs "write:c=i27",128,0,0,0
	.stabs "read:c=i26",128,0,0,0
	.stabs "begin:c=i25",128,0,0,0
	.stabs "while:c=i24",128,0,0,0
	.stabs "if:c=i23",128,0,0,0
	.stabs "call:c=i22",128,0,0,0
	.stabs "end:c=i21",128,0,0,0
	.stabs "semicolon:c=i20",128,0,0,0
	.stabs "ident:c=i19",128,0,0,0
	.stabs "number:c=i18",128,0,0,0
	.stabs "becomes:c=i17",128,0,0,0
	.stabs "lparen:c=i16",128,0,0,0
	.stabs "do:c=i15",128,0,0,0
	.stabs "then:c=i14",128,0,0,0
	.stabs "rparen:c=i13",128,0,0,0
	.stabs "comma:c=i12",128,0,0,0
	.stabs "geq:c=i11",128,0,0,0
	.stabs "gtr:c=i10",128,0,0,0
	.stabs "leq:c=i9",128,0,0,0
	.stabs "lss:c=i8",128,0,0,0
	.stabs "neq:c=i7",128,0,0,0
	.stabs "eql:c=i6",128,0,0,0
	.stabs "minus:c=i5",128,0,0,0
	.stabs "plus:c=i4",128,0,0,0
	.stabs "div:c=i3",128,0,0,0
	.stabs "times:c=i2",128,0,0,0
	.stabs "odd:c=i1",128,0,0,0
	.stabs "null:c=i0",128,0,0,0
	.stabs "File:t23=15",128,0,0,0
	.stabn 192,0,0,.LBB12-PL0Scanner
	.stabn 224,0,0,.LBE12-PL0Scanner
	.stabs "PL0Scanner_s:Gs1192buf:20=ar4;0;999;2,1536,8000;K:4,1504,32;keyTab:21=ar4;1;20;22=s8ind:4,32,32;sym:18,0,8;;,224,1280;id1:4,192,32;id0:4,160,32;ch:2,128,8;sym:18,0,8;id:4,32,32;num:4,64,32;source:23,96,32;;",32,0,0,0
