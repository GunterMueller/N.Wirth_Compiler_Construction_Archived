
CALLING THE COMPILER
       The easiest way to do this is to let the ack(1) program do it.  So,  to
       compile a program module "prog.mod", just call
            ack -mmach prog.mod [ objects of implementation modules ]
                 or
            mach prog.mod [ objects of implementation modules ]
       where mach is one of the target machines of ACK.

       To  compile an implementation module, use the -c flag to produce a ".o"
       file.  Definition modules can not be compiled; the compiler reads  them
       when they are needed.

       For more details on the ack program see ack(1).

