/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "OSG.h"
#include "OSS.h"
#include "Oberon.h"
#include "Texts.h"


static INT16 OSP_sym, OSP_level;
static OSG_Object OSP_topScope, OSP_universe, OSP_dummy;
static void (*OSP_expression1)(OSG_Item*, ADDRESS *);
static Texts_Writer OSP_W;


static void OSP_Check (INT16 s, CHAR *msg, ADDRESS msg__len);
static void OSP_CheckBool (OSG_Item *x, ADDRESS *x__typ);
static void OSP_CheckInt (OSG_Item *x, ADDRESS *x__typ);
static void OSP_CloseScope (void);
static BOOLEAN OSP_CompTypes (OSG_Type t0, OSG_Type t1);
export void OSP_Compile (void);
static void OSP_Declarations (INT32 *varsize);
static void OSP_FindField (OSG_Object *obj, OSG_Object list);
static void OSP_IdentList (INT16 class, OSG_Object *first);
static void OSP_Module (void);
static void OSP_NewObj (OSG_Object *obj, INT16 class);
static void OSP_OpenScope (void);
static void OSP_ParamList (OSG_Object *obj);
static void OSP_Parameter (OSG_Object par);
static void OSP_ProcedureDecl (void);
static void OSP_SimpleExpression (OSG_Item *x, ADDRESS *x__typ);
static void OSP_StandFunc (OSG_Item *x, ADDRESS *x__typ, INT32 fctno);
static void OSP_StandProc (INT32 pno);
static void OSP_StatSequence (void);
static void OSP_Type (OSG_Type *type);
static void OSP_enter (OSS_Ident name, INT16 cl, INT32 n, OSG_Type type);
static void OSP_expression (OSG_Item *x, ADDRESS *x__typ);
static void OSP_factor (OSG_Item *x, ADDRESS *x__typ);
static void OSP_find (OSG_Object *obj);
static void OSP_selector (OSG_Item *x, ADDRESS *x__typ);
static void OSP_term (OSG_Item *x, ADDRESS *x__typ);


static void OSP_NewObj (OSG_Object *obj, INT16 class)
{
	OSG_Object new = NIL, x = NIL;
	x = OSP_topScope;
	while ((x->next != NIL && __STRCMP(x->next->name, OSS_id) != 0)) {
		x = x->next;
	}
	if (x->next == NIL) {
		__NEW(new, OSG_ObjDesc);
		__MOVE(OSS_id, new->name, 16);
		new->class = class;
		new->next = NIL;
		x->next = new;
		*obj = new;
	} else {
		*obj = x->next;
		OSS_Mark((CHAR*)"mult def", 9);
	}
}

static void OSP_find (OSG_Object *obj)
{
	OSG_Object s = NIL, x = NIL;
	s = OSP_topScope;
	do {
		x = s->next;
		while ((x != NIL && __STRCMP(x->name, OSS_id) != 0)) {
			x = x->next;
		}
		s = s->dsc;
	} while (!(x != NIL || s == NIL));
	if (x == NIL) {
		x = OSP_dummy;
		OSS_Mark((CHAR*)"undef", 6);
	}
	*obj = x;
}

static void OSP_FindField (OSG_Object *obj, OSG_Object list)
{
	while ((list != NIL && __STRCMP(list->name, OSS_id) != 0)) {
		list = list->next;
	}
	if (list != NIL) {
		*obj = list;
	} else {
		OSS_Mark((CHAR*)"undef", 6);
		*obj = OSP_dummy;
	}
}

static void OSP_Check (INT16 s, CHAR *msg, ADDRESS msg__len)
{
	__DUP(msg, msg__len, CHAR);
	if (OSP_sym == s) {
		OSS_Get(&OSP_sym);
	} else {
		OSS_Mark(msg, msg__len);
	}
	__DEL(msg);
}

static void OSP_CheckInt (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).type->form != 1) {
		OSS_Mark((CHAR*)"not integer", 12);
	}
}

static void OSP_CheckBool (OSG_Item *x, ADDRESS *x__typ)
{
	if ((*x).type->form != 0) {
		OSS_Mark((CHAR*)"not Boolean", 12);
	}
}

static void OSP_OpenScope (void)
{
	OSG_Object s = NIL;
	__NEW(s, OSG_ObjDesc);
	s->class = 0;
	s->dsc = OSP_topScope;
	s->next = NIL;
	OSP_topScope = s;
}

static void OSP_CloseScope (void)
{
	OSP_topScope = OSP_topScope->dsc;
}

static void OSP_selector (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_Item y;
	OSG_Object obj = NIL;
	while (OSP_sym == 29 || OSP_sym == 18) {
		if (OSP_sym == 29) {
			OSS_Get(&OSP_sym);
			(*OSP_expression1)(&y, OSG_Item__typ);
			if ((*x).type->form == 2) {
				OSP_CheckInt(&y, OSG_Item__typ);
				OSG_Index(&*x, x__typ, &y, OSG_Item__typ);
				(*x).type = (*x).type->base;
			} else {
				OSS_Mark((CHAR*)"not an array", 13);
			}
			OSP_Check(45, (CHAR*)"no ]", 5);
		} else {
			OSS_Get(&OSP_sym);
			if (OSP_sym == 31) {
				if ((*x).type->form == 3) {
					OSP_FindField(&obj, (*x).type->dsc);
					OSS_Get(&OSP_sym);
					if (obj != NIL) {
						OSG_Field(&*x, x__typ, obj);
						(*x).type = obj->type;
					}
				} else {
					OSS_Mark((CHAR*)"not a record", 13);
				}
			} else {
				OSS_Mark((CHAR*)"ident\?", 7);
			}
		}
	}
}

static BOOLEAN OSP_CompTypes (OSG_Type t0, OSG_Type t1)
{
	return t0 == t1 || (((t0->form == 2 && t1->form == 2)) && OSP_CompTypes(t0->base, t1->base));
}

static void OSP_Parameter (OSG_Object par)
{
	OSG_Item x;
	BOOLEAN varpar;
	(*OSP_expression1)(&x, OSG_Item__typ);
	if (par != NIL) {
		varpar = par->class == 3;
		if (OSP_CompTypes(par->type, x.type)) {
			if (!varpar) {
				OSG_ValueParam(&x, OSG_Item__typ);
			} else {
				OSG_VarParam(&x, OSG_Item__typ, par->type);
			}
		} else if ((((((x.type->form == 2 && par->type->form == 2)) && x.type->base->form == par->type->base->form)) && par->type->len < 0)) {
			OSG_OpenArrayParam(&x, OSG_Item__typ);
		} else {
			OSS_Mark((CHAR*)"incompatible parameters", 24);
		}
	}
}

static void OSP_ParamList (OSG_Object *obj)
{
	INT16 n;
	OSG_Object par = NIL;
	par = (*obj)->dsc;
	n = 0;
	if (OSP_sym != 44) {
		OSP_Parameter(par);
		n = 1;
		while (OSP_sym <= 40) {
			OSP_Check(OSP_sym, (CHAR*)"comma\?", 7);
			if (par != NIL) {
				par = par->next;
			}
			n += 1;
			OSP_Parameter(par);
		}
		OSP_Check(44, (CHAR*)") missing", 10);
	} else {
		OSS_Get(&OSP_sym);
	}
	if (n < (*obj)->nofpar) {
		OSS_Mark((CHAR*)"too few params", 15);
	} else if (n > (*obj)->nofpar) {
		OSS_Mark((CHAR*)"too many params", 16);
	}
}

static void OSP_StandFunc (OSG_Item *x, ADDRESS *x__typ, INT32 fctno)
{
	OSG_Item y, z;
	if (OSP_sym == 28) {
		OSS_Get(&OSP_sym);
		if (fctno == 0) {
			(*OSP_expression1)(&*x, x__typ);
			OSG_Ord(&*x, x__typ);
		} else if (fctno == 1) {
			OSG_eot(&*x, x__typ);
		}
		if (OSP_sym == 44) {
			OSS_Get(&OSP_sym);
		} else {
			OSS_Mark((CHAR*)"rparen expected", 16);
		}
	} else {
		OSS_Mark((CHAR*)"param missing", 14);
		OSG_MakeConstItem(&*x, x__typ, OSG_intType, 0);
	}
}

static void OSP_factor (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_Object obj = NIL;
	if (OSP_sym < 20 || OSP_sym > 31) {
		OSS_Mark((CHAR*)"expression expected", 20);
		do {
			OSS_Get(&OSP_sym);
		} while (!((OSP_sym >= 21 && OSP_sym <= 31)));
	}
	if (OSP_sym == 31) {
		OSP_find(&obj);
		OSS_Get(&OSP_sym);
		if (obj->class == 7) {
			if (obj->type == NIL) {
				OSS_Mark((CHAR*)"not a function", 15);
				obj->type = OSG_intType;
			}
			OSP_StandFunc(&*x, x__typ, obj->val);
			(*x).type = obj->type;
		} else {
			OSG_MakeItem(&*x, x__typ, obj, OSP_level);
			OSP_selector(&*x, x__typ);
		}
	} else if (OSP_sym == 21) {
		OSG_MakeConstItem(&*x, x__typ, OSG_intType, OSS_val);
		OSS_Get(&OSP_sym);
	} else if (OSP_sym == 20) {
		OSG_MakeConstItem(&*x, x__typ, OSG_intType, OSS_val);
		OSS_Get(&OSP_sym);
	} else if (OSP_sym == 28) {
		OSS_Get(&OSP_sym);
		if (OSP_sym != 44) {
			(*OSP_expression1)(&*x, x__typ);
		}
		OSP_Check(44, (CHAR*)"no )", 5);
	} else if (OSP_sym == 27) {
		OSS_Get(&OSP_sym);
		OSP_factor(&*x, x__typ);
		OSP_CheckBool(&*x, x__typ);
		OSG_Not(&*x, x__typ);
	} else if (OSP_sym == 23) {
		OSS_Get(&OSP_sym);
		OSG_MakeConstItem(&*x, x__typ, OSG_boolType, 0);
	} else if (OSP_sym == 24) {
		OSS_Get(&OSP_sym);
		OSG_MakeConstItem(&*x, x__typ, OSG_boolType, 1);
	} else {
		OSS_Mark((CHAR*)"factor\?", 8);
		OSG_MakeItem(&*x, x__typ, OSP_dummy, OSP_level);
	}
}

static void OSP_term (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_Item y;
	INT16 op;
	OSP_factor(&*x, x__typ);
	while ((OSP_sym >= 1 && OSP_sym <= 5)) {
		op = OSP_sym;
		OSS_Get(&OSP_sym);
		if (op == 1) {
			OSP_CheckInt(&*x, x__typ);
			OSP_factor(&y, OSG_Item__typ);
			OSP_CheckInt(&y, OSG_Item__typ);
			OSG_MulOp(&*x, x__typ, &y, OSG_Item__typ);
		} else if (op == 3 || op == 4) {
			OSP_CheckInt(&*x, x__typ);
			OSP_factor(&y, OSG_Item__typ);
			OSP_CheckInt(&y, OSG_Item__typ);
			OSG_DivOp(op, &*x, x__typ, &y, OSG_Item__typ);
		} else {
			OSP_CheckBool(&*x, x__typ);
			OSG_And1(&*x, x__typ);
			OSP_factor(&y, OSG_Item__typ);
			OSP_CheckBool(&y, OSG_Item__typ);
			OSG_And2(&*x, x__typ, &y, OSG_Item__typ);
		}
	}
}

static void OSP_SimpleExpression (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_Item y;
	INT16 op;
	if (OSP_sym == 6) {
		OSS_Get(&OSP_sym);
		OSP_term(&*x, x__typ);
		OSP_CheckInt(&*x, x__typ);
	} else if (OSP_sym == 7) {
		OSS_Get(&OSP_sym);
		OSP_term(&*x, x__typ);
		OSP_CheckInt(&*x, x__typ);
		OSG_Neg(&*x, x__typ);
	} else {
		OSP_term(&*x, x__typ);
	}
	while ((OSP_sym >= 6 && OSP_sym <= 8)) {
		op = OSP_sym;
		OSS_Get(&OSP_sym);
		if (op == 8) {
			OSG_Or1(&*x, x__typ);
			OSP_CheckBool(&*x, x__typ);
			OSP_term(&y, OSG_Item__typ);
			OSP_CheckBool(&y, OSG_Item__typ);
			OSG_Or2(&*x, x__typ, &y, OSG_Item__typ);
		} else {
			OSP_CheckInt(&*x, x__typ);
			OSP_term(&y, OSG_Item__typ);
			OSP_CheckInt(&y, OSG_Item__typ);
			OSG_AddOp(op, &*x, x__typ, &y, OSG_Item__typ);
		}
	}
}

static void OSP_expression (OSG_Item *x, ADDRESS *x__typ)
{
	OSG_Item y;
	INT16 op;
	OSP_SimpleExpression(&*x, x__typ);
	if ((OSP_sym >= 9 && OSP_sym <= 14)) {
		op = OSP_sym;
		OSS_Get(&OSP_sym);
		OSP_SimpleExpression(&y, OSG_Item__typ);
		if ((*x).type == y.type) {
			OSG_Relation(op, &*x, x__typ, &y, OSG_Item__typ);
		} else {
			OSS_Mark((CHAR*)"incompatible types", 19);
		}
		(*x).type = OSG_boolType;
	}
}

static void OSP_StandProc (INT32 pno)
{
	OSG_Item x, y;
	if (OSP_sym == 28) {
		OSS_Get(&OSP_sym);
		OSP_expression(&x, OSG_Item__typ);
		if (pno == 0) {
			OSG_ReadInt(&x, OSG_Item__typ);
		} else if (pno == 1) {
			OSG_WriteInt(&x, OSG_Item__typ);
		} else if (pno == 2) {
			OSG_WriteChar(&x, OSG_Item__typ);
		} else {
			OSS_Mark((CHAR*)"no lparen", 10);
		}
		if (OSP_sym == 44) {
			OSS_Get(&OSP_sym);
		} else {
			OSS_Mark((CHAR*)"no rparen", 10);
		}
	} else if (pno == 3) {
		OSG_WriteLn();
	}
}

static void OSP_StatSequence (void)
{
	OSG_Object par = NIL, obj = NIL;
	OSG_Item x, y;
	INT32 n, L;
	do {
		obj = NIL;
		if (!((OSP_sym == 31 || (OSP_sym >= 32 && OSP_sym <= 35)) || OSP_sym >= 52)) {
			OSS_Mark((CHAR*)"statement expected", 19);
			do {
				OSS_Get(&OSP_sym);
			} while (!(OSP_sym == 31 || OSP_sym >= 32));
		}
		if (OSP_sym == 31) {
			OSP_find(&obj);
			OSS_Get(&OSP_sym);
			if (obj->class == 6) {
				OSP_StandProc(obj->val);
			} else {
				OSG_MakeItem(&x, OSG_Item__typ, obj, OSP_level);
				OSP_selector(&x, OSG_Item__typ);
				if (OSP_sym == 42) {
					OSS_Get(&OSP_sym);
					OSP_expression(&y, OSG_Item__typ);
					if ((__IN(x.type->form, 0x03, 32) && x.type->form == y.type->form)) {
						OSG_Store(&x, OSG_Item__typ, &y, OSG_Item__typ);
					} else {
						OSS_Mark((CHAR*)"incompatible assignment", 24);
					}
				} else if (OSP_sym == 9) {
					OSS_Mark((CHAR*)"should be :=", 13);
					OSS_Get(&OSP_sym);
					OSP_expression(&y, OSG_Item__typ);
				} else if (OSP_sym == 28) {
					OSS_Get(&OSP_sym);
					if ((obj->class == 8 && obj->type == NIL)) {
						OSP_ParamList(&obj);
						OSG_Call(&obj);
					} else {
						OSS_Mark((CHAR*)"not a procedure", 16);
					}
				} else if (obj->class == 8) {
					if (obj->nofpar > 0) {
						OSS_Mark((CHAR*)"missing parameters", 19);
					}
					if (obj->type == NIL) {
						OSG_Call(&obj);
					} else {
						OSS_Mark((CHAR*)"not a procedure", 16);
					}
				} else if ((obj->class == 6 && obj->val == 3)) {
					OSG_WriteLn();
				} else if (obj->class == 5) {
					OSS_Mark((CHAR*)"illegal assignment", 19);
				} else {
					OSS_Mark((CHAR*)"not a procedure", 16);
				}
			}
		} else if (OSP_sym == 32) {
			OSS_Get(&OSP_sym);
			OSP_expression(&x, OSG_Item__typ);
			OSP_CheckBool(&x, OSG_Item__typ);
			OSG_CFJump(&x, OSG_Item__typ);
			OSP_Check(47, (CHAR*)"no THEN", 8);
			OSP_StatSequence();
			L = 0;
			while (OSP_sym == 56) {
				OSS_Get(&OSP_sym);
				OSG_FJump(&L);
				OSG_FixLink(x.a);
				OSP_expression(&x, OSG_Item__typ);
				OSP_CheckBool(&x, OSG_Item__typ);
				OSG_CFJump(&x, OSG_Item__typ);
				if (OSP_sym == 47) {
					OSS_Get(&OSP_sym);
				} else {
					OSS_Mark((CHAR*)"THEN\?", 6);
				}
				OSP_StatSequence();
			}
			if (OSP_sym == 55) {
				OSS_Get(&OSP_sym);
				OSG_FJump(&L);
				OSG_FixLink(x.a);
				OSP_StatSequence();
			} else {
				OSG_FixLink(x.a);
			}
			OSG_FixLink(L);
			if (OSP_sym == 53) {
				OSS_Get(&OSP_sym);
			} else {
				OSS_Mark((CHAR*)"END\?", 5);
			}
		} else if (OSP_sym == 34) {
			OSS_Get(&OSP_sym);
			L = OSG_pc;
			OSP_expression(&x, OSG_Item__typ);
			OSP_CheckBool(&x, OSG_Item__typ);
			OSG_CFJump(&x, OSG_Item__typ);
			OSP_Check(49, (CHAR*)"no DO", 6);
			OSP_StatSequence();
			OSG_BJump(L);
			OSG_FixLink(x.a);
			OSP_Check(53, (CHAR*)"no END", 7);
		} else if (OSP_sym == 35) {
			OSS_Get(&OSP_sym);
			L = OSG_pc;
			OSP_StatSequence();
			if (OSP_sym == 57) {
				OSS_Get(&OSP_sym);
				OSP_expression(&x, OSG_Item__typ);
				OSP_CheckBool(&x, OSG_Item__typ);
				OSG_CBJump(&x, OSG_Item__typ, L);
			} else {
				OSS_Mark((CHAR*)"missing UNTIL", 14);
				OSS_Get(&OSP_sym);
			}
		}
		OSG_CheckRegs();
		if (OSP_sym == 52) {
			OSS_Get(&OSP_sym);
		} else if (OSP_sym < 52) {
			OSS_Mark((CHAR*)"missing semicolon\?", 19);
		}
	} while (!(OSP_sym > 52));
}

static void OSP_IdentList (INT16 class, OSG_Object *first)
{
	OSG_Object obj = NIL;
	if (OSP_sym == 31) {
		OSP_NewObj(&*first, class);
		OSS_Get(&OSP_sym);
		while (OSP_sym == 40) {
			OSS_Get(&OSP_sym);
			if (OSP_sym == 31) {
				OSP_NewObj(&obj, class);
				OSS_Get(&OSP_sym);
			} else {
				OSS_Mark((CHAR*)"ident\?", 7);
			}
		}
		OSP_Check(41, (CHAR*)"no :", 5);
	}
}

static void OSP_Type (OSG_Type *type)
{
	OSG_Object obj = NIL, first = NIL;
	OSG_Item x;
	OSG_Type tp = NIL;
	*type = OSG_intType;
	if ((OSP_sym != 31 && OSP_sym < 60)) {
		OSS_Mark((CHAR*)"type\?", 6);
		do {
			OSS_Get(&OSP_sym);
		} while (!(OSP_sym == 31 || OSP_sym >= 60));
	}
	if (OSP_sym == 31) {
		OSP_find(&obj);
		OSS_Get(&OSP_sym);
		if (obj->class == 5) {
			*type = obj->type;
		} else {
			OSS_Mark((CHAR*)"type\?", 6);
		}
	} else if (OSP_sym == 60) {
		OSS_Get(&OSP_sym);
		OSP_expression(&x, OSG_Item__typ);
		if (x.mode != 1 || x.a < 0) {
			OSS_Mark((CHAR*)"bad index", 10);
		}
		if (OSP_sym == 48) {
			OSS_Get(&OSP_sym);
		} else {
			OSS_Mark((CHAR*)"OF\?", 4);
		}
		OSP_Type(&tp);
		__NEW(*type, OSG_TypeDesc);
		(*type)->form = 2;
		(*type)->base = tp;
		(*type)->len = x.a;
		(*type)->size = (*type)->len * tp->size;
	} else if (OSP_sym == 61) {
		OSS_Get(&OSP_sym);
		__NEW(*type, OSG_TypeDesc);
		(*type)->form = 3;
		(*type)->size = 0;
		OSP_OpenScope();
		do {
			if (OSP_sym == 31) {
				OSP_IdentList(4, &first);
				OSP_Type(&tp);
				obj = first;
				while (obj != NIL) {
					obj->type = tp;
					obj->val = (*type)->size;
					(*type)->size = (*type)->size + obj->type->size;
					obj = obj->next;
				}
			}
			if (OSP_sym == 52) {
				OSS_Get(&OSP_sym);
			} else if (OSP_sym == 31) {
				OSS_Mark((CHAR*)"; \?", 4);
			}
		} while (!(OSP_sym != 31));
		(*type)->dsc = OSP_topScope->next;
		OSP_CloseScope();
		OSP_Check(53, (CHAR*)"no END", 7);
	} else {
		OSS_Mark((CHAR*)"ident\?", 7);
	}
}

static void OSP_Declarations (INT32 *varsize)
{
	OSG_Object obj = NIL, first = NIL;
	OSG_Item x;
	OSG_Type tp = NIL;
	INT32 L;
	if ((OSP_sym < 63 && OSP_sym != 53)) {
		OSS_Mark((CHAR*)"declaration\?", 13);
		do {
			OSS_Get(&OSP_sym);
		} while (!(OSP_sym >= 63 || OSP_sym == 53));
	}
	if (OSP_sym == 63) {
		OSS_Get(&OSP_sym);
		while (OSP_sym == 31) {
			OSP_NewObj(&obj, 1);
			OSS_Get(&OSP_sym);
			if (OSP_sym == 9) {
				OSS_Get(&OSP_sym);
			} else {
				OSS_Mark((CHAR*)"=\?", 3);
			}
			OSP_expression(&x, OSG_Item__typ);
			if (x.mode == 1) {
				obj->val = x.a;
				obj->type = x.type;
			} else {
				OSS_Mark((CHAR*)"expression not constant", 24);
			}
			OSP_Check(52, (CHAR*)"; expected", 11);
		}
	}
	if (OSP_sym == 64) {
		OSS_Get(&OSP_sym);
		while (OSP_sym == 31) {
			OSP_NewObj(&obj, 5);
			OSS_Get(&OSP_sym);
			if (OSP_sym == 9) {
				OSS_Get(&OSP_sym);
			} else {
				OSS_Mark((CHAR*)"=\?", 3);
			}
			OSP_Type(&obj->type);
			OSP_Check(52, (CHAR*)"; expected", 11);
		}
	}
	if (OSP_sym == 65) {
		OSS_Get(&OSP_sym);
		while (OSP_sym == 31) {
			OSP_IdentList(2, &first);
			OSP_Type(&tp);
			obj = first;
			while (obj != NIL) {
				obj->type = tp;
				obj->lev = OSP_level;
				obj->val = *varsize;
				*varsize = *varsize + obj->type->size;
				obj = obj->next;
			}
			OSP_Check(52, (CHAR*)"; expected", 11);
		}
	}
	if ((OSP_sym >= 63 && OSP_sym <= 65)) {
		OSS_Mark((CHAR*)"declaration in bad order", 25);
	}
}

static struct ProcedureDecl__15 {
	struct ProcedureDecl__15 *lnk;
} *ProcedureDecl__15_s;

static void FPSection__16 (INT32 *adr, INT16 *nofpar);

static void FPSection__16 (INT32 *adr, INT16 *nofpar)
{
	OSG_Object obj = NIL, first = NIL;
	OSG_Type tp = NIL;
	INT32 parsize;
	if (OSP_sym == 65) {
		OSS_Get(&OSP_sym);
		OSP_IdentList(3, &first);
	} else {
		OSP_IdentList(2, &first);
	}
	if (OSP_sym == 31) {
		OSP_find(&obj);
		OSS_Get(&OSP_sym);
		if (obj->class == 5) {
			tp = obj->type;
		} else {
			OSS_Mark((CHAR*)"type\?", 6);
			tp = OSG_intType;
		}
	} else {
		OSS_Mark((CHAR*)"ident\?", 7);
		tp = OSG_intType;
	}
	if (first->class == 2) {
		parsize = tp->size;
		if (tp->form >= 2) {
			OSS_Mark((CHAR*)"no struct params", 17);
		}
	} else {
		parsize = 4;
	}
	obj = first;
	while (obj != NIL) {
		*nofpar += 1;
		obj->type = tp;
		obj->lev = OSP_level;
		obj->val = *adr;
		*adr = *adr + parsize;
		obj = obj->next;
	}
}

static void OSP_ProcedureDecl (void)
{
	OSG_Object proc = NIL, obj = NIL;
	OSS_Ident procid;
	INT16 nofpar;
	INT32 locblksize, parblksize;
	struct ProcedureDecl__15 _s;
	_s.lnk = ProcedureDecl__15_s;
	ProcedureDecl__15_s = &_s;
	OSS_Get(&OSP_sym);
	if (OSP_sym == 31) {
		__MOVE(OSS_id, procid, 16);
		OSP_NewObj(&proc, 8);
		OSS_Get(&OSP_sym);
		parblksize = 4;
		nofpar = 0;
		OSP_OpenScope();
		OSP_level += 1;
		proc->val = -1;
		if (OSP_sym == 28) {
			OSS_Get(&OSP_sym);
			if (OSP_sym == 44) {
				OSS_Get(&OSP_sym);
			} else {
				FPSection__16(&parblksize, &nofpar);
				while (OSP_sym == 52) {
					OSS_Get(&OSP_sym);
					FPSection__16(&parblksize, &nofpar);
				}
				if (OSP_sym == 44) {
					OSS_Get(&OSP_sym);
				} else {
					OSS_Mark((CHAR*)")\?", 3);
				}
			}
		}
		locblksize = parblksize;
		proc->type = NIL;
		proc->dsc = OSP_topScope->next;
		proc->nofpar = nofpar;
		OSP_Check(52, (CHAR*)"; expected", 11);
		OSP_Declarations(&locblksize);
		proc->dsc = OSP_topScope->next;
		while (OSP_sym == 66) {
			OSP_ProcedureDecl();
			OSP_Check(52, (CHAR*)"; expected", 11);
		}
		proc->val = OSG_pc;
		OSG_Enter(parblksize, locblksize);
		if (OSP_sym == 67) {
			OSS_Get(&OSP_sym);
			OSP_StatSequence();
		}
		OSP_Check(53, (CHAR*)"no END", 7);
		if (OSP_sym == 31) {
			if (__STRCMP(procid, OSS_id) != 0) {
				OSS_Mark((CHAR*)"no match", 9);
			}
			OSS_Get(&OSP_sym);
		}
		OSG_Return(locblksize);
		OSP_level -= 1;
		OSP_CloseScope();
	}
	ProcedureDecl__15_s = _s.lnk;
}

static void OSP_Module (void)
{
	OSS_Ident modid;
	INT32 dc, tag;
	Texts_WriteString(&OSP_W, Texts_Writer__typ, (CHAR*)"  compiling ", 13);
	if (OSP_sym == 69) {
		OSS_Get(&OSP_sym);
		if (OSP_sym == 1) {
			tag = 1;
			OSS_Get(&OSP_sym);
		} else {
			tag = 0;
		}
		OSG_Open();
		OSP_OpenScope();
		dc = 0;
		OSP_level = 0;
		if (OSP_sym == 31) {
			__MOVE(OSS_id, modid, 16);
			OSS_Get(&OSP_sym);
			Texts_WriteString(&OSP_W, Texts_Writer__typ, modid, 16);
			Texts_WriteLn(&OSP_W, Texts_Writer__typ);
			Texts_Append(Oberon_Log, OSP_W.buf);
		} else {
			OSS_Mark((CHAR*)"ident\?", 7);
		}
		OSP_Check(52, (CHAR*)"; expected", 11);
		OSP_Declarations(&dc);
		while (OSP_sym == 66) {
			OSP_ProcedureDecl();
			OSP_Check(52, (CHAR*)"; expected", 11);
		}
		OSG_Header(dc);
		if (OSP_sym == 67) {
			OSS_Get(&OSP_sym);
			OSP_StatSequence();
		}
		OSP_Check(53, (CHAR*)"no END", 7);
		if (OSP_sym == 31) {
			if (__STRCMP(modid, OSS_id) != 0) {
				OSS_Mark((CHAR*)"no match", 9);
			}
			OSS_Get(&OSP_sym);
		} else {
			OSS_Mark((CHAR*)"ident\?", 7);
		}
		if (OSP_sym != 18) {
			OSS_Mark((CHAR*)". \?", 4);
		}
		OSP_CloseScope();
		if (!OSS_error) {
			OSG_Close();
			Texts_WriteString(&OSP_W, Texts_Writer__typ, (CHAR*)"code generated", 15);
			Texts_WriteInt(&OSP_W, Texts_Writer__typ, OSG_pc, 6);
			Texts_WriteInt(&OSP_W, Texts_Writer__typ, dc, 6);
			Texts_WriteLn(&OSP_W, Texts_Writer__typ);
			Texts_Append(Oberon_Log, OSP_W.buf);
		}
	} else {
		OSS_Mark((CHAR*)"MODULE\?", 8);
	}
}

void OSP_Compile (void)
{
	INT32 beg, end, time;
	Texts_Text T = NIL;
	Oberon_GetSelection(&T, &beg, &end, &time);
	if (time >= 0) {
		OSS_Init(T, beg);
		OSS_Get(&OSP_sym);
		OSP_Module();
	}
}

static void OSP_enter (OSS_Ident name, INT16 cl, INT32 n, OSG_Type type)
{
	OSG_Object obj = NIL;
	OSS_Ident name__copy;
	__DUPARR(name, OSS_Ident);
	__NEW(obj, OSG_ObjDesc);
	obj->class = cl;
	obj->val = n;
	__MOVE(name, obj->name, 16);
	obj->type = type;
	obj->dsc = NIL;
	obj->next = OSP_topScope->next;
	OSP_topScope->next = obj;
}

static void EnumPtrs(void (*P)(void*))
{
	P(OSP_topScope);
	P(OSP_universe);
	P(OSP_dummy);
	__ENUMR(&OSP_W, Texts_Writer__typ, 56, 1, P);
}


export void *OSP__init(void)
{
	__DEFMOD;
	__MODULE_IMPORT(OSG);
	__MODULE_IMPORT(OSS);
	__MODULE_IMPORT(Oberon);
	__MODULE_IMPORT(Texts);
	__REGMOD("OSP", EnumPtrs);
	__REGCMD("Compile", OSP_Compile);
/* BEGIN */
	Texts_OpenWriter(&OSP_W, Texts_Writer__typ);
	Texts_WriteString(&OSP_W, Texts_Writer__typ, (CHAR*)"Oberon-0 Compiler OSP  30.10.2013", 34);
	Texts_WriteLn(&OSP_W, Texts_Writer__typ);
	Texts_Append(Oberon_Log, OSP_W.buf);
	__NEW(OSP_dummy, OSG_ObjDesc);
	OSP_dummy->class = 2;
	OSP_dummy->type = OSG_intType;
	OSP_dummy->val = 0;
	OSP_topScope = NIL;
	OSP_OpenScope();
	OSP_expression1 = OSP_expression;
	OSP_enter((CHAR*)"eot", 7, 1, OSG_boolType);
	OSP_enter((CHAR*)"ReadInt", 6, 0, NIL);
	OSP_enter((CHAR*)"WriteInt", 6, 1, NIL);
	OSP_enter((CHAR*)"WriteChar", 6, 2, NIL);
	OSP_enter((CHAR*)"WriteLn", 6, 3, NIL);
	OSP_enter((CHAR*)"ORD", 7, 0, OSG_intType);
	OSP_enter((CHAR*)"BOOLEAN", 5, 0, OSG_boolType);
	OSP_enter((CHAR*)"INTEGER", 5, 1, OSG_intType);
	OSP_universe = OSP_topScope;
	__ENDMOD;
}
