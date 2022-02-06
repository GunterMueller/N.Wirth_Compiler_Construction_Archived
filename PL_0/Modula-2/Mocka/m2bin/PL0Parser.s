	.comm PL0Parser_s, 16
	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER_CONSTRUCTION/N.Wirth_Compiler_Construction/PL_0/Modula-2/Mocka/",100,0,0,.LBB0
	.stabs "PL0Parser.mod",100,0,0,.LBB0
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
	.globl	PL0Generator_EndGenerator
	.globl	PL0Generator_InitGenerator
	.globl	PL0Generator_fixup
	.globl	PL0Generator_Gen
	.globl	PL0Generator_Label
	.globl	PL0Scanner_CloseScanner
	.globl	PL0Scanner_InitScanner
	.globl	PL0Scanner_GetSym
	.globl	PL0Scanner_Mark
	.globl	PL0Scanner_KeepId
	.globl	PL0Scanner_Diff
	.globl	Storage_DEALLOCATE
	.globl	Storage_ALLOCATE
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
	.globl	PL0Parser
	.globl	PL0Parser_EndParser
	.globl	PL0Parser_Parse
	.globl	PL0Parser_block
	.globl	PL0Parser_block_VarDeclaration
	.globl	PL0Parser_block_ConstDeclaration
	.globl	PL0Parser_statement
	.globl	PL0Parser_condition
	.globl	PL0Parser_expression
	.globl	PL0Parser_expression_term
	.globl	PL0Parser_expression_factor
	.globl	PL0Parser_find
	.globl	PL0Parser_NewObj
	.globl	PL0Parser_test
	.globl	PL0Parser_err
	.stabs "PL0Parser_EndParser:F16",36,0,0,PL0Parser_EndParser
	.align 4
PL0Parser_EndParser:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,236,.LN1-PL0Parser_EndParser		# line 236, column 5
.LBB1:
.LN2:
	.stabn  68,0,237,.LN2-PL0Parser_EndParser		# line 237, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-PL0Parser_EndParser
	.stabn 224,0,0,.LBE1-PL0Parser_EndParser
	.stabs "PL0Parser_Parse:F16",36,0,0,PL0Parser_Parse
	.align 4
PL0Parser_Parse:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN3:
	.stabn  68,0,229,.LN3-PL0Parser_Parse		# line 229, column 5
.LBB2:
.LN4:
	.stabn  68,0,229,.LN4-PL0Parser_Parse		# line 229, column 17
	movb	$1,PL0Parser_s 
.LN5:
	.stabn  68,0,229,.LN5-PL0Parser_Parse		# line 229, column 35
	movl	$0,PL0Parser_s + 4 
.LN6:
	.stabn  68,0,231,.LN6-PL0Parser_Parse		# line 231, column 11
	call	PL0Scanner_GetSym
.LN7:
	.stabn  68,0,231,.LN7-PL0Parser_Parse		# line 231, column 19
	call	PL0Parser_block
.LN8:
	.stabn  68,0,232,.LN8-PL0Parser_Parse		# line 232, column 11
	cmpb	$31,PL0Scanner_s
	je	.Lab3
.Lab4:
.LN9:
	.stabn  68,0,232,.LN9-PL0Parser_Parse		# line 232, column 32
	pushl	$9
	call	PL0Parser_err
	addl	$4, %esp
.Lab3:
.LN10:
	.stabn  68,0,233,.LN10-PL0Parser_Parse		# line 233, column 0
.LBE2:
	leave
	ret
	.Lab2 = 4
	.stabn 192,0,0,.LBB2-PL0Parser_Parse
	.stabn 224,0,0,.LBE2-PL0Parser_Parse
	.stabs "PL0Parser_block_VarDeclaration:F16",36,0,0,PL0Parser_block_VarDeclaration
	.align 4
PL0Parser_block_VarDeclaration:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab5, %esp
.LN11:
	.stabn  68,0,183,.LN11-PL0Parser_block_VarDeclaration		# line 183, column 1
.LBB3:
.LN12:
	.stabn  68,0,184,.LN12-PL0Parser_block_VarDeclaration		# line 184, column 1
	cmpb	$19,PL0Scanner_s
	jne	.Lab8
.Lab7:
.LN13:
	.stabn  68,0,185,.LN13-PL0Parser_block_VarDeclaration		# line 185, column 5
	pushl	$1
	call	PL0Parser_NewObj
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
.LN14:
	.stabn  68,0,185,.LN14-PL0Parser_block_VarDeclaration		# line 185, column 21
	call	PL0Scanner_GetSym
	jmp	.Lab6
.Lab8:
.LN15:
	.stabn  68,0,186,.LN15-PL0Parser_block_VarDeclaration		# line 186, column 6
	pushl	$4
	call	PL0Parser_err
	addl	$4, %esp
.Lab6:
.LN16:
	.stabn  68,0,187,.LN16-PL0Parser_block_VarDeclaration		# line 187, column 0
.LBE3:
	leave
	ret
	.Lab5 = 8
	.stabs "ObjectClass:t19=eHeader:3,Proc:2,Var:1,Const:0,;",128,0,0,0
	.stabs "Object:t18=s20down:17,128,32;last:17,96,32;kind:19,64,8;next:17,32,32;name:4,0,32;;",128,0,0,0
	.stabs "ObjPtr:t17=*18",128,0,0,0
	.stabs "obj:17",128,0,4,-8
	.stabn 192,0,0,.LBB3-PL0Parser_block_VarDeclaration
	.stabn 224,0,0,.LBE3-PL0Parser_block_VarDeclaration
	.stabs "PL0Parser_block_ConstDeclaration:F16",36,0,0,PL0Parser_block_ConstDeclaration
	.align 4
PL0Parser_block_ConstDeclaration:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab9, %esp
.LN17:
	.stabn  68,0,167,.LN17-PL0Parser_block_ConstDeclaration		# line 167, column 1
.LBB4:
.LN18:
	.stabn  68,0,168,.LN18-PL0Parser_block_ConstDeclaration		# line 168, column 1
	cmpb	$19,PL0Scanner_s
	jne	.Lab12
.Lab11:
.LN19:
	.stabn  68,0,169,.LN19-PL0Parser_block_ConstDeclaration		# line 169, column 1
	call	PL0Scanner_GetSym
.LN20:
	.stabn  68,0,170,.LN20-PL0Parser_block_ConstDeclaration		# line 170, column 1
	cmpb	$6,PL0Scanner_s
	jne	.Lab15
.Lab14:
.LN21:
	.stabn  68,0,170,.LN21-PL0Parser_block_ConstDeclaration		# line 170, column 19
	call	PL0Scanner_GetSym
.LN22:
	.stabn  68,0,171,.LN22-PL0Parser_block_ConstDeclaration		# line 171, column 1
	cmpb	$18,PL0Scanner_s
	jne	.Lab18
.Lab17:
.LN23:
	.stabn  68,0,172,.LN23-PL0Parser_block_ConstDeclaration		# line 172, column 5
	pushl	$0
	call	PL0Parser_NewObj
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
.LN24:
	.stabn  68,0,172,.LN24-PL0Parser_block_ConstDeclaration		# line 172, column 23
	call	PL0Scanner_GetSym
	jmp	.Lab16
.Lab18:
.LN25:
	.stabn  68,0,173,.LN25-PL0Parser_block_ConstDeclaration		# line 173, column 6
	pushl	$2
	call	PL0Parser_err
	addl	$4, %esp
.Lab16:
	jmp	.Lab13
.Lab15:
.LN26:
	.stabn  68,0,175,.LN26-PL0Parser_block_ConstDeclaration		# line 175, column 6
	pushl	$3
	call	PL0Parser_err
	addl	$4, %esp
.Lab13:
	jmp	.Lab10
.Lab12:
.LN27:
	.stabn  68,0,177,.LN27-PL0Parser_block_ConstDeclaration		# line 177, column 6
	pushl	$4
	call	PL0Parser_err
	addl	$4, %esp
.Lab10:
.LN28:
	.stabn  68,0,178,.LN28-PL0Parser_block_ConstDeclaration		# line 178, column 0
.LBE4:
	leave
	ret
	.Lab9 = 8
	.stabs "obj:17",128,0,4,-8
	.stabn 192,0,0,.LBB4-PL0Parser_block_ConstDeclaration
	.stabn 224,0,0,.LBE4-PL0Parser_block_ConstDeclaration
	.stabs "PL0Parser_block:F16",36,0,0,PL0Parser_block
	.align 4
PL0Parser_block:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab19, %esp
.LN29:
	.stabn  68,0,192,.LN29-PL0Parser_block		# line 192, column 1
.LBB5:
.LN30:
	.stabn  68,0,193,.LN30-PL0Parser_block		# line 193, column 1
	pushl	$20
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp) 
.LN31:
	.stabn  68,0,195,.LN31-PL0Parser_block		# line 195, column 6
	movl	-16(%ebp),%eax
	movb	$3,8(%eax) 
.LN32:
	.stabn  68,0,195,.LN32-PL0Parser_block		# line 195, column 22
	movl	-16(%ebp),%eax
	movl	$0,4(%eax) 
.LN33:
	.stabn  68,0,195,.LN33-PL0Parser_block		# line 195, column 35
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx) 
.LN34:
	.stabn  68,0,196,.LN34-PL0Parser_block		# line 196, column 6
	movl	-16(%ebp),%eax
	movl	$0,(%eax) 
.LN35:
	.stabn  68,0,196,.LN35-PL0Parser_block		# line 196, column 17
	movl	-16(%ebp),%ebx
	movl	PL0Parser_s + 4,%eax
	movl	%eax,16(%ebx) 
.LN36:
	.stabn  68,0,198,.LN36-PL0Parser_block		# line 198, column 10
	movl	-8(%ebp),%eax
	movl	%eax,PL0Parser_s + 4 
.LN37:
	.stabn  68,0,199,.LN37-PL0Parser_block		# line 199, column 1
	cmpb	$28,PL0Scanner_s
	jne	.Lab20
.Lab21:
.LN38:
	.stabn  68,0,200,.LN38-PL0Parser_block		# line 200, column 1
	call	PL0Scanner_GetSym
.LN39:
	.stabn  68,0,200,.LN39-PL0Parser_block		# line 200, column 9
	call	PL0Parser_block_ConstDeclaration
	jmp	.Lab22
.Lab23:
.LN40:
	.stabn  68,0,202,.LN40-PL0Parser_block		# line 202, column 1
	call	PL0Scanner_GetSym
.LN41:
	.stabn  68,0,202,.LN41-PL0Parser_block		# line 202, column 9
	call	PL0Parser_block_ConstDeclaration
.Lab22:
.LN42:
	.stabn  68,0,201,.LN42-PL0Parser_block		# line 201, column 11
	cmpb	$12,PL0Scanner_s
	je	.Lab23
.Lab24:
.LN43:
	.stabn  68,0,204,.LN43-PL0Parser_block		# line 204, column 1
	cmpb	$20,PL0Scanner_s
	jne	.Lab27
.Lab26:
.LN44:
	.stabn  68,0,204,.LN44-PL0Parser_block		# line 204, column 25
	call	PL0Scanner_GetSym
	jmp	.Lab25
.Lab27:
.LN45:
	.stabn  68,0,204,.LN45-PL0Parser_block		# line 204, column 37
	pushl	$5
	call	PL0Parser_err
	addl	$4, %esp
.Lab25:
.Lab20:
.LN46:
	.stabn  68,0,207,.LN46-PL0Parser_block		# line 207, column 1
	cmpb	$29,PL0Scanner_s
	jne	.Lab28
.Lab29:
.LN47:
	.stabn  68,0,208,.LN47-PL0Parser_block		# line 208, column 1
	call	PL0Scanner_GetSym
.LN48:
	.stabn  68,0,208,.LN48-PL0Parser_block		# line 208, column 9
	call	PL0Parser_block_VarDeclaration
	jmp	.Lab30
.Lab31:
.LN49:
	.stabn  68,0,210,.LN49-PL0Parser_block		# line 210, column 1
	call	PL0Scanner_GetSym
.LN50:
	.stabn  68,0,210,.LN50-PL0Parser_block		# line 210, column 9
	call	PL0Parser_block_VarDeclaration
.Lab30:
.LN51:
	.stabn  68,0,209,.LN51-PL0Parser_block		# line 209, column 11
	cmpb	$12,PL0Scanner_s
	je	.Lab31
.Lab32:
.LN52:
	.stabn  68,0,212,.LN52-PL0Parser_block		# line 212, column 1
	cmpb	$20,PL0Scanner_s
	jne	.Lab35
.Lab34:
.LN53:
	.stabn  68,0,212,.LN53-PL0Parser_block		# line 212, column 25
	call	PL0Scanner_GetSym
	jmp	.Lab33
.Lab35:
.LN54:
	.stabn  68,0,212,.LN54-PL0Parser_block		# line 212, column 37
	pushl	$5
	call	PL0Parser_err
	addl	$4, %esp
.Lab33:
.Lab28:
	jmp	.Lab36
.Lab37:
.LN55:
	.stabn  68,0,215,.LN55-PL0Parser_block		# line 215, column 26
	call	PL0Scanner_GetSym
.LN56:
	.stabn  68,0,216,.LN56-PL0Parser_block		# line 216, column 1
	cmpb	$19,PL0Scanner_s
	jne	.Lab41
.Lab40:
.LN57:
	.stabn  68,0,216,.LN57-PL0Parser_block		# line 216, column 21
	call	PL0Scanner_GetSym
	jmp	.Lab39
.Lab41:
.LN58:
	.stabn  68,0,216,.LN58-PL0Parser_block		# line 216, column 33
	pushl	$4
	call	PL0Parser_err
	addl	$4, %esp
.Lab39:
.LN59:
	.stabn  68,0,217,.LN59-PL0Parser_block		# line 217, column 5
	pushl	$2
	call	PL0Parser_NewObj
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
.LN60:
	.stabn  68,0,218,.LN60-PL0Parser_block		# line 218, column 2
	cmpb	$20,PL0Scanner_s
	jne	.Lab44
.Lab43:
.LN61:
	.stabn  68,0,218,.LN61-PL0Parser_block		# line 218, column 26
	call	PL0Scanner_GetSym
	jmp	.Lab42
.Lab44:
.LN62:
	.stabn  68,0,218,.LN62-PL0Parser_block		# line 218, column 38
	pushl	$5
	call	PL0Parser_err
	addl	$4, %esp
.Lab42:
.LN63:
	.stabn  68,0,219,.LN63-PL0Parser_block		# line 219, column 2
	call	PL0Parser_block
.LN64:
	.stabn  68,0,220,.LN64-PL0Parser_block		# line 220, column 1
	cmpb	$20,PL0Scanner_s
	jne	.Lab47
.Lab46:
.LN65:
	.stabn  68,0,220,.LN65-PL0Parser_block		# line 220, column 25
	call	PL0Scanner_GetSym
	jmp	.Lab45
.Lab47:
.LN66:
	.stabn  68,0,220,.LN66-PL0Parser_block		# line 220, column 37
	pushl	$5
	call	PL0Parser_err
	addl	$4, %esp
.Lab45:
.Lab36:
.LN67:
	.stabn  68,0,215,.LN67-PL0Parser_block		# line 215, column 11
	cmpb	$30,PL0Scanner_s
	je	.Lab37
.Lab38:
.LN68:
	.stabn  68,0,222,.LN68-PL0Parser_block		# line 222, column 1
	call	PL0Parser_statement
.LN69:
	.stabn  68,0,223,.LN69-PL0Parser_block		# line 223, column 10
	movl	PL0Parser_s + 4,%eax
	movl	16(%eax),%eax
	movl	%eax,PL0Parser_s + 4 
.LN70:
	.stabn  68,0,224,.LN70-PL0Parser_block		# line 224, column 0
.LBE5:
	leave
	ret
	.Lab19 = 16
	.stabs "obj:17",128,0,4,-12
	.stabs "hd:17",128,0,4,-8
	.stabn 192,0,0,.LBB5-PL0Parser_block
	.stabn 224,0,0,.LBE5-PL0Parser_block
	.stabs "PL0Parser_statement:F16",36,0,0,PL0Parser_statement
	.align 4
PL0Parser_statement:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab48, %esp
.LN71:
	.stabn  68,0,124,.LN71-PL0Parser_statement		# line 124, column 3
.LBB6:
.LN72:
	.stabn  68,0,125,.LN72-PL0Parser_statement		# line 125, column 1
	cmpb	$19,PL0Scanner_s
	jne	.Lab51
.Lab50:
.LN73:
	.stabn  68,0,126,.LN73-PL0Parser_statement		# line 126, column 5
	pushl	PL0Scanner_s + 4
	call	PL0Parser_find
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
.LN74:
	.stabn  68,0,126,.LN74-PL0Parser_statement		# line 126, column 18
	call	PL0Scanner_GetSym
.LN75:
	.stabn  68,0,127,.LN75-PL0Parser_statement		# line 127, column 1
	cmpb	$17,PL0Scanner_s
	jne	.Lab54
.Lab53:
.LN76:
	.stabn  68,0,127,.LN76-PL0Parser_statement		# line 127, column 23
	call	PL0Scanner_GetSym
	jmp	.Lab52
.Lab54:
.LN77:
	.stabn  68,0,128,.LN77-PL0Parser_statement		# line 128, column 6
	pushl	$13
	call	PL0Parser_err
	addl	$4, %esp
.Lab52:
.LN78:
	.stabn  68,0,130,.LN78-PL0Parser_statement		# line 130, column 1
	call	PL0Parser_expression
	jmp	.Lab49
.Lab51:
.LN79:
	.stabn  68,0,131,.LN79-PL0Parser_statement		# line 131, column 1
	cmpb	$22,PL0Scanner_s
	jne	.Lab57
.Lab56:
.LN80:
	.stabn  68,0,132,.LN80-PL0Parser_statement		# line 132, column 1
	call	PL0Scanner_GetSym
.LN81:
	.stabn  68,0,133,.LN81-PL0Parser_statement		# line 133, column 1
	cmpb	$19,PL0Scanner_s
	jne	.Lab60
.Lab59:
.LN82:
	.stabn  68,0,134,.LN82-PL0Parser_statement		# line 134, column 5
	pushl	PL0Scanner_s + 4
	call	PL0Parser_find
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
.LN83:
	.stabn  68,0,134,.LN83-PL0Parser_statement		# line 134, column 18
	call	PL0Scanner_GetSym
	jmp	.Lab58
.Lab60:
.LN84:
	.stabn  68,0,135,.LN84-PL0Parser_statement		# line 135, column 6
	pushl	$14
	call	PL0Parser_err
	addl	$4, %esp
.Lab58:
	jmp	.Lab55
.Lab57:
.LN85:
	.stabn  68,0,137,.LN85-PL0Parser_statement		# line 137, column 1
	cmpb	$25,PL0Scanner_s
	jne	.Lab63
.Lab62:
.LN86:
	.stabn  68,0,138,.LN86-PL0Parser_statement		# line 138, column 1
	call	PL0Scanner_GetSym
.LN87:
	.stabn  68,0,138,.LN87-PL0Parser_statement		# line 138, column 9
	call	PL0Parser_statement
	jmp	.Lab64
.Lab65:
.LN88:
	.stabn  68,0,140,.LN88-PL0Parser_statement		# line 140, column 1
	call	PL0Scanner_GetSym
.LN89:
	.stabn  68,0,140,.LN89-PL0Parser_statement		# line 140, column 9
	call	PL0Parser_statement
.Lab64:
.LN90:
	.stabn  68,0,139,.LN90-PL0Parser_statement		# line 139, column 11
	cmpb	$20,PL0Scanner_s
	je	.Lab65
.Lab66:
.LN91:
	.stabn  68,0,142,.LN91-PL0Parser_statement		# line 142, column 1
	cmpb	$21,PL0Scanner_s
	jne	.Lab69
.Lab68:
.LN92:
	.stabn  68,0,142,.LN92-PL0Parser_statement		# line 142, column 19
	call	PL0Scanner_GetSym
	jmp	.Lab67
.Lab69:
.LN93:
	.stabn  68,0,142,.LN93-PL0Parser_statement		# line 142, column 31
	pushl	$17
	call	PL0Parser_err
	addl	$4, %esp
.Lab67:
	jmp	.Lab61
.Lab63:
.LN94:
	.stabn  68,0,143,.LN94-PL0Parser_statement		# line 143, column 1
	cmpb	$23,PL0Scanner_s
	jne	.Lab72
.Lab71:
.LN95:
	.stabn  68,0,144,.LN95-PL0Parser_statement		# line 144, column 1
	call	PL0Scanner_GetSym
.LN96:
	.stabn  68,0,144,.LN96-PL0Parser_statement		# line 144, column 9
	call	PL0Parser_condition
.LN97:
	.stabn  68,0,145,.LN97-PL0Parser_statement		# line 145, column 1
	cmpb	$14,PL0Scanner_s
	jne	.Lab75
.Lab74:
.LN98:
	.stabn  68,0,145,.LN98-PL0Parser_statement		# line 145, column 20
	call	PL0Scanner_GetSym
	jmp	.Lab73
.Lab75:
.LN99:
	.stabn  68,0,145,.LN99-PL0Parser_statement		# line 145, column 32
	pushl	$16
	call	PL0Parser_err
	addl	$4, %esp
.Lab73:
.LN100:
	.stabn  68,0,146,.LN100-PL0Parser_statement		# line 146, column 1
	call	PL0Parser_statement
	jmp	.Lab70
.Lab72:
.LN101:
	.stabn  68,0,147,.LN101-PL0Parser_statement		# line 147, column 1
	cmpb	$24,PL0Scanner_s
	jne	.Lab78
.Lab77:
.LN102:
	.stabn  68,0,148,.LN102-PL0Parser_statement		# line 148, column 1
	call	PL0Scanner_GetSym
.LN103:
	.stabn  68,0,148,.LN103-PL0Parser_statement		# line 148, column 9
	call	PL0Parser_condition
.LN104:
	.stabn  68,0,149,.LN104-PL0Parser_statement		# line 149, column 1
	cmpb	$15,PL0Scanner_s
	jne	.Lab81
.Lab80:
.LN105:
	.stabn  68,0,149,.LN105-PL0Parser_statement		# line 149, column 18
	call	PL0Scanner_GetSym
	jmp	.Lab79
.Lab81:
.LN106:
	.stabn  68,0,149,.LN106-PL0Parser_statement		# line 149, column 30
	pushl	$18
	call	PL0Parser_err
	addl	$4, %esp
.Lab79:
.LN107:
	.stabn  68,0,150,.LN107-PL0Parser_statement		# line 150, column 1
	call	PL0Parser_statement
	jmp	.Lab76
.Lab78:
.LN108:
	.stabn  68,0,151,.LN108-PL0Parser_statement		# line 151, column 1
	cmpb	$26,PL0Scanner_s
	jne	.Lab84
.Lab83:
.LN109:
	.stabn  68,0,152,.LN109-PL0Parser_statement		# line 152, column 1
	call	PL0Scanner_GetSym
.LN110:
	.stabn  68,0,153,.LN110-PL0Parser_statement		# line 153, column 1
	cmpb	$19,PL0Scanner_s
	jne	.Lab87
.Lab86:
.LN111:
	.stabn  68,0,153,.LN111-PL0Parser_statement		# line 153, column 25
	pushl	PL0Scanner_s + 4
	call	PL0Parser_find
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
	jmp	.Lab85
.Lab87:
.LN112:
	.stabn  68,0,154,.LN112-PL0Parser_statement		# line 154, column 6
	pushl	$14
	call	PL0Parser_err
	addl	$4, %esp
.Lab85:
.LN113:
	.stabn  68,0,156,.LN113-PL0Parser_statement		# line 156, column 1
	call	PL0Scanner_GetSym
	jmp	.Lab82
.Lab84:
.LN114:
	.stabn  68,0,157,.LN114-PL0Parser_statement		# line 157, column 1
	cmpb	$27,PL0Scanner_s
	jne	.Lab88
.Lab89:
.LN115:
	.stabn  68,0,158,.LN115-PL0Parser_statement		# line 158, column 1
	call	PL0Scanner_GetSym
.LN116:
	.stabn  68,0,158,.LN116-PL0Parser_statement		# line 158, column 9
	call	PL0Parser_expression
.Lab88:
.Lab82:
.Lab76:
.Lab70:
.Lab61:
.Lab55:
.Lab49:
.LN117:
	.stabn  68,0,159,.LN117-PL0Parser_statement		# line 159, column 0
.LBE6:
	leave
	ret
	.Lab48 = 8
	.stabs "obj:17",128,0,4,-8
	.stabn 192,0,0,.LBB6-PL0Parser_statement
	.stabn 224,0,0,.LBE6-PL0Parser_statement
	.stabs "PL0Parser_condition:F16",36,0,0,PL0Parser_condition
	.align 4
PL0Parser_condition:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab90, %esp
.LN118:
	.stabn  68,0,110,.LN118-PL0Parser_condition		# line 110, column 5
.LBB7:
.LN119:
	.stabn  68,0,111,.LN119-PL0Parser_condition		# line 111, column 11
	cmpb	$1,PL0Scanner_s
	jne	.Lab93
.Lab92:
.LN120:
	.stabn  68,0,112,.LN120-PL0Parser_condition		# line 112, column 15
	call	PL0Scanner_GetSym
.LN121:
	.stabn  68,0,112,.LN121-PL0Parser_condition		# line 112, column 24
	call	PL0Parser_expression
	jmp	.Lab91
.Lab93:
.LN122:
	.stabn  68,0,114,.LN122-PL0Parser_condition		# line 114, column 14
	call	PL0Parser_expression
.LN123:
	.stabn  68,0,115,.LN123-PL0Parser_condition		# line 115, column 14
	cmpb	$6,PL0Scanner_s
	jb	.Lab96
.Lab97:
	cmpb	$11,PL0Scanner_s
	ja	.Lab96
.Lab95:
.LN124:
	.stabn  68,0,116,.LN124-PL0Parser_condition		# line 116, column 18
	call	PL0Scanner_GetSym
.LN125:
	.stabn  68,0,116,.LN125-PL0Parser_condition		# line 116, column 26
	call	PL0Parser_expression
	jmp	.Lab94
.Lab96:
.LN126:
	.stabn  68,0,117,.LN126-PL0Parser_condition		# line 117, column 19
	pushl	$20
	call	PL0Parser_err
	addl	$4, %esp
.Lab94:
.Lab91:
.LN127:
	.stabn  68,0,118,.LN127-PL0Parser_condition		# line 118, column 0
.LBE7:
	leave
	ret
	.Lab90 = 4
	.stabn 192,0,0,.LBB7-PL0Parser_condition
	.stabn 224,0,0,.LBE7-PL0Parser_condition
	.stabs "PL0Parser_expression_term:F16",36,0,0,PL0Parser_expression_term
	.align 4
PL0Parser_expression_term:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab98, %esp
.LN128:
	.stabn  68,0,90,.LN128-PL0Parser_expression_term		# line 90, column 8
.LBB8:
.LN129:
	.stabn  68,0,91,.LN129-PL0Parser_expression_term		# line 91, column 19
	call	PL0Parser_expression_factor
	jmp	.Lab99
.Lab100:
.LN130:
	.stabn  68,0,93,.LN130-PL0Parser_expression_term		# line 93, column 21
	call	PL0Scanner_GetSym
.LN131:
	.stabn  68,0,93,.LN131-PL0Parser_expression_term		# line 93, column 29
	call	PL0Parser_expression_factor
.Lab99:
.LN132:
	.stabn  68,0,92,.LN132-PL0Parser_expression_term		# line 92, column 41
	cmpb	$2,PL0Scanner_s
	jb	.Lab101
.Lab102:
	cmpb	$3,PL0Scanner_s
	jbe	.Lab100
.Lab101:
.LN133:
	.stabn  68,0,93,.LN133-PL0Parser_expression_term		# line 93, column 0
.LBE8:
	leave
	ret
	.Lab98 = 4
	.stabn 192,0,0,.LBB8-PL0Parser_expression_term
	.stabn 224,0,0,.LBE8-PL0Parser_expression_term
	.stabs "PL0Parser_expression_factor:F16",36,0,0,PL0Parser_expression_factor
	.align 4
PL0Parser_expression_factor:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab103, %esp
.LN134:
	.stabn  68,0,72,.LN134-PL0Parser_expression_factor		# line 72, column 8
.LBB9:
.LN135:
	.stabn  68,0,73,.LN135-PL0Parser_expression_factor		# line 73, column 14
	cmpb	$19,PL0Scanner_s
	jne	.Lab106
.Lab105:
.LN136:
	.stabn  68,0,73,.LN136-PL0Parser_expression_factor		# line 73, column 41
	pushl	PL0Scanner_s + 4
	call	PL0Parser_find
	addl	$4, %esp
	movl	%eax,-8(%ebp) 
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp) 
.LN137:
	.stabn  68,0,75,.LN137-PL0Parser_expression_factor		# line 75, column 20
	movl	-12(%ebp),%eax
	movzbl	8(%eax),%eax
	.data
	.align 4
.Lab111:
	.long	.Lab110
	.long	.Lab110
	.long	.Lab109
	.text
	subl	$0,%eax
	jb	.Lab107
	cmpl	$2,%eax
	ja	.Lab107
	jmp	*.Lab111(,%eax,4)
.Lab110:
	jmp	.Lab108
.Lab109:
.LN138:
	.stabn  68,0,77,.LN138-PL0Parser_expression_factor		# line 77, column 33
	pushl	$21
	call	PL0Parser_err
	addl	$4, %esp
	jmp	.Lab108
.Lab107:
	call	CaseErr_
.Lab108:
.LN139:
	.stabn  68,0,80,.LN139-PL0Parser_expression_factor		# line 80, column 20
	call	PL0Scanner_GetSym
	jmp	.Lab104
.Lab106:
.LN140:
	.stabn  68,0,81,.LN140-PL0Parser_expression_factor		# line 81, column 19
	cmpb	$18,PL0Scanner_s
	jne	.Lab114
.Lab113:
.LN141:
	.stabn  68,0,81,.LN141-PL0Parser_expression_factor		# line 81, column 47
	call	PL0Scanner_GetSym
	jmp	.Lab112
.Lab114:
.LN142:
	.stabn  68,0,82,.LN142-PL0Parser_expression_factor		# line 82, column 19
	cmpb	$16,PL0Scanner_s
	jne	.Lab117
.Lab116:
.LN143:
	.stabn  68,0,83,.LN143-PL0Parser_expression_factor		# line 83, column 20
	call	PL0Scanner_GetSym
.LN144:
	.stabn  68,0,83,.LN144-PL0Parser_expression_factor		# line 83, column 28
	call	PL0Parser_expression
.LN145:
	.stabn  68,0,84,.LN145-PL0Parser_expression_factor		# line 84, column 21
	cmpb	$13,PL0Scanner_s
	jne	.Lab120
.Lab119:
.LN146:
	.stabn  68,0,84,.LN146-PL0Parser_expression_factor		# line 84, column 45
	call	PL0Scanner_GetSym
	jmp	.Lab118
.Lab120:
.LN147:
	.stabn  68,0,84,.LN147-PL0Parser_expression_factor		# line 84, column 57
	pushl	$7
	call	PL0Parser_err
	addl	$4, %esp
.Lab118:
	jmp	.Lab115
.Lab117:
.LN148:
	.stabn  68,0,85,.LN148-PL0Parser_expression_factor		# line 85, column 24
	pushl	$8
	call	PL0Parser_err
	addl	$4, %esp
.Lab115:
.Lab112:
.Lab104:
.LN149:
	.stabn  68,0,86,.LN149-PL0Parser_expression_factor		# line 86, column 0
.LBE9:
	leave
	ret
	.Lab103 = 12
	.stabs "obj:17",128,0,4,-8
	.stabn 192,0,0,.LBB9-PL0Parser_expression_factor
	.stabn 224,0,0,.LBE9-PL0Parser_expression_factor
	.stabs "PL0Parser_expression:F16",36,0,0,PL0Parser_expression
	.align 4
PL0Parser_expression:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab121, %esp
.LN150:
	.stabn  68,0,97,.LN150-PL0Parser_expression		# line 97, column 6
.LBB10:
.LN151:
	.stabn  68,0,98,.LN151-PL0Parser_expression		# line 98, column 17
	cmpb	$4,PL0Scanner_s
	jb	.Lab124
.Lab125:
	cmpb	$5,PL0Scanner_s
	ja	.Lab124
.Lab123:
.LN152:
	.stabn  68,0,99,.LN152-PL0Parser_expression		# line 99, column 20
	call	PL0Scanner_GetSym
.LN153:
	.stabn  68,0,99,.LN153-PL0Parser_expression		# line 99, column 28
	call	PL0Parser_expression_term
	jmp	.Lab122
.Lab124:
.LN154:
	.stabn  68,0,100,.LN154-PL0Parser_expression		# line 100, column 22
	call	PL0Parser_expression_term
.Lab122:
	jmp	.Lab126
.Lab127:
.LN155:
	.stabn  68,0,104,.LN155-PL0Parser_expression		# line 104, column 23
	call	PL0Scanner_GetSym
.LN156:
	.stabn  68,0,104,.LN156-PL0Parser_expression		# line 104, column 31
	call	PL0Parser_expression_term
.Lab126:
.LN157:
	.stabn  68,0,103,.LN157-PL0Parser_expression		# line 103, column 38
	cmpb	$4,PL0Scanner_s
	jb	.Lab128
.Lab129:
	cmpb	$5,PL0Scanner_s
	jbe	.Lab127
.Lab128:
.LN158:
	.stabn  68,0,104,.LN158-PL0Parser_expression		# line 104, column 0
.LBE10:
	leave
	ret
	.Lab121 = 4
	.stabn 192,0,0,.LBB10-PL0Parser_expression
	.stabn 224,0,0,.LBE10-PL0Parser_expression
	.stabs "PL0Parser_find:F17",36,0,0,PL0Parser_find
	.align 4
PL0Parser_find:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab130, %esp
.LN159:
	.stabn  68,0,54,.LN159-PL0Parser_find		# line 54, column 4
.LBB11:
.LN160:
	.stabn  68,0,54,.LN160-PL0Parser_find		# line 54, column 13
	movl	PL0Parser_s + 4,%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab131
.Lab132:
.LN161:
	.stabn  68,0,56,.LN161-PL0Parser_find		# line 56, column 20
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp) 
	jmp	.Lab134
.Lab135:
.LN162:
	.stabn  68,0,58,.LN162-PL0Parser_find		# line 58, column 21
	movl	-12(%ebp),%eax
	pushl	(%eax)
	pushl	8(%ebp)
	call	PL0Scanner_Diff
	addl	$8, %esp
	cmpl	$0,%eax
	jne	.Lab139
.Lab138:
.LN163:
	.stabn  68,0,58,.LN163-PL0Parser_find		# line 58, column 54
	movl	-12(%ebp),%eax
	leave
	ret
	jmp	.Lab137
.Lab139:
.LN164:
	.stabn  68,0,59,.LN164-PL0Parser_find		# line 59, column 30
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp) 
.Lab137:
.Lab134:
.LN165:
	.stabn  68,0,57,.LN165-PL0Parser_find		# line 57, column 25
	cmpl	$0,-12(%ebp)
	jne	.Lab135
.Lab136:
.LN166:
	.stabn  68,0,62,.LN166-PL0Parser_find		# line 62, column 19
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab131:
.LN167:
	.stabn  68,0,55,.LN167-PL0Parser_find		# line 55, column 19
	cmpl	$0,-8(%ebp)
	jne	.Lab132
.Lab133:
.LN168:
	.stabn  68,0,64,.LN168-PL0Parser_find		# line 64, column 8
	pushl	$11
	call	PL0Parser_err
	addl	$4, %esp
.LN169:
	.stabn  68,0,64,.LN169-PL0Parser_find		# line 64, column 17
	movl	$0,%eax
	leave
	ret
.LN170:
	.stabn  68,0,65,.LN170-PL0Parser_find		# line 65, column 0
	call	ReturnErr_
.LBE11:
	leave
	ret
	.Lab130 = 12
	.stabs "obj:17",128,0,4,-12
	.stabs "hd:17",128,0,4,-8
	.stabs "id:p4",160,0,4,8
	.stabn 192,0,0,.LBB11-PL0Parser_find
	.stabn 224,0,0,.LBE11-PL0Parser_find
	.stabs "PL0Parser_NewObj:F17",36,0,0,PL0Parser_NewObj
	.align 4
PL0Parser_NewObj:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab140, %esp
.LN171:
	.stabn  68,0,42,.LN171-PL0Parser_NewObj		# line 42, column 6
.LBB12:
.LN172:
	.stabn  68,0,43,.LN172-PL0Parser_NewObj		# line 43, column 12
	pushl	$20
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp) 
.LN173:
	.stabn  68,0,45,.LN173-PL0Parser_NewObj		# line 45, column 22
	movl	-12(%ebp),%ebx
	movl	PL0Scanner_s + 4,%eax
	movl	%eax,(%ebx) 
.LN174:
	.stabn  68,0,45,.LN174-PL0Parser_NewObj		# line 45, column 34
	movl	-12(%ebp),%ebx
	movb	8(%ebp),%al
	movb	%al,8(%ebx) 
.LN175:
	.stabn  68,0,45,.LN175-PL0Parser_NewObj		# line 45, column 45
	movl	-12(%ebp),%eax
	movl	$0,4(%eax) 
.LN176:
	.stabn  68,0,47,.LN176-PL0Parser_NewObj		# line 47, column 11
	call	PL0Scanner_KeepId
.LN177:
	.stabn  68,0,47,.LN177-PL0Parser_NewObj		# line 47, column 40
	movl	PL0Parser_s + 4,%eax
	movl	12(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN178:
	.stabn  68,0,47,.LN178-PL0Parser_NewObj		# line 47, column 63
	movl	PL0Parser_s + 4,%ebx
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx) 
.LN179:
	.stabn  68,0,48,.LN179-PL0Parser_NewObj		# line 48, column 11
	movl	-8(%ebp),%eax
	leave
	ret
.LN180:
	.stabn  68,0,49,.LN180-PL0Parser_NewObj		# line 49, column 0
	call	ReturnErr_
.LBE12:
	leave
	ret
	.Lab140 = 12
	.stabs "obj:17",128,0,4,-8
	.stabs "k:p19",160,0,1,8
	.stabn 192,0,0,.LBB12-PL0Parser_NewObj
	.stabn 224,0,0,.LBE12-PL0Parser_NewObj
	.stabs "PL0Parser_test:F16",36,0,0,PL0Parser_test
	.align 4
PL0Parser_test:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab141, %esp
.LN181:
	.stabn  68,0,34,.LN181-PL0Parser_test		# line 34, column 5
.LBB13:
.LN182:
	.stabn  68,0,35,.LN182-PL0Parser_test		# line 35, column 11
	movb	PL0Scanner_s,%al
	cmpb	8(%ebp),%al
	jae	.Lab142
.Lab143:
.LN183:
	.stabn  68,0,35,.LN183-PL0Parser_test		# line 35, column 31
	pushl	12(%ebp)
	call	PL0Parser_err
	addl	$4, %esp
.Lab144:
.LN184:
	.stabn  68,0,36,.LN184-PL0Parser_test		# line 36, column 19
	call	PL0Scanner_GetSym
.LN185:
	.stabn  68,0,36,.LN185-PL0Parser_test		# line 36, column 37
	movb	PL0Scanner_s,%al
	cmpb	8(%ebp),%al
	jb	.Lab144
.Lab145:
.Lab142:
.LN186:
	.stabn  68,0,37,.LN186-PL0Parser_test		# line 37, column 0
.LBE13:
	leave
	ret
	.Lab141 = 4
	.stabs "n:p4",160,0,4,12
	.stabs "Symbol:t20=eeof:32,period:31,procedure:30,var:29,const:28,write:27,read:26,begin:25,while:24,if:23,call:22,end:21,semicolon:20,ident:19,number:18,becomes:17,lparen:16,do:15,then:14,rparen:13,comma:12,geq:11,gtr:10,leq:9,lss:8,neq:7,eql:6,minus:5,plus:4,div:3,times:2,odd:1,null:0,;",128,0,0,0
	.stabs "s:p20",160,0,1,8
	.stabn 192,0,0,.LBB13-PL0Parser_test
	.stabn 224,0,0,.LBE13-PL0Parser_test
	.stabs "PL0Parser_err:F16",36,0,0,PL0Parser_err
	.align 4
PL0Parser_err:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab146, %esp
.LN187:
	.stabn  68,0,29,.LN187-PL0Parser_err		# line 29, column 5
.LBB14:
.LN188:
	.stabn  68,0,29,.LN188-PL0Parser_err		# line 29, column 17
	movb	$0,PL0Parser_s 
.LN189:
	.stabn  68,0,29,.LN189-PL0Parser_err		# line 29, column 28
	pushl	8(%ebp)
	call	PL0Scanner_Mark
	addl	$4, %esp
.LN190:
	.stabn  68,0,30,.LN190-PL0Parser_err		# line 30, column 0
.LBE14:
	leave
	ret
	.Lab146 = 4
	.stabs "n:p4",160,0,4,8
	.stabn 192,0,0,.LBB14-PL0Parser_err
	.stabn 224,0,0,.LBE14-PL0Parser_err
	.stabs "PL0Parser:F16",36,0,0,PL0Parser
	.align 4
PL0Parser:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab147, %esp
.LN191:
	.stabn  68,0,239,.LN191-PL0Parser		# line 239, column 1
.LBB15:
.LN192:
	.stabn  68,0,240,.LN192-PL0Parser		# line 240, column 0
.LBE15:
	leave
	ret
	.Lab147 = 4
	.stabs "Header:c=i3",128,0,0,0
	.stabs "Proc:c=i2",128,0,0,0
	.stabs "Var:c=i1",128,0,0,0
	.stabs "Const:c=i0",128,0,0,0
	.stabn 192,0,0,.LBB15-PL0Parser
	.stabn 224,0,0,.LBE15-PL0Parser
	.stabs "PL0Parser_s:Gs16undef:17,96,32;bottom:17,64,32;topScope:17,32,32;noerr:1,0,8;;",32,0,0,0
