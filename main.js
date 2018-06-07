// CodeMirror source: http://codemirror.net/index.html

define(function (require, exports, module) {
    "use strict";
    var LanguageManager = brackets.getModule("language/LanguageManager");

    // Brainfuck highlighting support.
    LanguageManager.defineLanguage("brainfuck", {
        name:           "Brainfuck",
        mode:           "brainfuck",
        fileExtensions: ["bf"]
    });
    
    // COBOL highlighting support.
    LanguageManager.defineLanguage("cobol", {
        name:           "COBOL",
        mode:           "cobol",
        fileExtensions: ["cbl", "cob", "cpy"]
    });
    
    // Common Lisp highlighting support.
    LanguageManager.defineLanguage("commonlisp", {
        name:           "Common Lisp",
        mode:           "commonlisp",
        fileExtensions: ["cl", "lisp"]
    });
    
    // Cython highlighting support.
    LanguageManager.defineLanguage("cython", {
        name:           "Cython",
        mode:           ["python", "text/x-cython"],
        fileExtensions: ["pyx"]
    });
    
    // D highlighting support.
    LanguageManager.defineLanguage("d", {
        name:           "D",
        mode:           "d",
        fileExtensions: ["d"]
    });
	
    // Fortran highlighting support.
	LanguageManager.defineLanguage("fortran", {
        name:           "Fortran",
        mode:           "fortran",
        fileExtensions: ["F",   "F03", "F08", "F90", 
                         "F95", "FOR", "FPP", "FTN", 
                         "f",   "f03", "f08", "f90", 
                         "f95", "for", "fpp", "ftn"]
    });
    
    // IDL highlighting support.
	LanguageManager.defineLanguage("idl", {
        name:           "IDL",
        mode:           "idl",
        fileExtensions: ["idl"]
    });
    
    // Mathematica highlighting support.
	LanguageManager.defineLanguage("mathematica", {
        name:           "Mathematica",
        mode:           "mathematica",
        fileExtensions: ["m", "mt", "nb"]
    });
    
    // Pascal highlighting support.
	LanguageManager.defineLanguage("pascal", {
        name:           "Pascal",
        mode:           "pascal",
        fileExtensions: ["pas", "pp"]
    });
    
    // PowerShell highlighting support.
	LanguageManager.defineLanguage("powershell", {
        name:           "PowerShell",
        mode:           "powershell",
        fileExtensions: ["ps1"]
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
        fileExtensions: ["swift"]
    });
});