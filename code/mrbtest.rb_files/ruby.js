(function(a){if(typeof exports=="object"&&typeof module=="object"){a(require("../../lib/codemirror"))
}else{if(typeof define=="function"&&define.amd){define(["../../lib/codemirror"],a)
}else{a(CodeMirror)
}}})(function(a){a.defineMode("ruby",function(f){function b(s){var r={};
for(var p=0,q=s.length;
p<q;
++p){r[s[p]]=true
}return r
}var k=b(["alias","and","BEGIN","begin","break","case","class","def","defined?","do","else","elsif","END","end","ensure","false","for","if","in","module","next","not","or","redo","rescue","retry","return","self","super","then","true","undef","unless","until","when","while","yield","nil","raise","throw","catch","fail","loop","callcc","caller","lambda","proc","public","protected","private","require","load","require_relative","extend","autoload","__END__","__FILE__","__LINE__","__dir__"]);
var j=b(["def","class","case","for","while","module","then","catch","loop","proc","begin"]);
var e=b(["end","until"]);
var d={"[":"]","{":"}","(":")"};
var m;
function c(p,r,q){q.tokenize.push(p);
return p(r,q)
}function g(A,r){m=null;
if(A.sol()&&A.match("=begin")&&A.eol()){r.tokenize.push(l);
return"comment"
}if(A.eatSpace()){return null
}var p=A.next(),u;
if(p=="`"||p=="'"||p=='"'){return c(n(p,"string",p=='"'||p=="`"),A,r)
}else{if(p=="/"){var x=A.current().length;
if(A.skipTo("/")){var v=A.current().length;
A.backUp(A.current().length-x);
var t=0;
while(A.current().length<v){var z=A.next();
if(z=="("){t+=1
}else{if(z==")"){t-=1
}}if(t<0){break
}}A.backUp(A.current().length-x);
if(t==0){return c(n(p,"string-2",true),A,r)
}}return"operator"
}else{if(p=="%"){var q="string",w=true;
if(A.eat("s")){q="atom"
}else{if(A.eat(/[WQ]/)){q="string"
}else{if(A.eat(/[r]/)){q="string-2"
}else{if(A.eat(/[wxq]/)){q="string";
w=false
}}}}var s=A.eat(/[^\w\s=]/);
if(!s){return"operator"
}if(d.propertyIsEnumerable(s)){s=d[s]
}return c(n(s,q,w,true),A,r)
}else{if(p=="#"){A.skipToEnd();
return"comment"
}else{if(p=="<"&&(u=A.match(/^<-?[\`\"\']?([a-zA-Z_?]\w*)[\`\"\']?(?:;|$)/))){return c(i(u[1]),A,r)
}else{if(p=="0"){if(A.eat("x")){A.eatWhile(/[\da-fA-F]/)
}else{if(A.eat("b")){A.eatWhile(/[01]/)
}else{A.eatWhile(/[0-7]/)
}}return"number"
}else{if(/\d/.test(p)){A.match(/^[\d_]*(?:\.[\d_]+)?(?:[eE][+\-]?[\d_]+)?/);
return"number"
}else{if(p=="?"){while(A.match(/^\\[CM]-/)){}if(A.eat("\\")){A.eatWhile(/\w/)
}else{A.next()
}return"string"
}else{if(p==":"){if(A.eat("'")){return c(n("'","atom",false),A,r)
}if(A.eat('"')){return c(n('"',"atom",true),A,r)
}if(A.eat(/[\<\>]/)){A.eat(/[\<\>]/);
return"atom"
}if(A.eat(/[\+\-\*\/\&\|\:\!]/)){return"atom"
}if(A.eat(/[a-zA-Z$@_\xa1-\uffff]/)){A.eatWhile(/[\w$\xa1-\uffff]/);
A.eat(/[\?\!\=]/);
return"atom"
}return"operator"
}else{if(p=="@"&&A.match(/^@?[a-zA-Z_\xa1-\uffff]/)){A.eat("@");
A.eatWhile(/[\w\xa1-\uffff]/);
return"variable-2"
}else{if(p=="$"){if(A.eat(/[a-zA-Z_]/)){A.eatWhile(/[\w]/)
}else{if(A.eat(/\d/)){A.eat(/\d/)
}else{A.next()
}}return"variable-3"
}else{if(/[a-zA-Z_\xa1-\uffff]/.test(p)){A.eatWhile(/[\w\xa1-\uffff]/);
A.eat(/[\?\!]/);
if(A.eat(":")){return"atom"
}return"ident"
}else{if(p=="|"&&(r.varList||r.lastTok=="{"||r.lastTok=="do")){m="|";
return null
}else{if(/[\(\)\[\]{}\\;]/.test(p)){m=p;
return null
}else{if(p=="-"&&A.eat(">")){return"arrow"
}else{if(/[=+\-\/*:\.^%<>~|]/.test(p)){var y=A.eatWhile(/[=+\-\/*:\.^%<>~|]/);
if(p=="."&&!y){m="."
}return"operator"
}else{return null
}}}}}}}}}}}}}}}}}function o(p){if(!p){p=1
}return function(r,q){if(r.peek()=="}"){if(p==1){q.tokenize.pop();
return q.tokenize[q.tokenize.length-1](r,q)
}else{q.tokenize[q.tokenize.length-1]=o(p-1)
}}else{if(r.peek()=="{"){q.tokenize[q.tokenize.length-1]=o(p+1)
}}return g(r,q)
}
}function h(){var p=false;
return function(r,q){if(p){q.tokenize.pop();
return q.tokenize[q.tokenize.length-1](r,q)
}p=true;
return g(r,q)
}
}function n(p,q,s,r){return function(w,u){var v=false,t;
if(u.context.type==="read-quoted-paused"){u.context=u.context.prev;
w.eat("}")
}while((t=w.next())!=null){if(t==p&&(r||!v)){u.tokenize.pop();
break
}if(s&&t=="#"&&!v){if(w.eat("{")){if(p=="}"){u.context={prev:u.context,type:"read-quoted-paused"}
}u.tokenize.push(o());
break
}else{if(/[@\$]/.test(w.peek())){u.tokenize.push(h());
break
}}}v=!v&&t=="\\"
}return q
}
}function i(p){return function(r,q){if(r.match(p)){q.tokenize.pop()
}else{r.skipToEnd()
}return"string"
}
}function l(q,p){if(q.sol()&&q.match("=end")&&q.eol()){p.tokenize.pop()
}q.skipToEnd();
return"comment"
}return{startState:function(){return{tokenize:[g],indented:0,context:{type:"top",indented:-f.indentUnit},continuedLine:false,lastTok:null,varList:false}
},token:function(u,r){if(u.sol()){r.indented=u.indentation()
}var q=r.tokenize[r.tokenize.length-1](u,r),t;
var p=m;
if(q=="ident"){var s=u.current();
q=r.lastTok=="."?"property":k.propertyIsEnumerable(u.current())?"keyword":/^[A-Z]/.test(s)?"tag":(r.lastTok=="def"||r.lastTok=="class"||r.varList)?"def":"variable";
if(q=="keyword"){p=s;
if(j.propertyIsEnumerable(s)){t="indent"
}else{if(e.propertyIsEnumerable(s)){t="dedent"
}else{if((s=="if"||s=="unless")&&u.column()==u.indentation()){t="indent"
}else{if(s=="do"&&r.context.indented<r.indented){t="indent"
}}}}}}if(m||(q&&q!="comment")){r.lastTok=p
}if(m=="|"){r.varList=!r.varList
}if(t=="indent"||/[\(\[\{]/.test(m)){r.context={prev:r.context,type:m||q,indented:r.indented}
}else{if((t=="dedent"||/[\)\]\}]/.test(m))&&r.context.prev){r.context=r.context.prev
}}if(u.eol()){r.continuedLine=(m=="\\"||q=="operator")
}return q
},indent:function(t,p){if(t.tokenize[t.tokenize.length-1]!=g){return 0
}var s=p&&p.charAt(0);
var r=t.context;
var q=r.type==d[s]||r.type=="keyword"&&/^(?:end|until|else|elsif|when|rescue)\b/.test(p);
return r.indented+(q?0:f.indentUnit)+(t.continuedLine?f.indentUnit:0)
},electricChars:"}de",lineComment:"#"}
});
a.defineMIME("text/x-ruby","ruby")
});