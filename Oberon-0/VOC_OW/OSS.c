/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "Oberon.h"
#include "Texts.h"

struct OSS__1 {
	INT16 sym;
	CHAR id[12];
};

typedef
	CHAR OSS_Ident[16];


export INT32 OSS_val;
export OSS_Ident OSS_id;
export BOOLEAN OSS_error;
static CHAR OSS_ch;
static INT16 OSS_nkw;
static INT32 OSS_errpos;
static Texts_Reader OSS_R;
static Texts_Writer OSS_W;
static struct OSS__1 OSS_keyTab[34];

export ADDRESS *OSS__1__typ;

static void OSS_EnterKW (INT16 sym, CHAR *name, ADDRESS name__len);
export void OSS_Get (INT16 *sym);
static void OSS_Identifier (INT16 *sym);
export void OSS_Init (Texts_Text T, INT32 pos);
export void OSS_Mark (CHAR *msg, ADDRESS msg__len);
static void OSS_Number (INT16 *sym);
static void OSS_comment (void);


void OSS_Mark (CHAR *msg, ADDRESS msg__len)
{
	INT32 p;
	__DUP(msg, msg__len, CHAR);
	p = Texts_Pos(&OSS_R, Texts_Reader__typ) - 1;
	if (p > OSS_errpos) {
		Texts_WriteString(&OSS_W, Texts_Writer__typ, (CHAR*)"  pos ", 7);
		Texts_WriteInt(&OSS_W, Texts_Writer__typ, p, 1);
		Texts_Write(&OSS_W, Texts_Writer__typ, ' ');
		Texts_WriteString(&OSS_W, Texts_Writer__typ, msg, msg__len);
		Texts_WriteLn(&OSS_W, Texts_Writer__typ);
		Texts_Append(Oberon_Log, OSS_W.buf);
	}
	OSS_errpos = p;
	OSS_error = 1;
	__DEL(msg);
}

static void OSS_Identifier (INT16 *sym)
{
	INT16 i, k;
	i = 0;
	do {
		if (i < 16) {
			OSS_id[__X(i, 16)] = OSS_ch;
			i += 1;
		}
		Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
	} while (!(((OSS_ch < '0' || (OSS_ch > '9' && OSS_ch < 'A')) || (OSS_ch > 'Z' && OSS_ch < 'a')) || OSS_ch > 'z'));
	OSS_id[__X(i, 16)] = 0x00;
	k = 0;
	while ((k < OSS_nkw && __STRCMP(OSS_id, OSS_keyTab[__X(k, 34)].id) != 0)) {
		k += 1;
	}
	if (k < OSS_nkw) {
		*sym = OSS_keyTab[__X(k, 34)].sym;
	} else {
		*sym = 31;
	}
}

static void OSS_Number (INT16 *sym)
{
	OSS_val = 0;
	*sym = 21;
	do {
		if (OSS_val <= __DIV((2147483647 - OSS_ch) + 48, 10)) {
			OSS_val = 10 * OSS_val + ((INT16)OSS_ch - 48);
		} else {
			OSS_Mark((CHAR*)"number too large", 17);
			OSS_val = 0;
		}
		Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
	} while (!(OSS_ch < '0' || OSS_ch > '9'));
}

static void OSS_comment (void)
{
	do {
		do {
			Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
			while (OSS_ch == '(') {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				if (OSS_ch == '*') {
					OSS_comment();
				}
			}
		} while (!(OSS_ch == '*' || OSS_R.eot));
		do {
			Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
		} while (!(OSS_ch != '*' || OSS_R.eot));
	} while (!(OSS_ch == ')' || OSS_R.eot));
	if (!OSS_R.eot) {
		Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
	} else {
		OSS_Mark((CHAR*)"comment not terminated", 23);
	}
}

void OSS_Get (INT16 *sym)
{
	do {
		while ((!OSS_R.eot && OSS_ch <= ' ')) {
			Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
		}
		if (OSS_ch < 'A') {
			if (OSS_ch < '0') {
				if (OSS_ch == '"') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					OSS_val = (INT16)OSS_ch;
					do {
						Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					} while (!(OSS_ch == '"' || OSS_R.eot));
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 20;
				} else if (OSS_ch == '#') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 10;
				} else if (OSS_ch == '&') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 5;
				} else if (OSS_ch == '(') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					if (OSS_ch == '*') {
						*sym = 0;
						OSS_comment();
					} else {
						*sym = 28;
					}
				} else if (OSS_ch == ')') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 44;
				} else if (OSS_ch == '*') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 1;
				} else if (OSS_ch == '+') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 6;
				} else if (OSS_ch == ',') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 40;
				} else if (OSS_ch == '-') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 7;
				} else if (OSS_ch == '.') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 18;
				} else if (OSS_ch == '/') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 0;
				} else {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 0;
				}
			} else if (OSS_ch < ':') {
				OSS_Number(&*sym);
			} else if (OSS_ch == ':') {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				if (OSS_ch == '=') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 42;
				} else {
					*sym = 41;
				}
			} else if (OSS_ch == ';') {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				*sym = 52;
			} else if (OSS_ch == '<') {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				if (OSS_ch == '=') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 12;
				} else {
					*sym = 11;
				}
			} else if (OSS_ch == '=') {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				*sym = 9;
			} else if (OSS_ch == '>') {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				if (OSS_ch == '=') {
					Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
					*sym = 14;
				} else {
					*sym = 13;
				}
			} else {
				Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
				*sym = 0;
			}
		} else if (OSS_ch < '[') {
			OSS_Identifier(&*sym);
		} else if (OSS_ch < 'a') {
			if (OSS_ch == '[') {
				*sym = 29;
			} else if (OSS_ch == ']') {
				*sym = 45;
			} else if (OSS_ch == '^') {
				*sym = 0;
			} else {
				*sym = 0;
			}
			Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
		} else if (OSS_ch < '{') {
			OSS_Identifier(&*sym);
		} else {
			if (OSS_ch == '{') {
				*sym = 0;
			} else if (OSS_ch == '}') {
				*sym = 0;
			} else if (OSS_ch == '|') {
				*sym = 0;
			} else if (OSS_ch == '~') {
				*sym = 27;
			} else {
				*sym = 0;
			}
			Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
		}
	} while (!(*sym != 0));
}

void OSS_Init (Texts_Text T, INT32 pos)
{
	OSS_error = 0;
	OSS_errpos = pos;
	Texts_OpenReader(&OSS_R, Texts_Reader__typ, T, pos);
	Texts_Read(&OSS_R, Texts_Reader__typ, &OSS_ch);
}

static void OSS_EnterKW (INT16 sym, CHAR *name, ADDRESS name__len)
{
	__DUP(name, name__len, CHAR);
	OSS_keyTab[__X(OSS_nkw, 34)].sym = sym;
	__COPY(name, OSS_keyTab[__X(OSS_nkw, 34)].id, 12);
	OSS_nkw += 1;
	__DEL(name);
}

static void EnumPtrs(void (*P)(void*))
{
	__ENUMR(&OSS_R, Texts_Reader__typ, 72, 1, P);
	__ENUMR(&OSS_W, Texts_Writer__typ, 56, 1, P);
}

__TDESC(OSS__1, 1, 0) = {__TDFLDS("", 14), {-8}};

export void *OSS__init(void)
{
	__DEFMOD;
	__MODULE_IMPORT(Oberon);
	__MODULE_IMPORT(Texts);
	__REGMOD("OSS", EnumPtrs);
	__INITYP(OSS__1, OSS__1, 0);
/* BEGIN */
	Texts_OpenWriter(&OSS_W, Texts_Writer__typ);
	OSS_error = 1;
	OSS_nkw = 0;
	OSS_EnterKW(60, (CHAR*)"ARRAY", 6);
	OSS_EnterKW(67, (CHAR*)"BEGIN", 6);
	OSS_EnterKW(0, (CHAR*)"BY", 3);
	OSS_EnterKW(63, (CHAR*)"CONST", 6);
	OSS_EnterKW(3, (CHAR*)"DIV", 4);
	OSS_EnterKW(49, (CHAR*)"DO", 3);
	OSS_EnterKW(55, (CHAR*)"ELSE", 5);
	OSS_EnterKW(56, (CHAR*)"ELSIF", 6);
	OSS_EnterKW(53, (CHAR*)"END", 4);
	OSS_EnterKW(23, (CHAR*)"FALSE", 6);
	OSS_EnterKW(0, (CHAR*)"FOR", 4);
	OSS_EnterKW(32, (CHAR*)"IF", 3);
	OSS_EnterKW(0, (CHAR*)"IMPORT", 7);
	OSS_EnterKW(0, (CHAR*)"IN", 3);
	OSS_EnterKW(0, (CHAR*)"IS", 3);
	OSS_EnterKW(4, (CHAR*)"MOD", 4);
	OSS_EnterKW(69, (CHAR*)"MODULE", 7);
	OSS_EnterKW(0, (CHAR*)"NIL", 4);
	OSS_EnterKW(48, (CHAR*)"OF", 3);
	OSS_EnterKW(8, (CHAR*)"OR", 3);
	OSS_EnterKW(0, (CHAR*)"POINTER", 8);
	OSS_EnterKW(66, (CHAR*)"PROCEDURE", 10);
	OSS_EnterKW(61, (CHAR*)"RECORD", 7);
	OSS_EnterKW(35, (CHAR*)"REPEAT", 7);
	OSS_EnterKW(0, (CHAR*)"RETURN", 7);
	OSS_EnterKW(47, (CHAR*)"THEN", 5);
	OSS_EnterKW(0, (CHAR*)"TO", 3);
	OSS_EnterKW(24, (CHAR*)"TRUE", 5);
	OSS_EnterKW(64, (CHAR*)"TYPE", 5);
	OSS_EnterKW(57, (CHAR*)"UNTIL", 6);
	OSS_EnterKW(65, (CHAR*)"VAR", 4);
	OSS_EnterKW(34, (CHAR*)"WHILE", 6);
	__ENDMOD;
}
