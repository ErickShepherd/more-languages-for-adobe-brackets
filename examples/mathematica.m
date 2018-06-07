(*
Accessed by:    Erick Edward Shepherd
Accessed on:    2018-06-06
Language:       Mathematica
Source entity:  CodeMirror
Source site:    codemirror.net/mode/mathematica/index.html

Purpose:        Example to test plugin success in syntax highlighting.

License:        MIT License

                Copyright (C) 2017 by Marijn Haverbeke <marijnh@gmail.com> 
                and others

                Permission is hereby granted, free of charge, to any person 
                obtaining a copy of this software and associated documentation 
                files (the "Software"), to deal in the Software without 
                restriction, including without limitation the rights to use, 
                copy, modify, merge, publish, distribute, sublicense, and/or 
                sell copies of the Software, and to permit persons to whom the 
                Software is furnished to do so, subject to the following 
                conditions:

                The above copyright notice and this permission notice shall be 
                included in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
                EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
                OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
                NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
                HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
                WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
                FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
                OTHER DEALINGS IN THE SOFTWARE.
*)

(* example Mathematica code *)
(* Dualisiert wird anhand einer Polarität an einer
   Quadrik $x^t Q x = 0$ mit regulärer Matrix $Q$ (also
   mit $det(Q) \neq 0$), z.B. die Identitätsmatrix.
   $p$ ist eine Liste von Polynomen - ein Ideal. *)
dualize::"singular" = "Q must be regular: found Det[Q]==0.";
dualize[ Q_, p_ ] := Block[
    { m, n, xv, lv, uv, vars, polys, dual },
    If[Det[Q] == 0,
      Message[dualize::"singular"],
      m = Length[p];
      n = Length[Q] - 1;
      xv = Table[Subscript[x, i], {i, 0, n}];
      lv = Table[Subscript[l, i], {i, 1, m}];
      uv = Table[Subscript[u, i], {i, 0, n}];
      (* Konstruiere Ideal polys. *)
      If[m == 0,
        polys = Q.uv,
        polys = Join[p, Q.uv - Transpose[Outer[D, p, xv]].lv]
        ];
      (* Eliminiere die ersten n + 1 + m Variablen xv und lv
         aus dem Ideal polys. *)
      vars = Join[xv, lv];
      dual = GroebnerBasis[polys, uv, vars];
      (* Ersetze u mit x im Ergebnis. *)
      ReplaceAll[dual, Rule[u, x]]
      ]
    ]
