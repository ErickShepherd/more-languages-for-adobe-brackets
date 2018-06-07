#=
Accessed by:    Erick Edward Shepherd
Accessed on:    2018-06-06
Language:       Julia
Source entity:  CodeMirror
Source site:    codemirror.net/mode/julia/index.html

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
=#

#numbers
1234
1234im
.234
.234im
2.23im
2.3f3
23e2
0x234

#strings
'a'
"asdf"
r"regex"
b"bytestring"

"""
multiline string
"""

#identifiers
a
as123
function_name!

#unicode identifiers
# a = x\ddot
a⃗ = ẍ
# a = v\dot
a⃗ = v̇
#F\vec = m \cdotp a\vec
F⃗ = m·a⃗

#literal identifier multiples
3x
4[1, 2, 3]

#dicts and indexing
x=[1, 2, 3]
x[end-1]
x={"julia"=>"language of technical computing"}


#exception handling
try
  f()
catch
  @printf "Error"
finally
  g()
end

#types
immutable Color{T<:Number}
  r::T
  g::T
  b::T
end

#functions
function change!(x::Vector{Float64})
  for i = 1:length(x)
    x[i] *= 2
  end
end

#function invocation
f('b', (2, 3)...)

#operators
|=
&=
^=
\-
%=
*=
+=
-=
<=
>=
!=
==
%
*
+
-
<
>
!
=
|
&
^
\
?
~
:
$
<:
.<
.>
<<
<<=
>>
>>>>
>>=
>>>=
<<=
<<<=
.<=
.>=
.==
->
//
in
...
//
:=
.//=
.*=
./=
.^=
.%=
.+=
.-=
\=
\\=
||
===
&&
|=
.|=
<:
>:
|>
<|
::
x ? y : z

#macros
@spawnat 2 1+1
@eval(:x)

#keywords and operators
if else elseif while for
 begin let end do
try catch finally return break continue
global local const 
export import importall using
function macro module baremodule 
type immutable quote
true false enumerate


    