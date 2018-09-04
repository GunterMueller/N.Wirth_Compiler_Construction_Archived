/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#ifndef OSS__h
#define OSS__h

#include "SYSTEM.h"
#include "Texts.h"

typedef
	CHAR OSS_Ident[16];


import INT32 OSS_val;
import OSS_Ident OSS_id;
import BOOLEAN OSS_error;


import void OSS_Get (INT16 *sym);
import void OSS_Init (Texts_Text T, INT32 pos);
import void OSS_Mark (CHAR *msg, ADDRESS msg__len);
import void *OSS__init(void);


#endif // OSS
