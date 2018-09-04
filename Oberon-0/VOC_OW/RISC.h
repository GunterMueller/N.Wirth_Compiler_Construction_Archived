/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpav */

#ifndef RISC__h
#define RISC__h

#include "SYSTEM.h"
#include "Texts.h"




import void RISC_Execute (INT32 *M, ADDRESS M__len, INT32 pc, Texts_Scanner *S, ADDRESS *S__typ, Texts_Writer *W, ADDRESS *W__typ);
import void *RISC__init(void);


#endif // RISC
