   MODULE RISC; (*NW 27. 11. 05*)
     IMPORT SYSTEM, Texts;
     CONST MemSize* = 4096; ProgOrg = 2048; (*in bytes*)
       MOV = 0; MVN = 1; ADD = 2; SUB = 3; MUL = 4; Div = 5; Mod = 6; CMP = 7;
       MOVI = 16; MVNI = 17; ADDI = 18; SUBI = 19; MULI = 20; DIVI = 21; 
       MODI = 22; CMPI = 23; CHKI = 24;
       LDW = 32; LDB = 33; POP = 34; STW = 36; STB = 37; PSH = 38;
       RD = 40; WRD= 41; WRH = 42; WRL = 43;
       BEQ = 48; BNE = 49; BLT = 50; BGE = 51; BLE = 52; BGT = 53; BR = 56; 
       BSR = 57; RET = 58;

     VAR IR: LONGINT;
       N, Z: BOOLEAN;
       R*: ARRAY 16 OF LONGINT;
       M*: ARRAY MemSize DIV 4 OF LONGINT;
       W: Texts.Writer;
       (* R[15] есть PC, R[14] используется как регистр связи при команде BSR *)

     PROCEDURE Execute*(start: LONGINT; VAR in: Texts.Scanner; out: Texts.Text);
       VAR opc, a, b, c, nxt: LONGINT;
     BEGIN R[14] := 0; R[15] := start + ProgOrg;
       LOOP (* цикл интепретации *)
         nxt := R[15] + 4; IR := M[R[15] DIV 4];
         opc := IR DIV 4000000H MOD 40H;
         a := IR DIV 400000H MOD 10H;
         b := IR DIV 40000H MOD 10H;
         c := IR MOD 40000H;
         IF opc < MOVI THEN (*F0*) c := R[IR MOD 10H]
         ELSIF opc < BEQ THEN
           (*F1, F2*) c := IR MOD 40000H;
           IF c >= 20000H THEN DEC(c, 40000H) END (*расширение знака*)
         ELSE (*F3*) c := IR MOD 4000000H;
           IF c >= 2000000H THEN DEC(c, 4000000H) END (*расширение знака*)
         END ;
         CASE opc OF
           MOV, MOVI: R[a] := ASH(c, b) (*арифметический сдвиг*)
         | MVN, MVNI: R[a] := -ASH(c, b)
         | ADD, ADDI: R[a] := R[b] + c
         | SUB, SUBI: R[a] := R[b] - c
         | MUL, MULI: R[a] := R[b] * c
         | Div, DIVI: R[a] := R[b] DIV c
         | Mod, MODI: R[a] := R[b] MOD c
         | CMP, CMPI: Z := R[b] = c; N := R[b] < c
         | CHKI: IF (R[a] < 0) OR (R[a] >= c) THEN R[a] := 0 END
         | LDW: R[a] := M[(R[b] + c) DIV 4] 
         | LDB: (*не реализуется*)
         | POP: R[a] := M[(R[b]) DIV 4]; INC(R[b], c)
         | STW: M[(R[b] + c) DIV 4] := R[a]
         | STB: (*не реализуется*)
         | PSH: DEC(R[b], c); M[(R[b]) DIV 4] := R[a]
         | RD: Texts.Scan(in); R[a] := in.i
         | WRD: Texts.Write(W, " "); Texts.WriteInt(W, R[c], 1)
         | WRH: Texts.WriteHex(W, R[c])
         | WRL: Texts.WriteLn(W); Texts.Append(out, W.buf)
         | BEQ: IF Z THEN nxt := R[15] + c*4 END
         | BNE: IF ~Z THEN nxt := R[15] + c*4 END
         | BLT: IF N THEN nxt := R[15] + c*4 END
         | BGE: IF ~N THEN nxt := R[15] + c*4 END
         | BLE: IF Z OR N THEN nxt := R[15] + c*4 END
         | BGT: IF ~Z & ~N THEN nxt := R[15] + c*4 END
         | BR: nxt := R[15] + c*4
         | BSR: nxt := R[15] + c*4; R[14] := R[15] + 4
         | RET: nxt := R[c MOD 10H];
             IF nxt = 0 THEN EXIT END
         END ;
         R[15] := nxt
       END
     END Execute; 

     PROCEDURE Load*(VAR code: ARRAY OF LONGINT; len: LONGINT);
       VAR i: INTEGER;
     BEGIN i := 0;
       WHILE i < len DO M[i + ProgOrg DIV 4] := code[i]; INC(i) END
     END Load; 

   BEGIN Texts.OpenWriter(W)
  END RISC.