/* voc 2.1.0 [2018/08/16] for gcc LP64 on cygwin xtpamv */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "Args.h"
#include "Files.h"
#include "OSG.h"
#include "OSP.h"
#include "OSS.h"
#include "Oberon.h"
#include "Out.h"
#include "oocStrings.h"
#include "Texts.h"




static void Oberon0_Help (void);
static void Oberon0_Main (void);


static void Oberon0_Help (void)
{
	Out_String((CHAR*)"Oberon-07 compiler v1.0", 24);
	Out_Ln();
	Out_Ln();
	Out_String((CHAR*)"Usage: oberonc outputFolder sourceFile1.Mod[+] sourceFile2.Mod[+] ...", 70);
	Out_Ln();
	Out_Ln();
	Out_String((CHAR*)"It compiles the list of provided source module files and places the generated", 78);
	Out_Ln();
	Out_String((CHAR*)"classes in the existing 'outputFolder'.", 40);
	Out_Ln();
	Out_String((CHAR*)"The optional suffix '+' allows the compiler to create a new symbol file. If this", 81);
	Out_Ln();
	Out_String((CHAR*)"option is not specified, a change in the interface of the module results in a", 78);
	Out_Ln();
	Out_String((CHAR*)"compilation error.", 19);
	Out_Ln();
}

static void Oberon0_Main (void)
{
	INT16 i, len, n;
	CHAR folder[200], arg[200];
	BOOLEAN newSym;
	Files_File f = NIL;
	INT32 argnum;
	INT16 count;
	INT64 argvec;
	CHAR currvar[32];
	INT16 _for__3;
	argnum = Args_argc;
	argvec = Args_argv;
	count = 0;
	if (argnum < 2) {
		Oberon0_Help();
	} else {
		_for__3 = n - 1;
		i = 1;
		while (i <= _for__3) {
			len = oocStrings_Length(arg, 200);
			if (arg[__X(len - 1, 200)] == '+') {
				newSym = 1;
				arg[__X(len - 1, 200)] = 0x00;
			}
			OSP_Compile();
			i += 1;
		}
	}
}


export int main(int argc, char **argv)
{
	__INIT(argc, argv);
	__MODULE_IMPORT(Args);
	__MODULE_IMPORT(Files);
	__MODULE_IMPORT(OSG);
	__MODULE_IMPORT(OSP);
	__MODULE_IMPORT(OSS);
	__MODULE_IMPORT(Oberon);
	__MODULE_IMPORT(Out);
	__MODULE_IMPORT(oocStrings);
	__MODULE_IMPORT(Texts);
	__REGMAIN("Oberon0", 0);
/* BEGIN */
	__FINI;
}
