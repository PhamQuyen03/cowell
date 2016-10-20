/*!
 * froala_editor v2.3.4 (https://www.froala.com/wysiwyg-editor)
 * License https://froala.com/wysiwyg-editor/terms/
 * Copyright 2014-2016 Froala Labs
 */

!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof module&&module.exports?module.exports=function(b,c){return void 0===c&&(c="undefined"!=typeof window?require("jquery"):require("jquery")(b)),a(c),c}:a(jQuery)}(function(a){"use strict";if(a.extend(a.FE.DEFAULTS,{imageManagerLoadURL:"https://i.froala.com/load-files",imageManagerLoadMethod:"get",imageManagerLoadParams:{},imageManagerPreloader:"",imageManagerDeleteURL:"",imageManagerDeleteMethod:"post",imageManagerDeleteParams:{},imageManagerPageSize:12,imageManagerScrollOffset:20,imageManagerToggleTags:!0}),a.FE.PLUGINS.imageManager=function(b){function c(){A||h(),A.data("instance",b),A.show(),G.show(),V=b.image.get(),B||y(),i(),b.$doc.find("body").addClass("prevent-scroll"),b.helpers.isMobile()&&b.$doc.find("body").addClass("fr-mobile")}function d(){var a=A.data("instance")||b;a.events.enableBlur(),A.hide(),G.hide(),a.$doc.find("body").removeClass("prevent-scroll fr-mobile")}function e(){var b=a(window).outerWidth();return 768>b?2:1200>b?3:4}function f(){C.empty();for(var a=0;L>a;a++)C.append('<div class="fr-list-column"></div>')}function g(){var c="";b.opts.theme&&(c=" "+b.opts.theme+"-theme");var d='<div class="fr-modal'+c+'"><div class="fr-modal-wrapper">';return d+='<div class="fr-modal-title"><div class="fr-modal-title-line"><i class="fa fa-bars fr-modal-more fr-not-available" id="fr-modal-more-'+b.sid+'" title="'+b.language.translate("Tags")+'"></i><h4 data-text="true">'+b.language.translate("Manage Images")+'</h4><i title="'+b.language.translate("Cancel")+'" class="fa fa-times fr-modal-close" id="fr-modal-close"></i></div>',d+='<div class="fr-modal-tags" id="fr-modal-tags"></div>',d+="</div>",d+='<img class="fr-preloader" id="fr-preloader" alt="'+b.language.translate("Loading")+'.." src="'+b.opts.imageManagerPreloader+'" style="display: none;">',d+='<div class="fr-scroller" id="fr-scroller"><div class="fr-image-list" id="fr-image-list"></div></div>',d+="</div></div>",a(d)}function h(){b.shared.$modal?(A=b.shared.$modal,G=b.shared.$overlay):(b.shared.$modal=g(),A=b.shared.$modal,b.helpers.isMobile()||A.addClass("fr-desktop"),A.appendTo("body"),b.shared.$overlay=a('<div class="fr-overlay">').appendTo("body"),G=b.shared.$overlay,b.opts.theme&&G.addClass(b.opts.theme+"-theme"),d()),b.events.on("shared.destroy",function(){A.removeData().remove(),G.removeData().remove()},!0)}function i(){B.show(),C.find(".fr-list-column").empty(),b.opts.imageManagerLoadURL?a.ajax({url:b.opts.imageManagerLoadURL,method:b.opts.imageManagerLoadMethod,data:b.opts.imageManagerLoadParams,dataType:"json",crossDomain:b.opts.requestWithCORS,xhrFields:{withCredentials:b.opts.requestWithCORS},headers:b.opts.requestHeaders}).done(function(a,c,d){b.events.trigger("imageManager.imagesLoaded",[a]),j(a,d.response),B.hide()}).fail(function(){var a=this.xhr();t(N,a.response||a.responseText)}):t(O)}function j(a,b){try{C.find(".fr-list-column").empty(),I=0,J=0,K=0,H=a,k()}catch(c){t(P,b)}}function k(){if(J<H.length&&(C.outerHeight()<=D.outerHeight()+b.opts.imageManagerScrollOffset||D.scrollTop()+b.opts.imageManagerScrollOffset>C.outerHeight()-D.outerHeight())){I++;for(var a=b.opts.imageManagerPageSize*(I-1);a<Math.min(H.length,b.opts.imageManagerPageSize*I);a++)l(H[a])}}function l(c){var d=new Image,e=a('<div class="fr-image-container fr-empty fr-image-'+K++ +'" data-loading="'+b.language.translate("Loading")+'.." data-deleting="'+b.language.translate("Deleting")+'..">');p(!1),d.onload=function(){e.height(Math.floor(e.width()/d.width*d.height));var f=a("<img/>");if(c.thumb)f.attr("src",c.thumb);else{if(t(Q,c),!c.url)return t(R,c),!1;f.attr("src",c.url)}if(c.url&&f.attr("data-url",c.url),c.tag)if(F.find(".fr-modal-more.fr-not-available").removeClass("fr-not-available"),F.find(".fr-modal-tags").show(),c.tag.indexOf(",")>=0){for(var g=c.tag.split(","),h=0;h<g.length;h++)g[h]=g[h].trim(),0===E.find('a[title="'+g[h]+'"]').length&&E.append('<a role="button" title="'+g[h]+'">'+g[h]+"</a>");f.attr("data-tag",g.join())}else 0===E.find('a[title="'+c.tag.trim()+'"]').length&&E.append('<a role="button" title="'+c.tag.trim()+'">'+c.tag.trim()+"</a>"),f.attr("data-tag",c.tag.trim());for(var i in c)c.hasOwnProperty(i)&&"thumb"!=i&&"url"!=i&&"tag"!=i&&f.attr("data-"+i,c[i]);e.append(f).append(a(b.icon.create("imageManagerDelete")).addClass("fr-delete-img").attr("title",b.language.translate("Delete"))).append(a(b.icon.create("imageManagerInsert")).addClass("fr-insert-img").attr("title",b.language.translate("Insert"))),E.find(".fr-selected-tag").each(function(a,b){x(f,b.text)||e.hide()}),f.on("load",function(){e.removeClass("fr-empty"),e.height("auto"),J++;var a=n(parseInt(f.parent().attr("class").match(/fr-image-(\d+)/)[1],10)+1);o(a),p(!1),J%b.opts.imageManagerPageSize===0&&k()}),b.events.trigger("imageManager.imageLoaded",[f])},d.onerror=function(){J++,e.remove();var a=n(parseInt(e.attr("class").match(/fr-image-(\d+)/)[1],10)+1);o(a),t(M,c),J%b.opts.imageManagerPageSize===0&&k()},d.src=c.url,m().append(e)}function m(){var b,c;return C.find(".fr-list-column").each(function(d,e){var f=a(e);0===d?(c=f.outerHeight(),b=f):f.outerHeight()<c&&(c=f.outerHeight(),b=f)}),b}function n(b){void 0===b&&(b=0);for(var c=[],d=K-1;d>=b;d--){var e=C.find(".fr-image-"+d);e.length&&(c.push(e),a('<div id="fr-image-hidden-container">').append(e),C.find(".fr-image-"+d).remove())}return c}function o(a){for(var b=a.length-1;b>=0;b--)m().append(a[b])}function p(a){if(void 0===a&&(a=!0),!A.is(":visible"))return!0;var c=e();if(c!=L){L=c;var d=n();f(),o(d)}var g=b.$win.height(),h=A.find(".fr-modal-wrapper"),i=parseFloat(h.css("margin-top"))+parseFloat(h.css("margin-bottom")),j=parseFloat(h.css("padding-top"))+parseFloat(h.css("padding-bottom")),l=parseFloat(h.css("border-top-width")),m=h.find("h4").outerHeight();D.height(Math.min(C.outerHeight(),g-i-j-m-l)),a&&k()}function q(a){var b={},c=a.data();for(var d in c)c.hasOwnProperty(d)&&"url"!=d&&"tag"!=d&&(b[d]=c[d]);return b}function r(c){var e=a(c.currentTarget).siblings("img"),f=A.data("instance")||b;if(d(),f.image.showProgressBar(),V)V.trigger("click");else{f.events.focus(!0),f.selection.restore();var g=f.position.getBoundingRect(),h=g.left+g.width/2,i=g.top+g.height;f.popups.setContainer("image.insert",f.$box||a("body")),f.popups.show("image.insert",h,i)}f.image.insert(e.data("url"),!1,q(e),V)}function s(c){var d=a(c.currentTarget).siblings("img"),e=b.language.translate("Are you sure? Image will be deleted.");confirm(e)&&(b.opts.imageManagerDeleteURL?b.events.trigger("imageManager.beforeDeleteImage",[d])!==!1&&(d.parent().addClass("fr-image-deleting"),a.ajax({method:b.opts.imageManagerDeleteMethod,url:b.opts.imageManagerDeleteURL,data:a.extend(a.extend({src:d.attr("src")},q(d)),b.opts.imageManagerDeleteParams),crossDomain:b.opts.requestWithCORS,xhrFields:{withCredentials:b.opts.requestWithCORS},headers:b.opts.requestHeaders}).done(function(a){b.events.trigger("imageManager.imageDeleted",[a]);var c=n(parseInt(d.parent().attr("class").match(/fr-image-(\d+)/)[1],10)+1);d.parent().remove(),o(c),p(!0)}).fail(function(){var a=this.xhr();t(S,a.response||a.responseText)})):t(T))}function t(c,d){c>=10&&20>c?B.hide():c>=20&&30>c&&a(".fr-image-deleting").removeClass("fr-image-deleting"),b.events.trigger("imageManager.error",[{code:c,message:U[c]},d])}function u(){var a=F.find(".fr-modal-title-line").outerHeight(),b=E.outerHeight();F.toggleClass(".fr-show-tags"),F.hasClass(".fr-show-tags")?(F.css("height",a+b),E.find("a").css("opacity",1)):(F.css("height",a),E.find("a").css("opacity",0))}function v(){var b=E.find(".fr-selected-tag");b.length>0?(C.find("img").parent().show(),b.each(function(b,c){C.find("img").each(function(b,d){var e=a(d);x(e,c.text)||e.parent().hide()})})):C.find("img").parent().show();var c=n();o(c),k()}function w(c){c.preventDefault();var d=a(c.currentTarget);d.toggleClass("fr-selected-tag"),b.opts.imageManagerToggleTags&&d.siblings("a").removeClass("fr-selected-tag"),v()}function x(a,b){for(var c=a.attr("data-tag").split(","),d=0;d<c.length;d++)if(c[d]==b)return!0;return!1}function y(){B=A.find("#fr-preloader"),C=A.find("#fr-image-list"),D=A.find("#fr-scroller"),E=A.find("#fr-modal-tags"),F=E.parent(),L=e(),f();var c=F.find(".fr-modal-title-line").outerHeight();F.css("height",c),D.css("margin-top",c),b.events.bindClick(A,"i#fr-modal-close",d),b.events.$on(a(b.o_win),"resize",function(){p(H?!0:!1)}),b.helpers.isMobile()&&(b.events.bindClick(C,"div.fr-image-container",function(b){A.find(".fr-mobile-selected").removeClass("fr-mobile-selected"),a(b.currentTarget).addClass("fr-mobile-selected")}),A.on(b._mousedown,function(){A.find(".fr-mobile-selected").removeClass("fr-mobile-selected")})),b.events.bindClick(C,".fr-insert-img",r),b.events.bindClick(C,".fr-delete-img",s),A.on(b._mousedown+" "+b._mouseup,function(a){a.stopPropagation()}),A.on(b._mousedown,"*",function(){b.events.disableBlur()}),D.on("scroll",k),b.events.bindClick(A,"i#fr-modal-more-"+b.sid,u),b.events.bindClick(E,"a",w)}function z(){return b.$wp||"IMG"==b.$el.get(0).tagName?void 0:!1}var A,B,C,D,E,F,G,H,I,J,K,L,M=10,N=11,O=12,P=13,Q=14,R=15,S=21,T=22,U={};U[M]="Image cannot be loaded from the passed link.",U[N]="Error during load images request.",U[O]="Missing imageManagerLoadURL option.",U[P]="Parsing load response failed.",U[Q]="Missing image thumb.",U[R]="Missing image URL.",U[S]="Error during delete image request.",U[T]="Missing imageManagerDeleteURL option.";var V;return{require:["image"],_init:z,show:c,hide:d}},!a.FE.PLUGINS.image)throw new Error("Image manager plugin requires image plugin.");a.FE.DEFAULTS.imageInsertButtons.push("imageManager"),a.FE.RegisterCommand("imageManager",{title:"Browse",undo:!1,focus:!1,callback:function(){this.imageManager.show()},plugin:"imageManager"}),a.FE.DefineIcon("imageManager",{NAME:"folder"}),a.FE.DefineIcon("imageManagerInsert",{NAME:"plus"}),a.FE.DefineIcon("imageManagerDelete",{NAME:"trash"})});