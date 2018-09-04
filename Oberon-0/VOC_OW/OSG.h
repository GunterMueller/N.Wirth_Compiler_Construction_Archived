/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#ifndef OSG__h
#define OSG__h

#include "SYSTEM.h"
#include "OSS.h"

typedef
	struct OSG_TypeDesc *OSG_Type;

typedef
	struct OSG_Item {
		INT16 mode, lev;
		OSG_Type type;
		INT32 a;
		char _prvt0[8];
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


import OSG_Type OSG_boolType, OSG_intType;
import INT16 OSG_curlev, OSG_pc;
import INT32 OSG_code[8192];

import ADDRESS *OSG_Item__typ;
import ADDRESS *OSG_ObjDesc__typ;
import ADDRESS *OSG_TypeDesc__typ;

import void OSG_AddOp (INT32 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_And1 (OSG_Item *x, ADDRESS *x__typ);
import void OSG_And2 (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_BJump (INT32 L);
import void OSG_CBJump (OSG_Item *x, ADDRESS *x__typ, INT32 L);
import void OSG_CFJump (OSG_Item *x, ADDRESS *x__typ);
import void OSG_Call (OSG_Object *obj);
import void OSG_CheckRegs (void);
import void OSG_Close (void);
import void OSG_Decode (void);
import void OSG_DivOp (INT32 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_Enter (INT32 parblksize, INT32 locblksize);
import void OSG_Execute (void);
import void OSG_FJump (INT32 *L);
import void OSG_Field (OSG_Item *x, ADDRESS *x__typ, OSG_Object y);
import void OSG_FixLink (INT32 L);
import void OSG_Header (INT32 size);
import void OSG_IncLevel (INT16 n);
import void OSG_Index (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_MakeConstItem (OSG_Item *x, ADDRESS *x__typ, OSG_Type typ, INT32 val);
import void OSG_MakeItem (OSG_Item *x, ADDRESS *x__typ, OSG_Object y, INT32 curlev);
import void OSG_MulOp (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_Neg (OSG_Item *x, ADDRESS *x__typ);
import void OSG_Not (OSG_Item *x, ADDRESS *x__typ);
import void OSG_Open (void);
import void OSG_OpenArrayParam (OSG_Item *x, ADDRESS *x__typ);
import void OSG_Or1 (OSG_Item *x, ADDRESS *x__typ);
import void OSG_Or2 (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_Ord (OSG_Item *x, ADDRESS *x__typ);
import void OSG_ReadInt (OSG_Item *x, ADDRESS *x__typ);
import void OSG_Relation (INT16 op, OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_Return (INT32 size);
import void OSG_Store (OSG_Item *x, ADDRESS *x__typ, OSG_Item *y, ADDRESS *y__typ);
import void OSG_ValueParam (OSG_Item *x, ADDRESS *x__typ);
import void OSG_VarParam (OSG_Item *x, ADDRESS *x__typ, OSG_Type ftype);
import void OSG_WriteChar (OSG_Item *x, ADDRESS *x__typ);
import void OSG_WriteInt (OSG_Item *x, ADDRESS *x__typ);
import void OSG_WriteLn (void);
import void OSG_eot (OSG_Item *x, ADDRESS *x__typ);
import void *OSG__init(void);


#endif // OSG
