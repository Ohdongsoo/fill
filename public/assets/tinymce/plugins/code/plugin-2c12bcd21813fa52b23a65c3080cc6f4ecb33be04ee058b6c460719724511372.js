!function(){var a={},b=function(b){for(var c=a[b],e=c.deps,f=c.defn,g=e.length,h=new Array(g),i=0;i<g;++i)h[i]=d(e[i]);var j=f.apply(null,h);if(void 0===j)throw"module ["+b+"] returned undefined";c.instance=j},c=function(b,c,d){if("string"!=typeof b)throw"module id must be a string";if(void 0===c)throw"no dependencies for "+b;if(void 0===d)throw"no definition function for "+b;a[b]={deps:c,defn:d,instance:void 0}},d=function(c){var d=a[c];if(void 0===d)throw"module ["+c+"] was undefined";return void 0===d.instance&&b(c),d.instance},e=function(a,b){for(var c=a.length,e=new Array(c),f=0;f<c;++f)e.push(d(a[f]));b.apply(null,b)},f={};f.bolt={module:{api:{define:c,require:e,demand:d}}};var g=c,h=function(a,b){g(a,[],function(){return b})};h("3",tinymce.util.Tools.resolve),g("1",["3"],function(a){return a("tinymce.dom.DOMUtils")}),g("2",["3"],function(a){return a("tinymce.PluginManager")}),g("0",["1","2"],function(a,b){return b.add("code",function(b){function c(){var c=b.windowManager.open({title:"Source code",body:{type:"textbox",name:"code",multiline:!0,minWidth:b.getParam("code_dialog_width",600),minHeight:b.getParam("code_dialog_height",Math.min(a.DOM.getViewPort().h-200,500)),spellcheck:!1,style:"direction: ltr; text-align: left"},onSubmit:function(a){b.focus(),b.undoManager.transact(function(){b.setContent(a.data.code)}),b.selection.setCursorLocation(),b.nodeChanged()}});c.find("#code").value(b.getContent({source_view:!0}))}b.addCommand("mceCodeEditor",c),b.addButton("code",{icon:"code",tooltip:"Source code",onclick:c}),b.addMenuItem("code",{icon:"code",text:"Source code",context:"tools",onclick:c})}),function(){}}),d("0")()}();
