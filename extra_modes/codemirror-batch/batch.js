define(function (require, exports, module)
{
    "use strict";

    var CodeMirror = brackets.getModule("thirdparty/CodeMirror/lib/codemirror");
    var varsAndArgsRegex = /(%[0-9]|%~\S+|%\S+%)/;
    
	CodeMirror.defineSimpleMode("batch", {
		start: [
			{	//comment
				regex: /(rem|::)(?:\s.*|$)/i,
				token: "comment",
				sol: true
			},
			{	//echo
				regex: /(@echo|echo)/i,
				token: "builtin",
				sol: true,
				next: "echo"
			},
			{	//commands
				regex: /(?:\s|^)(assoc|aux|break|call|cd|chcp|chdir|choice|cls|cmdextversion|color|com1|com2|com3|com4|com|con|copy|country|ctty|date|defined|del|dir|do|dpath|else|endlocal|erase|errorlevel|exist|exit|for|ftype|goto|if|in|loadfix|loadhigh|lpt|lpt1|lpt2|lpt3|lpt4|md|mkdir|move|not|nul|path|pause|popd|prn|prompt|pushd|rd|rename|ren|rmdir|setlocal|set|shift|start|time|title|type|verify|ver|vol)(?:\s|$)/i,
				token: "builtin"
			},
			{	//variables and arguments
				regex: varsAndArgsRegex,
				token: "variable-2"
			},
			{	//label
				regex: /\s*:.*/,
				token: "string",
				sol: true
			}
		],
		echo: [
			{	//highlight variables and arguments in echo command
				regex: varsAndArgsRegex,
				token: "variable-2"
			},
			{	//go back to start state at end of line
				regex: /.$/,
				next: "start"
			}
		]
	});

	CodeMirror.defineMIME("text/x-batch", "batch");
});
