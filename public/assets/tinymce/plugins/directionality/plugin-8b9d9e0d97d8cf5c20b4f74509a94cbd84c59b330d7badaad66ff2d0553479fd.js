!function(){var a={},b=function(b){for(var c=a[b],e=c.deps,f=c.defn,g=e.length,h=new Array(g),i=0;i<g;++i)h[i]=d(e[i]);var j=f.apply(null,h);if(void 0===j)throw"module ["+b+"] returned undefined";c.instance=j},c=function(b,c,d){if("string"!=typeof b)throw"module id must be a string";if(void 0===c)throw"no dependencies for "+b;if(void 0===d)throw"no definition function for "+b;a[b]={deps:c,defn:d,instance:void 0}},d=function(c){var d=a[c];if(void 0===d)throw"module ["+c+"] was undefined";return void 0===d.instance&&b(c),d.instance},e=function(a,b){for(var c=a.length,e=new Array(c),f=0;f<c;++f)e.push(d(a[f]));b.apply(null,b)},f={};f.bolt={module:{api:{define:c,require:e,demand:d}}};var g=c,h=function(a,b){g(a,[],function(){return b})};h("3",tinymce.util.Tools.resolve),g("1",["3"],function(a){return a("tinymce.PluginManager")}),g("2",["3"],function(a){return a("tinymce.util.Tools")}),g("0",["1","2"],function(a,b){return a.add("directionality",function(a){function c(c){var d,e=a.dom,f=a.selection.getSelectedBlocks();f.length&&(d=e.getAttrib(f[0],"dir"),b.each(f,function(a){e.getParent(a.parentNode,"*[dir='"+c+"']",e.getRoot())||(d!=c?e.setAttrib(a,"dir",c):e.setAttrib(a,"dir",null))}),a.nodeChanged())}function d(a){var c=[];return b.each("h1 h2 h3 h4 h5 h6 div p".split(" "),function(b){c.push(b+"[dir="+a+"]")}),c.join(",")}a.addCommand("mceDirectionLTR",function(){c("ltr")}),a.addCommand("mceDirectionRTL",function(){c("rtl")}),a.addButton("ltr",{title:"Left to right",cmd:"mceDirectionLTR",stateSelector:d("ltr")}),a.addButton("rtl",{title:"Right to left",cmd:"mceDirectionRTL",stateSelector:d("rtl")})}),function(){}}),d("0")()}();
