/*

Plugin:         More Languages for Adobe Brackets

File:           main.js

Description:    A plugin to extend code and markup language support in Adobe 
                Brackets using the native CodeMirror language modes.
                
                This plugin currently supports syntax highlighting and comment
                hotkeys for Brainfuck, COBOL, Common Lisp, Cython, D, Django, 
                Fortran, HTTP, IDL, Julia, LaTeX, LiveScript, Mathematica, 
                Pascal, PowerShell, R, reStructuredText (RST/reST), sTeX, and 
                Swift.
                
Source:         github.com/ErickShepherd/more-languages-for-adobe-brackets

Author:         Erick Edward Shepherd
E-mail:         ErickShepherd@ErickShepherd.com
Website:        ErickShepherd.com
GitHub:         github.com/ErickShepherd

Date created:   2018-06-06
Last updated:   2018-06-08

Copyright (C) 2018 of Erick Edward Shepherd - All Rights Reserved.

This file is part of "More Languages for Adobe Brackets".

"More Languages for Adobe Brackets" is free software: you can redistribute it 
and/or modify it under the terms of the GNU Affero General Public License as 
published by the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version.

"More Languages for Adobe Brackets" is distributed in the hope that it will be 
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General 
Public License for more details.

You should have received a copy of the GNU Affero General Public License along 
with "More Languages for Adobe Brackets". If not, see 
<https://www.gnu.org/licenses/>.

*/

define(function (require, exports, module) {
    "use strict";
    var LanguageManager = brackets.getModule("language/LanguageManager");

    // Brainfuck highlighting support.
    LanguageManager.defineLanguage("brainfuck", {
        name:           "Brainfuck",
        mode:           "brainfuck",
        fileExtensions: ["bf"],
    });
    
    // COBOL highlighting support.
    LanguageManager.defineLanguage("cobol", {
        name:           "COBOL",
        mode:           "cobol",
        fileExtensions: ["cbl", "cob", "cpy"],
        lineComment:    ["*"]
    });
    
    // Common Lisp highlighting support.
    LanguageManager.defineLanguage("commonlisp", {
        name:           "Common Lisp",
        mode:           "commonlisp",
        fileExtensions: ["cl", "lisp"],
        lineComment:    [";;"]
    });
    
    // Cython highlighting support.
    LanguageManager.defineLanguage("cython", {
        name:           "Cython",
        mode:           ["python", "text/x-cython"],
        fileExtensions: ["pyx"],
        lineComment:    ["#"],
        blockComment:   ["\"\"\"", "\"\"\""]
    });
    
    // D highlighting support.
    LanguageManager.defineLanguage("d", {
        name:           "D",
        mode:           "d",
        fileExtensions: ["d"],
        lineComment:    ["//"],
        blockComment:   ["/*", "*/"]
    });
	
    // Django highlighting support.
    LanguageManager.getLanguage("html").removeFileExtension(["htm", "html"]);
    
    LanguageManager.defineLanguage("django", {
        name:           "Django",
        mode:           "django",
        fileExtensions: ["dj.html", "djt", "djt.html", "htm", "html", "html.dj", "html.djt"]
    });
    
    // Fortran highlighting support.
	LanguageManager.defineLanguage("fortran", {
        name:           "Fortran",
        mode:           "fortran",
        fileExtensions: ["F",   "F03", "F08", "F90", 
                         "F95", "FOR", "FPP", "FTN", 
                         "f",   "f03", "f08", "f90", 
                         "f95", "for", "fpp", "ftn"],
        lineComment:    ["!"],
    });
    
    // HTTP highlighting support.
	LanguageManager.defineLanguage("http", {
        name:           "HTTP",
        mode:           "http",
        fileExtensions: ["http", "https"]
    });
    
    // IDL highlighting support.
	LanguageManager.defineLanguage("idl", {
        name:           "IDL",
        mode:           "idl",
        fileExtensions: ["idl"],
        lineComment:    [";;"]
    });
    
    // Julia highlighting support.
	LanguageManager.defineLanguage("julia", {
        name:           "Julia",
        mode:           "julia",
        fileExtensions: ["jl"],
        lineComment:    ["#"],
        blockComment:   ["#=", "=#"]
    });
    
    // LiveScript highlighting support.
	LanguageManager.defineLanguage("livescript", {
        name:           "LiveScript",
        mode:           "livescript",
        fileExtensions: ["ls"],
        lineComment:    ["#"],
        blockComment:   ["/*", "*/"]
    });
    
    // Mathematica highlighting support.
	LanguageManager.defineLanguage("mathematica", {
        name:           "Mathematica",
        mode:           "mathematica",
        fileExtensions: ["m", "mt", "nb"],
        blockComment:   ["(*", "*)"]
    });
    
    // Pascal highlighting support.
	LanguageManager.defineLanguage("pascal", {
        name:           "Pascal",
        mode:           "pascal",
        fileExtensions: ["pas", "pp"],
        lineComment:    ["//"],
        blockComment:   ["(*", "*)"]
    });
    
    // PowerShell highlighting support.
	LanguageManager.defineLanguage("powershell", {
        name:           "PowerShell",
        mode:           "powershell",
        fileExtensions: ["ps1"],
        lineComment:    ["#"],
        blockComment:   ["<#", "#>"]
    });
	
    // R highlighting support.
	LanguageManager.defineLanguage("r", {
        name:           "R",
        mode:           "r",
        fileExtensions: ["R", "RData", "r", "rda", "rds", "Rproj"],
        lineComment:    ["#"]
    });
    
    // reStructuredText (RST / reST) highlighting support.
	LanguageManager.defineLanguage("restructuredtext", {
        name:           "reStructuredText",
        mode:           "rst",
        fileExtensions: ["rst", "rest", "reST", "REST"]
    });
    
    // sTeX / LaTeX highlighting support.
	LanguageManager.defineLanguage("stex", {
        name:           "sTeX",
        mode:           "stex",
        fileExtensions: ["tex", "stex"]
    });
    
    // Swift highlighting support.
	LanguageManager.defineLanguage("swift", {
        name:           "Swift",
        mode:           "swift",
        fileExtensions: ["swift"],
        lineComment:    ["//"],
        blockComment:   ["/*", "*/"]
    });
});