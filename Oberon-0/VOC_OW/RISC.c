/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "Oberon.h"
#include "Texts.h"


static INT32 RISC_IR, RISC_PC;
static BOOLEAN RISC_N, RISC_Z;
static INT32 RISC_R[16];
static INT32 RISC_H;


export void RISC_Execute (INT32 *M, ADDRESS M__len, INT32 pc, Texts_Scanner *S, ADDRESS *S__typ, Texts_Writer *W, ADDRESS *W__typ);


void RISC_Execute (INT32 *M, ADDRESS M__len, INT32 pc, Texts_Scanner *S, ADDRESS *S__typ, Texts_Writer *W, ADDRESS *W__typ)
{
	INT32 a, b, op, im, adr, A, B, C, MemSize;
	RISC_PC = 0;
	RISC_R[13] = __ASHL(pc, 2);
	RISC_R[14] = __ASHL(M__len, 2);
	do {
		RISC_IR = M[__X(RISC_PC, M__len)];
		RISC_PC += 1;
		a = __MASK(__ASHR(RISC_IR, 24), -16);
		b = __MASK(__ASHR(RISC_IR, 20), -16);
		op = __MASK(__ASHR(RISC_IR, 16), -16);
		im = __MASK(RISC_IR, -65536);
		if (!__ODD(__ASHR(RISC_IR, 31))) {
			B = RISC_R[__X(b, 16)];
			if (!__ODD(__ASHR(RISC_IR, 30))) {
				C = RISC_R[__X(__MASK(RISC_IR, -16), 16)];
			} else if (!__ODD(__ASHR(RISC_IR, 28))) {
				C = im;
			} else {
				C = im + 268431360;
			}
			switch (op) {
				case 0: 
					if (!__ODD(__ASHR(RISC_IR, 29))) {
						A = C;
					} else {
						A = RISC_H;
					}
					break;
				case 1: 
					A = __LSH(B, C, 32);
					break;
				case 2: 
					A = __ASH(B, -C);
					break;
				case 3: 
					A = __ROT(B, -C, 32);
					break;
				case 4: 
					A = (INT32)(((UINT32)B & (UINT32)C));
					break;
				case 5: 
					A = (INT32)(((UINT32)B & ~(UINT32)C));
					break;
				case 6: 
					A = (INT32)((UINT32)B | (UINT32)C);
					break;
				case 7: 
					A = (INT32)((UINT32)B ^ (UINT32)C);
					break;
				case 8: 
					A = B + C;
					break;
				case 9: 
					A = B - C;
					break;
				case 10: 
					A = B * C;
					break;
				case 11: 
					A = __DIV(B, C);
					RISC_H = (int)__MOD(B, C);
					break;
				default: __CASECHK;
			}
			RISC_R[__X(a, 16)] = A;
			RISC_N = A < 0;
			RISC_Z = A == 0;
		} else if (!__ODD(__ASHR(RISC_IR, 30))) {
			adr = __ASHR(RISC_R[__X(b, 16)] + __MASK(RISC_IR, -1048576), 2);
			if (!__ODD(__ASHR(RISC_IR, 29))) {
				if (adr >= 0) {
					RISC_R[__X(a, 16)] = M[__X(adr, M__len)];
					RISC_N = A < 0;
					RISC_Z = A == 0;
				} else {
					if (adr == -1) {
						Texts_Scan(&*S, S__typ);
						RISC_R[__X(a, 16)] = (*S).i;
					} else if (adr == -2) {
						RISC_Z = (*S).class != 3;
					}
				}
			} else {
				if (adr >= 0) {
					M[__X(adr, M__len)] = RISC_R[__X(a, 16)];
				} else {
					if (adr == -1) {
						Texts_WriteInt(&*W, W__typ, RISC_R[__X(a, 16)], 4);
					} else if (adr == -2) {
						Texts_Write(&*W, W__typ, (CHAR)__MASK(RISC_R[__X(a, 16)], -128));
					} else if (adr == -3) {
						Texts_WriteLn(&*W, W__typ);
						Texts_Append(Oberon_Log, (*W).buf);
					}
				}
			}
		} else {
			if (((((((((a == 0 && RISC_N) || (a == 1 && RISC_Z)) || (a == 5 && RISC_N)) || (a == 6 && (RISC_N || RISC_Z))) || a == 7) || (a == 8 && !RISC_N)) || (a == 9 && !RISC_Z)) || (a == 13 && !RISC_N)) || (a == 14 && !(RISC_N || RISC_Z))) {
				if (__ODD(__ASHR(RISC_IR, 28))) {
					RISC_R[15] = __ASHL(RISC_PC, 2);
				}
				if (__ODD(__ASHR(RISC_IR, 29))) {
					RISC_PC = __MASK(RISC_PC + __MASK(RISC_IR, -16777216), -262144);
				} else {
					RISC_PC = __ASHR(RISC_R[__X(__MASK(RISC_IR, -16), 16)], 2);
				}
			}
		}
	} while (!(RISC_PC == 0));
	Texts_Append(Oberon_Log, (*W).buf);
}


export void *RISC__init(void)
{
	__DEFMOD;
	__MODULE_IMPORT(Oberon);
	__MODULE_IMPORT(Texts);
	__REGMOD("RISC", 0);
/* BEGIN */
	__ENDMOD;
}
