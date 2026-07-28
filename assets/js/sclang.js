/*! `sclang` grammar compiled for Highlight.js 11.9.0 */
(()=>{var e=(()=>{"use strict";function e(e){
return e&&e.__esModule&&Object.prototype.hasOwnProperty.call(e,"default")?e.default:e
}return e((e=>{const n=e.COMMENT("/\\*","\\*/",{
contains:[e.C_BLOCK_COMMENT_MODE]});return{aliases:["supercollider","sc"],
name:"sclang",keywords:{keyword:"arg classvar|10 const super this var|2",
built_in:"false inf|2 nil|2 true thisFunction|10 thisFunctionDef|10 thisMethod|10 thisProcess|10 thisThread|10 currentEnvironment|10 topEnvironment|10"
},contains:[{className:"type",begin:/\b(Synth|SynthDef)\b/,relevance:10},{
className:"type",begin:"\\b[A-Z]\\w*\\b",relevance:0},{className:"meta",
begin:"_\\w+",relevance:0},{className:"literal",begin:"\\$\\\\?."},{
className:"title",begin:"~\\w+",relevance:2},{className:"number",variants:[{
begin:"\\b\\d+r[0-9a-zA-Z]*(\\.[0-9A-Z]*)?\\b"},{begin:/\b\d+(s+|b+|[sb]\d+)\b/
},{begin:"\\b((\\d+(\\.\\d+)?([eE][-+]?\\d+)?(pi)?)|pi)\\b"},{
begin:"\\b0x[a-fA-F0-9]+\\b"}],relevance:0},{className:"string",variants:[{
begin:"\\\\\\w+",relevance:5},e.APOS_STRING_MODE,{begin:"[A-Za-z_]\\w*\\:",
relevance:0}]},e.QUOTE_STRING_MODE,e.C_LINE_COMMENT_MODE,n],
illegal:/\bclass\s+[A-Z]/}}))})();hljs.registerLanguage("sclang",e)})();