(*
Accessed by:    Erick Edward Shepherd
Accessed on:    2018-06-06
Language:       Pascal
Source entity:  CodeMirror
Source site:    codemirror.net/mode/pascal/index.html

Purpose:        Example to test plugin success in syntax highlighting.

License:        MIT License

                Copyright (C) 2017 by Marijn Haverbeke <marijnh@gmail.com> 
                and others.

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

(* Example Pascal code *)

while a <> b do writeln('Waiting');
 
if a > b then 
  writeln('Condition met')
else 
  writeln('Condition not met');
 
for i := 1 to 10 do 
  writeln('Iteration: ', i:1);
 
repeat
  a := a + 1
until a = 10;
 
case i of
  0: write('zero');
  1: write('one');
  2: write('two')
end;
