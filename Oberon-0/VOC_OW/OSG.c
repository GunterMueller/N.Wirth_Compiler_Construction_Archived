/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "Files.h"
#include "OSS.h"
#include "Oberon.h"
#include "RISC.h"
#include "Texts.h"

typedef
	struct OSG_TypeDesc *OSG_Type;

typedef
	struct OSG_Item {
		INT16 mode, lev;
		OSG_Type type;
		INT32 a, b, r;
	} OSG_Item;

typedef
	struct OSG_ObjDesc *OSG_Object;

typedef
	struct OSG_ObjDesc {
		INT16 class, lev;
		OSG_Object next, dsc;
		OSG_Type type;
		OSS_Ident name;
		INT32 val, nofpar;
	} OSG_ObjDesc;

typedef
	struct OSG_TypeDesc {
		INT16 form;
		OSG_Object dsc;
		OSG_Type base;
		INT32 size, len, nofpar;
	} OSG_TypeDesc;


export OSG_Type OSG_boolType, OSG_intType;
export INT16 OSG_curlev, OSG_pc;
static INT32 OSG_entry, OSG_fixlist, OSG_RH;
static Texts_Writer OSG_W;
static INT16 OSG_relmap[6];
export INT32 OSG_code[8192];
static CHAR OSG_mnemo0[16][4], OSG_mnemo1[16][4];

export ADDRESS *OSG_Item__typ;
export ADDRESS *OSG_ObjDesc__typ;
export ADDRESS *OSG_TypeDesc__typ;

export void OSG_AddOp (INT32 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_And1 (OSG_Item *x, ADDRESS *x__typ);
export void OSG_And2 (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_BJump (INT32 L);
export void OSG_CBJump (OSG_Item *x, ADDRESS *x__typ, INT32 L);
export void OSG_CFJump (OSG_Item *x, ADDRESS *x__typ);
export void OSG_Call (OSG_Object *obj);
export void OSG_CheckRegs (void);
export void OSG_Close (void);
export void OSG_Decode (void);
export void OSG_DivOp (INT32 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_Enter (INT32 parblksize, INT32 locblksize);
export void OSG_Execute (void);
export void OSG_FJump (INT32 *L);
export void OSG_Field (OSG_Item *x, ADDRESS *x__typ, OSG_Object y);
export void OSG_FixLink (INT32 L);
export void OSG_Header (INT32 size);
static CHAR OSG_HexCh (INT32 k);
export void OSG_IncLevel (INT16 n);
export void OSG_Index (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_MakeConstItem (OSG_Item *x, ADDRESS *x__typ, OSG_Type typ, INT32 val);
export void OSG_MakeItem (OSG_Item *x, ADDRESS *x__typ, OSG_Object y, INT32 curlev);
export void OSG_MulOp (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_Neg (OSG_Item *x, ADDRESS *x__typ);
export void OSG_Not (OSG_Item *x, ADDRESS *x__typ);
export void OSG_Open (void);
export void OSG_OpenArrayParam (OSG_Item *x, ADDRESS *x__typ);
export void OSG_Or1 (OSG_Item *x, ADDRESS *x__typ);
export void OSG_Or2 (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_Ord (OSG_Item *x, ADDRESS *x__typ);
static void OSG_Put0 (INT32 op, INT32 a, INT32 b, INT32 c);
static void OSG_Put1 (INT32 op, INT32 a, INT32 b, INT32 im);
static void OSG_Put2 (INT32 op, INT32 a, INT32 b, INT32 off);
static void OSG_Put3 (INT32 op, INT32 cond, INT32 off);
export void OSG_ReadInt (OSG_Item *x, ADDRESS *x__typ);
export void OSG_Relation (INT16 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
export void OSG_Return (INT32 size);
static void OSG_SetCC (OSG_Item *x, ADDRESS *x__typ, INT32 n);
export void OSG_Store (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
static void OSG_TestRange (INT32 x);
export void OSG_ValueParam (OSG_Item *x, ADDRESS *x__typ);
export void OSG_VarParam (OSG_Item *x, ADDRESS *x__typ, OSG_Type ftype);
export void OSG_WriteChar (OSG_Item *x, ADDRESS *x__typ);
export void OSG_WriteInt (OSG_Item *x, ADDRESS *x__typ);
export void OSG_WriteLn (void);
static void OSG_WriteReg (INT32 r);
export void OSG_eot (OSG_Item *x, ADDRESS *x__typ);
static void OSG_fix (INT32 at, INT32 with);
static void OSG_incR (void);
static void OSG_load (OSG_Item *x, ADDRESS *x__typ);
static void OSG_loadAdr (OSG_Item *x, ADDRESS *x__typ);
static void OSG_loadCond (OSG_Item *x, ADDRESS *x__typ);
static INT32 OSG_merged (INT32 L0, INT32 L1);
static INT32 OSG_negated (INT32 cond);


static void OSG_Put0 (INT32 op, INT32 a, INT32 b, INT32 c)
{
	OSG_code[__X(OSG_pc, 8192)] = __ASHL(__ASHL(__ASHL(a, 4) + b, 4) + op, 16) + c;
	OSG_pc += 1;
}

static void OSG_Put1 (INT32 op, INT32 a, INT32 b, INT32 im)
{
	if (im < 0) {
		op += 4096;
	}
	OSG_code[__X(OSG_pc, 8192)] = __ASHL(__ASHL(__ASHL(a + 64, 4) + b, 4) + op, 16) + __MASK(im, -65536);
	OSG_pc += 1;
}

static void OSG_Put2 (INT32 op, INT32 a, INT32 b, INT32 off)
{
	OSG_code[__X(OSG_pc, 8192)] = __ASHL(__ASHL(__ASHL(op + 8, 4) + a, 4) + b, 20) + __MASK(off, -65536);
	OSG_pc += 1;
}

static void OSG_Put3 (INT32 op, INT32 cond, INT32 off)
{
	OSG_code[__X(OSG_pc, 8192)] = __ASHL(__ASHL(op + 12, 4) + cond, 24) + __MASK(off, -16777216);
	OSG_pc += 1;
}

static void OSG_incR (void)
{
	if (OSG_RH < 13) {
		OSG_RH += 1;
	} else {
		OSS_Mark((CHAR*)"register stack overflow", 24);
	}
}

void OSG_CheckRegs (void)
{
	if (OSG_RH != 0) {
		OSS_Mark((CHAR*)"Reg Stack", 10);
		OSG_RH = 0;
	}
}

static void OSG_SetCC (OSG_Item *x, ADDRESS *x__typ, INT32 n)
{
	(*x).mode = 12;
	(*x).a = 0;
	(*x).b = 0;
	(*x).r = n;
}

static void OSG_TestRange (INT32 x)
{
	if (x > 65535 || x < -65536) {
		OSS_Mark((CHAR*)"value too large", 16);
	}
}

static INT32 OSG_negated (INT32 cond)
{
	if (cond < 8) {
		cond = cond + 8;
	} else {
		cond = cond - 8;
	}
	return cond;
}

static void OSG_fix (INT32 at, INT32 with)
{
	OSG_code[__X(at, 8192)] = __ASHL(__ASHR(OSG_code[__X(at, 8192)], 24), 24) + __MASK(with, -16777216);
}

void OSG_FixLink (INT32 L)
{
	INT32 L1;
	while (L != 0) {
		if (L < 8192) {
			L1 = __MASK(OSG_code[__X(L, 8192)], -262144);
			OSG_fix(L, (OSG_pc - L) - 1);
			L = L1;
		}
	}
}

static void OSG_load (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).mode != 10) {
		if ((*x).mode == 2) {
			if ((*x).r > 0) {
				OSG_Put2(0, OSG_RH, 14, (*x).a);
			} else {
				OSG_Put2(0, OSG_RH, 13, (*x).a);
			}
			(*x).r = OSG_RH;
			OSG_incR();
		} else if ((*x).mode == 3) {
			OSG_Put2(0, OSG_RH, (*x).r, (*x).a);
			OSG_Put2(0, OSG_RH, OSG_RH, 0);
			(*x).r = OSG_RH;
			OSG_incR();
		} else if ((*x).mode == 1) {
			if ((*x).a >= 65536 || (*x).a < -65536) {
				OSS_Mark((CHAR*)"const too large", 16);
			}
			OSG_Put1(0, OSG_RH, 0, (*x).a);
			(*x).r = OSG_RH;
			OSG_incR();
		} else if ((*x).mode == 11) {
			OSG_Put2(0, (*x).r, (*x).r, (*x).a);
		} else if ((*x).mode == 12) {
			OSG_Put3(2, OSG_negated((*x).r), 2);
			OSG_FixLink((*x).b);
			OSG_Put1(0, OSG_RH, 0, 1);
			OSG_Put3(2, 7, 1);
			OSG_FixLink((*x).a);
			OSG_Put1(0, OSG_RH, 0, 0);
			(*x).r = OSG_RH;
			OSG_incR();
		}
		(*x).mode = 10;
	}
}

static void OSG_loadAdr (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).mode == 2) {
		if ((*x).r > 0) {
			OSG_Put1(8, OSG_RH, 14, (*x).a);
			(*x).r = OSG_RH;
		} else {
			OSG_Put1(8, OSG_RH, 13, (*x).a);
		}
		OSG_incR();
	} else if ((*x).mode == 3) {
		OSG_Put2(0, OSG_RH, 14, (*x).a);
		OSG_Put1(8, OSG_RH, OSG_RH, (*x).b);
		(*x).r = OSG_RH;
		OSG_incR();
	} else if (((*x).mode == 11 && (*x).a != 0)) {
		OSG_Put1(8, (*x).r, (*x).r, (*x).a);
	} else {
		OSS_Mark((CHAR*)"address error", 14);
	}
	(*x).mode = 10;
}

static void OSG_loadCond (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).type->form == 0) {
		if ((*x).mode == 1) {
			(*x).r = 15 - __ASHL((*x).a, 3);
		} else {
			OSG_load(&*x, x__typ);
			OSG_Put1(9, (*x).r, (*x).r, 0);
			(*x).r = 9;
			OSG_RH -= 1;
		}
		(*x).mode = 12;
		(*x).a = 0;
		(*x).b = 0;
	} else {
		OSS_Mark((CHAR*)"not Boolean", 12);
	}
}

static INT32 OSG_merged (INT32 L0, INT32 L1)
{
	INT32 L2, L3;
	if (L0 != 0) {
		L3 = L0;
		do {
			L2 = L3;
			L3 = __MASK(OSG_code[__X(L2, 8192)], -262144);
		} while (!(L3 == 0));
		OSG_code[__X(L2, 8192)] = OSG_code[__X(L2, 8192)] + L1;
		L1 = L0;
	}
	return L1;
}

void OSG_IncLevel (INT16 n)
{
	OSG_curlev = OSG_curlev + n;
}

void OSG_MakeConstItem (OSG_Item *x, ADDRESS *x__typ, OSG_Type typ, INT32 val)
{
	(*x).mode = 1;
	(*x).type = typ;
	(*x).a = val;
}

void OSG_MakeItem (OSG_Item *x, ADDRESS *x__typ, OSG_Object y, INT32 curlev)
{
	INT32 r;
	(*x).mode = y->class;
	(*x).type = y->type;
	(*x).a = y->val;
	(*x).r = y->lev;
	if (y->class == 3) {
		(*x).b = 0;
	}
	if ((((y->lev > 0 && y->lev != curlev)) && y->class != 1)) {
		OSS_Mark((CHAR*)"level error", 12);
	}
}

void OSG_Field (OSG_Item *x, ADDRESS *x__typ, OSG_Object y)
{
	if ((*x).mode == 2 || (*x).mode == 11) {
		(*x).a = (*x).a + y->val;
	} else if ((*x).mode == 3) {
		OSG_Put2(0, OSG_RH, (*x).r, (*x).a);
		(*x).mode = 11;
		(*x).r = OSG_RH;
		(*x).a = y->val;
		OSG_incR();
	}
}

void OSG_Index (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	INT32 s;
	if ((*y).mode == 1) {
		if ((*y).a < 0 || (*y).a >= (*x).type->len) {
			OSS_Mark((CHAR*)"bad index", 10);
		}
		if ((*x).mode == 3) {
			OSG_Put2(0, OSG_RH, (*x).r, (*x).a);
			(*x).mode = 11;
			(*x).a = 0;
		}
		(*x).a = (*x).a + (*y).a * (*x).type->base->size;
	} else {
		s = (*x).type->base->size;
		if ((*y).mode != 10) {
			OSG_load(&*y, y__typ);
		}
		if (s == 4) {
			OSG_Put1(1, (*y).r, (*y).r, 2);
		} else {
			OSG_Put1(10, (*y).r, (*y).r, s);
		}
		if ((*x).mode == 2) {
			if ((*x).r > 0) {
				OSG_Put0(8, (*y).r, 14, (*y).r);
			} else {
				OSG_Put0(8, (*y).r, 13, (*y).r);
			}
			(*x).mode = 11;
			(*x).r = (*y).r;
		} else if ((*x).mode == 3) {
			OSG_Put2(0, OSG_RH, 14, (*x).a);
			OSG_Put0(8, (*y).r, OSG_RH, (*y).r);
			(*x).mode = 11;
			(*x).r = (*y).r;
		} else if ((*x).mode == 11) {
			OSG_Put0(8, (*x).r, (*x).r, (*y).r);
			OSG_RH -= 1;
		}
	}
}

void OSG_Not (OSG_Item *x, ADDRESS *x__typ)
{
	INT32 t;
	if ((*x).mode != 12) {
		OSG_loadCond(&*x, x__typ);
	}
	(*x).r = OSG_negated((*x).r);
	t = (*x).a;
	(*x).a = (*x).b;
	(*x).b = t;
}

void OSG_And1 (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).mode != 12) {
		OSG_loadCond(&*x, x__typ);
	}
	OSG_Put3(2, OSG_negated((*x).r), (*x).a);
	(*x).a = OSG_pc - 1;
	OSG_FixLink((*x).b);
	(*x).b = 0;
}

void OSG_And2 (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	if ((*y).mode != 12) {
		OSG_loadCond(&*y, y__typ);
	}
	(*x).a = OSG_merged((*y).a, (*x).a);
	(*x).b = (*y).b;
	(*x).r = (*y).r;
}

void OSG_Or1 (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).mode != 12) {
		OSG_loadCond(&*x, x__typ);
	}
	OSG_Put3(2, (*x).r, (*x).b);
	(*x).b = OSG_pc - 1;
	OSG_FixLink((*x).a);
	(*x).a = 0;
}

void OSG_Or2 (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	if ((*y).mode != 12) {
		OSG_loadCond(&*y, y__typ);
	}
	(*x).a = (*y).a;
	(*x).b = OSG_merged((*y).b, (*x).b);
	(*x).r = (*y).r;
}

void OSG_Neg (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).mode == 1) {
		(*x).a = -(*x).a;
	} else {
		OSG_load(&*x, x__typ);
		OSG_Put1(0, OSG_RH, 0, 0);
		OSG_Put0(9, (*x).r, OSG_RH, (*x).r);
	}
}

void OSG_AddOp (INT32 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	if (op == 6) {
		if (((*x).mode == 1 && (*y).mode == 1)) {
			(*x).a = (*x).a + (*y).a;
		} else if ((*y).mode == 1) {
			OSG_load(&*x, x__typ);
			if ((*y).a != 0) {
				OSG_Put1(8, (*x).r, (*x).r, (*y).a);
			}
		} else {
			OSG_load(&*x, x__typ);
			OSG_load(&*y, y__typ);
			OSG_Put0(8, OSG_RH - 2, (*x).r, (*y).r);
			OSG_RH -= 1;
			(*x).r = OSG_RH - 1;
		}
	} else {
		if (((*x).mode == 1 && (*y).mode == 1)) {
			(*x).a = (*x).a - (*y).a;
		} else if ((*y).mode == 1) {
			OSG_load(&*x, x__typ);
			if ((*y).a != 0) {
				OSG_Put1(9, (*x).r, (*x).r, (*y).a);
			}
		} else {
			OSG_load(&*x, x__typ);
			OSG_load(&*y, y__typ);
			OSG_Put0(9, OSG_RH - 2, (*x).r, (*y).r);
			OSG_RH -= 1;
			(*x).r = OSG_RH - 1;
		}
	}
}

void OSG_MulOp (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	if (((*x).mode == 1 && (*y).mode == 1)) {
		(*x).a = (*x).a * (*y).a;
	} else if (((*y).mode == 1 && (*y).a == 2)) {
		OSG_load(&*x, x__typ);
		OSG_Put1(1, (*x).r, (*x).r, 1);
	} else if ((*y).mode == 1) {
		OSG_load(&*x, x__typ);
		OSG_Put1(10, (*x).r, (*x).r, (*y).a);
	} else if ((*x).mode == 1) {
		OSG_load(&*y, y__typ);
		OSG_Put1(10, (*y).r, (*y).r, (*x).a);
		(*x).mode = 10;
		(*x).r = (*y).r;
	} else {
		OSG_load(&*x, x__typ);
		OSG_load(&*y, y__typ);
		OSG_Put0(10, OSG_RH - 2, (*x).r, (*y).r);
		OSG_RH -= 1;
		(*x).r = OSG_RH - 1;
	}
}

void OSG_DivOp (INT32 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	if (op == 3) {
		if (((*x).mode == 1 && (*y).mode == 1)) {
			if ((*y).a > 0) {
				(*x).a = __DIV((*x).a, (*y).a);
			} else {
				OSS_Mark((CHAR*)"bad divisor", 12);
			}
		} else if (((*y).mode == 1 && (*y).a == 2)) {
			OSG_load(&*x, x__typ);
			OSG_Put1(2, (*x).r, (*x).r, 1);
		} else if ((*y).mode == 1) {
			if ((*y).a > 0) {
				OSG_load(&*x, x__typ);
				OSG_Put1(11, (*x).r, (*x).r, (*y).a);
			} else {
				OSS_Mark((CHAR*)"bad divisor", 12);
			}
		} else {
			OSG_load(&*y, y__typ);
			OSG_load(&*x, x__typ);
			OSG_Put0(11, OSG_RH - 2, (*x).r, (*y).r);
			OSG_RH -= 1;
			(*x).r = OSG_RH - 1;
		}
	} else {
		if (((*x).mode == 1 && (*y).mode == 1)) {
			if ((*y).a > 0) {
				(*x).a = (int)__MOD((*x).a, (*y).a);
			} else {
				OSS_Mark((CHAR*)"bad modulus", 12);
			}
		} else if (((*y).mode == 1 && (*y).a == 2)) {
			OSG_load(&*x, x__typ);
			OSG_Put1(4, (*x).r, (*x).r, 1);
		} else if ((*y).mode == 1) {
			if ((*y).a > 0) {
				OSG_load(&*x, x__typ);
				OSG_Put1(11, (*x).r, (*x).r, (*y).a);
				OSG_Put0(8192, (*x).r, 0, 0);
			} else {
				OSS_Mark((CHAR*)"bad modulus", 12);
			}
		} else {
			OSG_load(&*y, y__typ);
			OSG_load(&*x, x__typ);
			OSG_Put0(11, OSG_RH - 2, (*x).r, (*y).r);
			OSG_Put0(8192, OSG_RH - 2, 0, 0);
			OSG_RH -= 1;
			(*x).r = OSG_RH - 1;
		}
	}
}

void OSG_Relation (INT16 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	if ((*y).mode == 1) {
		OSG_load(&*x, x__typ);
		OSG_Put1(9, (*x).r, (*x).r, (*y).a);
		OSG_RH -= 1;
	} else {
		OSG_load(&*x, x__typ);
		OSG_load(&*y, y__typ);
		OSG_Put0(9, (*x).r, (*x).r, (*y).r);
		OSG_RH -= 2;
	}
	OSG_SetCC(&*x, x__typ, OSG_relmap[__X(op - 9, 6)]);
}

void OSG_Store (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ)
{
	OSG_load(&*y, y__typ);
	if ((*x).mode == 2) {
		if ((*x).r > 0) {
			OSG_Put2(2, (*y).r, 14, (*x).a);
		} else {
			OSG_Put2(2, (*y).r, 13, (*x).a);
		}
	} else if ((*x).mode == 3) {
		OSG_Put2(0, OSG_RH, 14, (*x).a);
		OSG_Put2(2, (*y).r, OSG_RH, (*x).b);
	} else if ((*x).mode == 11) {
		OSG_Put2(2, (*y).r, (*x).r, (*x).a);
		OSG_RH -= 1;
	} else {
		OSS_Mark((CHAR*)"illegal assignment", 19);
	}
	OSG_RH -= 1;
}

void OSG_VarParam (OSG_Item *x, ADDRESS *x__typ, OSG_Type ftype)
{
	INT16 xmd;
	xmd = (*x).mode;
	OSG_loadAdr(&*x, x__typ);
	if ((ftype->form == 2 && ftype->len < 0)) {
		if ((*x).type->len >= 0) {
			OSG_Put1(0, OSG_RH, 0, (*x).type->len);
		} else {
			OSG_Put2(0, OSG_RH, 14, (*x).a + 4);
		}
		OSG_incR();
	} else if (ftype->form == 3) {
		if (xmd == 3) {
			OSG_Put2(0, OSG_RH, 14, (*x).a + 4);
			OSG_incR();
		}
	}
}

void OSG_ValueParam (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_load(&*x, x__typ);
}

void OSG_OpenArrayParam (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_loadAdr(&*x, x__typ);
	if ((*x).type->len >= 0) {
		OSG_Put1(0, OSG_RH, 0, (*x).type->len);
	} else {
		OSG_Put2(0, OSG_RH, 14, (*x).a + 4);
	}
	OSG_incR();
}

void OSG_CFJump (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).mode != 12) {
		OSG_loadCond(&*x, x__typ);
	}
	OSG_Put3(2, OSG_negated((*x).r), (*x).a);
	OSG_FixLink((*x).b);
	(*x).a = OSG_pc - 1;
}

void OSG_FJump (INT32 *L)
{
	OSG_Put3(2, 7, *L);
	*L = OSG_pc - 1;
}

void OSG_CBJump (OSG_Item *x, ADDRESS *x__typ, INT32 L)
{
	if ((*x).mode != 12) {
		OSG_loadCond(&*x, x__typ);
	}
	OSG_Put3(2, OSG_negated((*x).r), (L - OSG_pc) - 1);
}

void OSG_BJump (INT32 L)
{
	OSG_Put3(2, 7, (L - OSG_pc) - 1);
}

void OSG_Call (OSG_Object *obj)
{
	OSG_Put3(3, 7, ((*obj)->val - OSG_pc) - 1);
	OSG_RH = 0;
}

void OSG_Enter (INT32 parblksize, INT32 locblksize)
{
	INT32 a, r;
	a = 4;
	r = 0;
	OSG_Put1(9, 14, 14, locblksize);
	OSG_Put2(2, 15, 14, 0);
	while (a < parblksize) {
		OSG_Put2(2, r, 14, a);
		r += 1;
		a += 4;
	}
}

void OSG_Return (INT32 size)
{
	OSG_Put2(0, 15, 14, 0);
	OSG_Put1(8, 14, 14, size);
	OSG_Put3(0, 7, 15);
	OSG_RH = 0;
}

void OSG_Ord (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_load(&*x, x__typ);
	(*x).type = OSG_intType;
}

void OSG_ReadInt (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_loadAdr(&*x, x__typ);
	OSG_Put1(0, OSG_RH, 0, -4);
	OSG_Put2(0, OSG_RH, OSG_RH, 0);
	OSG_Put2(2, OSG_RH, (*x).r, 0);
	OSG_RH -= 1;
}

void OSG_eot (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_Put1(0, OSG_RH, 0, -8);
	OSG_Put2(0, OSG_RH, OSG_RH, 0);
	OSG_SetCC(&*x, x__typ, 1);
}

void OSG_WriteInt (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_load(&*x, x__typ);
	OSG_Put1(0, OSG_RH, 0, -4);
	OSG_Put2(2, (*x).r, OSG_RH, 0);
	OSG_RH -= 1;
}

void OSG_WriteChar (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_load(&*x, x__typ);
	OSG_Put1(0, OSG_RH, 0, -8);
	OSG_Put2(2, (*x).r, OSG_RH, 0);
	OSG_RH -= 1;
}

void OSG_WriteLn (void)
{
	OSG_Put1(0, OSG_RH, 0, -12);
	OSG_Put2(2, OSG_RH, OSG_RH, 0);
}

void OSG_Open (void)
{
	OSG_curlev = 0;
	OSG_pc = 0;
	OSG_RH = 0;
	OSG_Put3(2, 7, 0);
}

void OSG_Header (INT32 size)
{
	OSG_entry = OSG_pc;
	OSG_fix(0, OSG_pc - 1);
}

void OSG_Close (void)
{
	OSG_Put1(0, 0, 0, 0);
	OSG_Put3(0, 7, 0);
}

static void OSG_WriteReg (INT32 r)
{
	Texts_Write(&OSG_W, Texts_Writer__typ, ' ');
	if (r < 13) {
		Texts_Write(&OSG_W, Texts_Writer__typ, 'R');
		Texts_WriteInt(&OSG_W, Texts_Writer__typ, r, 1);
	} else if (r == 13) {
		Texts_WriteString(&OSG_W, Texts_Writer__typ, (CHAR*)"SB", 3);
	} else if (r == 14) {
		Texts_WriteString(&OSG_W, Texts_Writer__typ, (CHAR*)"SP", 3);
	} else if (r == 15) {
		Texts_WriteString(&OSG_W, Texts_Writer__typ, (CHAR*)"LNK", 4);
	}
}

void OSG_Decode (void)
{
	INT32 i, w, a, b, c, op;
	Texts_WriteHex(&OSG_W, Texts_Writer__typ, OSG_code[0]);
	Texts_WriteHex(&OSG_W, Texts_Writer__typ, OSG_code[1]);
	Texts_WriteLn(&OSG_W, Texts_Writer__typ);
	i = 0;
	while (i < OSG_pc) {
		w = OSG_code[__X(i, 8192)];
		a = __MASK(__ASHR(w, 24), -16);
		b = __MASK(__ASHR(w, 20), -16);
		Texts_WriteInt(&OSG_W, Texts_Writer__typ, i, 4);
		Texts_WriteHex(&OSG_W, Texts_Writer__typ, w);
		Texts_Write(&OSG_W, Texts_Writer__typ, 0x09);
		if (!__ODD(__ASHR((INT64)w, 31))) {
			op = __MASK(__ASHR(w, 16), -16);
			Texts_WriteString(&OSG_W, Texts_Writer__typ, OSG_mnemo0[__X(op, 16)], 4);
			OSG_WriteReg(a);
			OSG_WriteReg(b);
			if (!__ODD(__ASHR(w, 30))) {
				OSG_WriteReg(__MASK(w, -16));
			} else {
				c = __MASK(w, -65536);
				if (__ODD(__ASHR(w, 28))) {
					c = c + 268431360;
				}
				Texts_WriteInt(&OSG_W, Texts_Writer__typ, c, 8);
			}
		} else if (!__ODD(__ASHR(w, 30))) {
			if (__ODD(__ASHR(w, 29))) {
				Texts_WriteString(&OSG_W, Texts_Writer__typ, (CHAR*)"STW ", 5);
			} else {
				Texts_WriteString(&OSG_W, Texts_Writer__typ, (CHAR*)"LDW", 4);
			}
			OSG_WriteReg(a);
			OSG_WriteReg(b);
			Texts_WriteInt(&OSG_W, Texts_Writer__typ, __MASK(w, -1048576), 8);
		} else {
			Texts_Write(&OSG_W, Texts_Writer__typ, 'B');
			if (__ODD(__ASHR(w, 28))) {
				Texts_Write(&OSG_W, Texts_Writer__typ, 'L');
			}
			Texts_WriteString(&OSG_W, Texts_Writer__typ, OSG_mnemo1[__X(a, 16)], 4);
			if (!__ODD(__ASHR(w, 29))) {
				OSG_WriteReg(__MASK(w, -16));
			} else {
				w = __MASK(w, -16777216);
				if (w >= 8388608) {
					w = w - 16777216;
				}
				Texts_WriteInt(&OSG_W, Texts_Writer__typ, w, 8);
			}
		}
		Texts_WriteLn(&OSG_W, Texts_Writer__typ);
		i += 1;
	}
	Texts_WriteLn(&OSG_W, Texts_Writer__typ);
	Texts_Append(Oberon_Log, OSG_W.buf);
}

static CHAR OSG_HexCh (INT32 k)
{
	if (k >= 10) {
		k += 39;
	}
	return (CHAR)(k + 48);
}

void OSG_Execute (void)
{
	Texts_Scanner S;
	Texts_OpenScanner(&S, Texts_Scanner__typ, Oberon_Par->text, Oberon_Par->pos);
	RISC_Execute((void*)OSG_code, 8192, OSG_pc, &S, Texts_Scanner__typ, &OSG_W, Texts_Writer__typ);
}

static void EnumPtrs(void (*P)(void*))
{
	P(OSG_boolType);
	P(OSG_intType);
	__ENUMR(&OSG_W, Texts_Writer__typ, 56, 1, P);
}

__TDESC(OSG_Item, 1, 1) = {__TDFLDS("Item", 32), {8, -16}};
__TDESC(OSG_ObjDesc, 1, 3) = {__TDFLDS("ObjDesc", 56), {8, 16, 24, -32}};
__TDESC(OSG_TypeDesc, 1, 2) = {__TDFLDS("TypeDesc", 40), {8, 16, -24}};

export void *OSG__init(void)
{
	__DEFMOD;
	__MODULE_IMPORT(Files);
	__MODULE_IMPORT(OSS);
	__MODULE_IMPORT(Oberon);
	__MODULE_IMPORT(RISC);
	__MODULE_IMPORT(Texts);
	__REGMOD("OSG", EnumPtrs);
	__REGCMD("CheckRegs", OSG_CheckRegs);
	__REGCMD("Close", OSG_Close);
	__REGCMD("Decode", OSG_Decode);
	__REGCMD("Execute", OSG_Execute);
	__REGCMD("Open", OSG_Open);
	__REGCMD("WriteLn", OSG_WriteLn);
	__INITYP(OSG_Item, OSG_Item, 0);
	__INITYP(OSG_ObjDesc, OSG_ObjDesc, 0);
	__INITYP(OSG_TypeDesc, OSG_TypeDesc, 0);
/* BEGIN */
	Texts_OpenWriter(&OSG_W, Texts_Writer__typ);
	__NEW(OSG_boolType, OSG_TypeDesc);
	OSG_boolType->form = 0;
	OSG_boolType->size = 4;
	__NEW(OSG_intType, OSG_TypeDesc);
	OSG_intType->form = 1;
	OSG_intType->size = 4;
	OSG_relmap[0] = 1;
	OSG_relmap[1] = 9;
	OSG_relmap[2] = 5;
	OSG_relmap[3] = 6;
	OSG_relmap[4] = 14;
	OSG_relmap[5] = 13;
	__MOVE("MOV", OSG_mnemo0[0], 4);
	__MOVE("LSL", OSG_mnemo0[1], 4);
	__MOVE("ASR", OSG_mnemo0[2], 4);
	__MOVE("ROR", OSG_mnemo0[3], 4);
	__MOVE("AND", OSG_mnemo0[4], 4);
	__MOVE("ANN", OSG_mnemo0[5], 4);
	__MOVE("IOR", OSG_mnemo0[6], 4);
	__MOVE("XOR", OSG_mnemo0[7], 4);
	__MOVE("ADD", OSG_mnemo0[8], 4);
	__MOVE("SUB", OSG_mnemo0[9], 4);
	__MOVE("MUL", OSG_mnemo0[10], 4);
	__MOVE("DIV", OSG_mnemo0[11], 4);
	__MOVE("PL ", OSG_mnemo1[8], 4);
	__MOVE("MI ", OSG_mnemo1[0], 4);
	__MOVE("EQ ", OSG_mnemo1[1], 4);
	__MOVE("NE ", OSG_mnemo1[9], 4);
	__MOVE("LT ", OSG_mnemo1[5], 4);
	__MOVE("GE ", OSG_mnemo1[13], 4);
	__MOVE("LE ", OSG_mnemo1[6], 4);
	__MOVE("GT ", OSG_mnemo1[14], 4);
	__MOVE("NO ", OSG_mnemo1[15], 4);
	__ENDMOD;
}
