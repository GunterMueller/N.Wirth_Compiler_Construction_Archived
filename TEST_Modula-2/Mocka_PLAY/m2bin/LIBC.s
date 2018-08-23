	.text
	.stabs "/home/gunter/GM_LANGUAGES/COMPILER/N.Wirth_Compiler_Construction/Modula-2/Mocka_PLAY/",100,0,0,.LBB0
	.stabs "LIBC.mod",100,0,0,.LBB0
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
	.globl	LIBC
	.globl	getenv
	.globl	lseek
	.globl	atexit
	.globl	tcgetattr
	.globl	tcsetattr
	.globl	localtime
	.globl	clock
	.stabs "LIBC:F16",36,0,0,LIBC
	.align 4
LIBC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,3,.LN1-LIBC		# line 3, column 1
.LBB1:
.LN2:
	.stabn  68,0,4,.LN2-LIBC		# line 4, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabs "SEEK_SET:c=i0",128,0,0,0
	.stabs "SEEK_CUR:c=i1",128,0,0,0
	.stabs "SEEK_END:c=i2",128,0,0,0
	.stabs "CLOCKSPERSEC:c=i100",128,0,0,0
	.stabs "NCCS:c=i19",128,0,0,0
	.stabs "EOF:c=i4",128,0,0,0
	.stabs "ERASE:c=i2",128,0,0,0
	.stabs "KILL:c=i3",128,0,0,0
	.stabs "INTR:c=i0",128,0,0,0
	.stabs "ISIG:c=i0",128,0,0,0
	.stabs "ICANON:c=i1",128,0,0,0
	.stabs "ECHO:c=i3",128,0,0,0
	.stabs "TermIO:t17=s37CC:18=ar4;0;19;2,136,160;Discipline:2,128,8;LFlag:11,96,32;CFlag:11,64,32;OFlag:11,32,32;IFlag:11,0,32;;",128,0,0,0
	.stabs "TIME:t19=*20=s36DST:7,256,32;YDay:7,224,32;WDay:7,192,32;Year:7,160,32;Month:7,128,32;Day:7,96,32;Hours:7,64,32;Mins:7,32,32;Secs:7,0,32;;",128,0,0,0
	.stabn 192,0,0,.LBB1-LIBC
	.stabn 224,0,0,.LBE1-LIBC
