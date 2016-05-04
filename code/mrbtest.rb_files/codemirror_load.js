(function(){CodeMirror.switchSlackMode=function(f,g){var e={php:["php","application/x-httpd-php"],sql:["sql","text/x-sql"],mysql:["sql","text/x-mysql"],html:["htmlmixed","text/html"],javascript:["javascript","text/javascript"],markdown:["markdown","text/x-markdown"],c:["clike","text/x-csrc"],cpp:["clike","text/x-c++src"],csharp:["clike","text/x-csharp"],vb:["vb","text/x-vb"],vbscript:["vbscript","text/vbscript"],java:["clike","text/x-java"],css:["css","text/css"],perl:["perl","text/x-perl"],python:["python","text/x-python"],ruby:["ruby","text/x-ruby"],erlang:["erlang","text/x-erlang"],diff:["diff","text/x-diff"],xml:["xml","text/xml"],coffeescript:["coffeescript","text/x-coffeescript"],clojure:["clojure","text/x-clojure"],scheme:["scheme","text/x-scheme"],haskell:["haskell","text/x-haskell"],scala:["clike","text/x-scala"],shell:["shell","text/x-sh"],go:["go","text/x-go"],groovy:["groovy","text/x-groovy"],yaml:["yaml","text/x-yaml"],lua:["lua","text/x-lua"],matlab:["octave","text/x-octave"],r:["r","text/x-rsrc"],puppet:["puppet","text/x-puppet"],smalltalk:["smalltalk","text/x-stsrc"],latex:["stex","text/x-stex"],objc:["clike","text/x-objectivec"]};
if(e[g]){f.setOption("mode",e[g][1]);
CodeMirror.autoLoadMode(f,e[g][0])
}else{f.setOption("mode",null)
}};
function c(e){switch(e){case"apl":return cdn_url+"/62b3/js/libs/codemirror/apl.js";
case"asterisk":return cdn_url+"/aec9/js/libs/codemirror/asterisk.js";
case"clike":return cdn_url+"/a13a/js/libs/codemirror/clike.js";
case"clojure":return cdn_url+"/b6a7/js/libs/codemirror/clojure.js";
case"cobol":return cdn_url+"/e457/js/libs/codemirror/cobol.js";
case"coffeescript":return cdn_url+"/e077/js/libs/codemirror/coffeescript.js";
case"commonlisp":return cdn_url+"/c712/js/libs/codemirror/commonlisp.js";
case"css":return cdn_url+"/def2/js/libs/codemirror/css.js";
case"cypher":return cdn_url+"/aa98/js/libs/codemirror/cypher.js";
case"d":return cdn_url+"/1cda/js/libs/codemirror/d.js";
case"diff":return cdn_url+"/5f39/js/libs/codemirror/diff.js";
case"django":return cdn_url+"/25cc/js/libs/codemirror/django.js";
case"dockerfile":return cdn_url+"/8fd3/js/libs/codemirror/dockerfile.js";
case"dtd":return cdn_url+"/aadf/js/libs/codemirror/dtd.js";
case"dylan":return cdn_url+"/81de/js/libs/codemirror/dylan.js";
case"ecl":return cdn_url+"/6bf4/js/libs/codemirror/ecl.js";
case"eiffel":return cdn_url+"/f7a8/js/libs/codemirror/eiffel.js";
case"erlang":return cdn_url+"/9e1a/js/libs/codemirror/erlang.js";
case"fortran":return cdn_url+"/4cd8/js/libs/codemirror/fortran.js";
case"gas":return cdn_url+"/fb60/js/libs/codemirror/gas.js";
case"gfm":return cdn_url+"/55ab/js/libs/codemirror/gfm.js";
case"gherkin":return cdn_url+"/1731/js/libs/codemirror/gherkin.js";
case"go":return cdn_url+"/81a5/js/libs/codemirror/go.js";
case"groovy":return cdn_url+"/aeb7/js/libs/codemirror/groovy.js";
case"haml":return cdn_url+"/2ab9/js/libs/codemirror/haml.js";
case"haskell":return cdn_url+"/4890/js/libs/codemirror/haskell.js";
case"haxe":return cdn_url+"/c205/js/libs/codemirror/haxe.js";
case"htmlembedded":return cdn_url+"/82ef/js/libs/codemirror/htmlembedded.js";
case"htmlmixed":return cdn_url+"/9ddc/js/libs/codemirror/htmlmixed.js";
case"http":return cdn_url+"/b911/js/libs/codemirror/http.js";
case"idl":return cdn_url+"/2678/js/libs/codemirror/idl.js";
case"jade":return cdn_url+"/c50e/js/libs/codemirror/jade.js";
case"javascript":return cdn_url+"/fe22/js/libs/codemirror/javascript.js";
case"jinja2":return cdn_url+"/d7c1/js/libs/codemirror/jinja2.js";
case"julia":return cdn_url+"/abd0/js/libs/codemirror/julia.js";
case"kotlin":return cdn_url+"/95b4/js/libs/codemirror/kotlin.js";
case"livescript":return cdn_url+"/57ed/js/libs/codemirror/livescript.js";
case"lua":return cdn_url+"/d291/js/libs/codemirror/lua.js";
case"markdown":return cdn_url+"/aba4/js/libs/codemirror/markdown.js";
case"mirc":return cdn_url+"/bdf0/js/libs/codemirror/mirc.js";
case"mllike":return cdn_url+"/de4e/js/libs/codemirror/mllike.js";
case"modelica":return cdn_url+"/08a91/js/libs/codemirror/modelica.js";
case"nginx":return cdn_url+"/171c/js/libs/codemirror/nginx.js";
case"ntriples":return cdn_url+"/3946/js/libs/codemirror/ntriples.js";
case"octave":return cdn_url+"/cf67/js/libs/codemirror/octave.js";
case"pascal":return cdn_url+"/df9e/js/libs/codemirror/pascal.js";
case"pegjs":return cdn_url+"/2d1d/js/libs/codemirror/pegjs.js";
case"perl":return cdn_url+"/ddc2/js/libs/codemirror/perl.js";
case"php":return cdn_url+"/2da3/js/libs/codemirror/php.js";
case"pig":return cdn_url+"/d4bd/js/libs/codemirror/pig.js";
case"properties":return cdn_url+"/b5e4/js/libs/codemirror/properties.js";
case"puppet":return cdn_url+"/4445/js/libs/codemirror/puppet.js";
case"python":return cdn_url+"/7e01/js/libs/codemirror/python.js";
case"q":return cdn_url+"/6912/js/libs/codemirror/q.js";
case"r":return cdn_url+"/f25f/js/libs/codemirror/r.js";
case"rpm":return cdn_url+"/33de/js/libs/codemirror/rpm.js";
case"rst":return cdn_url+"/4792/js/libs/codemirror/rst.js";
case"ruby":return cdn_url+"/558f/js/libs/codemirror/ruby.js";
case"rust":return cdn_url+"/b945/js/libs/codemirror/rust.js";
case"sass":return cdn_url+"/b9c0/js/libs/codemirror/sass.js";
case"scheme":return cdn_url+"/8e42/js/libs/codemirror/scheme.js";
case"shell":return cdn_url+"/7484/js/libs/codemirror/shell.js";
case"sieve":return cdn_url+"/774e/js/libs/codemirror/sieve.js";
case"slim":return cdn_url+"/9647/js/libs/codemirror/slim.js";
case"smalltalk":return cdn_url+"/0918/js/libs/codemirror/smalltalk.js";
case"smarty":return cdn_url+"/548a/js/libs/codemirror/smarty.js";
case"smartymixed":return cdn_url+"/40d8/js/libs/codemirror/smartymixed.js";
case"solr":return cdn_url+"/c6f4/js/libs/codemirror/solr.js";
case"sparql":return cdn_url+"/a1c7/js/libs/codemirror/sparql.js";
case"sql":return cdn_url+"/6660/js/libs/codemirror/sql.js";
case"stex":return cdn_url+"/b178/js/libs/codemirror/stex.js";
case"tcl":return cdn_url+"/98d9/js/libs/codemirror/tcl.js";
case"textile":return cdn_url+"/5755/js/libs/codemirror/textile.js";
case"tiddlywiki":return cdn_url+"/5f7e/js/libs/codemirror/tiddlywiki.js";
case"tiki":return cdn_url+"/6876/js/libs/codemirror/tiki.js";
case"toml":return cdn_url+"/4596/js/libs/codemirror/toml.js";
case"tornado":return cdn_url+"/cd62/js/libs/codemirror/tornado.js";
case"turtle":return cdn_url+"/9538/js/libs/codemirror/turtle.js";
case"vb":return cdn_url+"/c2b2/js/libs/codemirror/vb.js";
case"vbscript":return cdn_url+"/6553/js/libs/codemirror/vbscript.js";
case"velocity":return cdn_url+"/cc3e/js/libs/codemirror/velocity.js";
case"verilog":return cdn_url+"/d38a/js/libs/codemirror/verilog.js";
case"xml":return cdn_url+"/b474f/js/libs/codemirror/xml.js";
case"xquery":return cdn_url+"/ef72/js/libs/codemirror/xquery.js";
case"yaml":return cdn_url+"/3f7c/js/libs/codemirror/yaml.js";
case"z80":return cdn_url+"/48d4/js/libs/codemirror/z80.js"
}return null
}var d={};
function b(e,g){var f=g;
return function(){if(--f==0){e()
}}
}function a(k,e){var j=CodeMirror.modes[k].dependencies;
if(!j){return e()
}var h=[];
for(var g=0;
g<j.length;
++g){if(!CodeMirror.modes.hasOwnProperty(j[g])){h.push(j[g])
}}if(!h.length){return e()
}var f=b(e,h.length);
for(var g=0;
g<h.length;
++g){CodeMirror.requireMode(h[g],f)
}}CodeMirror.requireMode=function(k,e){if(typeof k!="string"){k=k.name
}if(CodeMirror.modes.hasOwnProperty(k)){return a(k,e)
}if(d.hasOwnProperty(k)){return d[k].push(e)
}var f=document.createElement("script");
f.src=c(k);
var g=document.getElementsByTagName("script")[0];
g.parentNode.insertBefore(f,g);
var i=d[k]=[e];
var h=0,j=setInterval(function(){if(++h>100){return clearInterval(j)
}if(CodeMirror.modes.hasOwnProperty(k)){clearInterval(j);
d[k]=null;
a(k,function(){for(var l=0;
l<i.length;
++l){i[l]()
}})
}},200)
};
CodeMirror.autoLoadMode=function(e,f){if(!CodeMirror.modes.hasOwnProperty(f)){CodeMirror.requireMode(f,function(){e.setOption("mode",e.getOption("mode"))
})
}}
}());