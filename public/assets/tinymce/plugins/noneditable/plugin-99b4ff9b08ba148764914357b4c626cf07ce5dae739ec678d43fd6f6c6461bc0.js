!function(){var a={},b=function(b){for(var c=a[b],e=c.deps,f=c.defn,g=e.length,h=new Array(g),i=0;i<g;++i)h[i]=d(e[i]);var j=f.apply(null,h);if(void 0===j)throw"module ["+b+"] returned undefined";c.instance=j},c=function(b,c,d){if("string"!=typeof b)throw"module id must be a string";if(void 0===c)throw"no dependencies for "+b;if(void 0===d)throw"no definition function for "+b;a[b]={deps:c,defn:d,instance:void 0}},d=function(c){var d=a[c];if(void 0===d)throw"module ["+c+"] was undefined";return void 0===d.instance&&b(c),d.instance},e=function(a,b){for(var c=a.length,e=new Array(c),f=0;f<c;++f)e.push(d(a[f]));b.apply(null,b)},f={};f.bolt={module:{api:{define:c,require:e,demand:d}}};var g=c,h=function(a,b){g(a,[],function(){return b})};h("3",tinymce.util.Tools.resolve),g("1",["3"],function(a){return a("tinymce.PluginManager")}),g("2",["3"],function(a){return a("tinymce.util.Tools")}),g("0",["1","2"],function(a,b){return a.add("noneditable",function(a){function c(a){return function(b){return(" "+b.attr("class")+" ").indexOf(a)!==-1}}function d(c){function d(b){var c=arguments,d=c[c.length-2],e=d>0?h.charAt(d-1):"";if('"'===e)return b;if(">"===e){var f=h.lastIndexOf("<",d);if(f!==-1){var g=h.substring(f,d);if(g.indexOf('contenteditable="false"')!==-1)return b}}return'<span class="'+i+'" data-mce-content="'+a.dom.encode(c[0])+'">'+a.dom.encode("string"==typeof c[1]?c[1]:c[0])+"</span>"}var e=g.length,h=c.content,i=b.trim(f);if("raw"!=c.format){for(;e--;)h=h.replace(g[e],d);c.content=h}}var e,f,g,h="contenteditable";e=" "+b.trim(a.getParam("noneditable_editable_class","mceEditable"))+" ",f=" "+b.trim(a.getParam("noneditable_noneditable_class","mceNonEditable"))+" ";var i=c(e),j=c(f);g=a.getParam("noneditable_regexp"),g&&!g.length&&(g=[g]),a.on("PreInit",function(){g&&a.on("BeforeSetContent",d),a.parser.addAttributeFilter("class",function(a){for(var b,c=a.length;c--;)b=a[c],i(b)?b.attr(h,"true"):j(b)&&b.attr(h,"false")}),a.serializer.addAttributeFilter(h,function(a){for(var b,c=a.length;c--;)b=a[c],(i(b)||j(b))&&(g&&b.attr("data-mce-content")?(b.name="#text",b.type=3,b.raw=!0,b.value=b.attr("data-mce-content")):b.attr(h,null))})})}),function(){}}),d("0")()}();
