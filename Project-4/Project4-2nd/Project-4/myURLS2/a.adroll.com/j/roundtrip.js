window.__adroll||(function(){function m(){this.exp=5E4;this.eexp=720;this.pv=1E11*Math.random();this.__adc="__ar_v4";this._nad=0;this._lce=null;this._loaded=this._broken=!1;this._url=2E3;this._kwl=300;this._r={};this._logs=[]};m.prototype.cookieEnabled=function(a){if(this._global("adroll_ext_network")||this._global("adroll_optout")||this._broken)return!1;if(2<=this._nad||a)return this._lce;this.set("_te_","1");return"1"===this.get("_te_")?(this.del("_te_"),0<this._nad&&!this.get(this.__adc)?this._lce=!1:this._lce=!0):this._lce=!1};
m.prototype.get=function(a){var c=window.document.cookie;if(null===c)return this._broken=!0,null;var b;0>c.indexOf(a+"=")?c=null:(a=c.indexOf(a+"=")+a.length+1,b=c.indexOf(";",a),-1===b&&(b=c.length),c=c.substring(a,b),c=""===c?null:window.unescape(c));return c};
m.prototype.set=function(a,c,b){var d;b&&"number"===typeof b?(d=new Date,d.setTime(d.getTime()+36E5*b),b=d.toGMTString(),b="; expires="+b):b="";d="; domain="+window.location.hostname;c=window.escape(c);window.document.cookie=a+"="+c+b+"; path=/"+d};m.prototype.del=function(a){this.set(a,"",-8760)};
m.prototype.check_cookie=function(a,c){if(this._global("adroll_ext_network")||this._global("adroll_optout"))return"";for(var b=a.split("|"),d=b.length-1;0<=d;d--)if(b[d]){var h=b[d].split(":");c===h[0]&&(h[2]=""+(parseInt(h[2])+1),b[d]=h.join(":"))}return b.join("|")};m.prototype.handle=function(a){var c=this.get(this.__adc)||"";-1!==c.indexOf(a)?this.set(this.__adc,this.check_cookie(c,a),this.exp):(a=[c,[a,this.get_date(this.eexp),"1"].join(":")].join("|"),this.set(this.__adc,a,this.exp))};
m.prototype.expire_old=function(){if(!this._global("adroll_ext_network")&&!this._global("adroll_optout")){for(var a=this.get_date(!1),c=this.get(this.__adc),c=c?c.split("|"):[""],b=[],d=c.length-1;0<=d;d--)c[d]&&c[d].split(":")[1]>a&&b.push(c[d]);this.set(this.__adc,b.join("|"),this.exp)}};m.prototype.get_date=function(a){var c=new Date;a&&c.setTime(c.getTime()+36E5*a);a=""+c.getUTCFullYear();var b=c.getUTCMonth(),b=10<=b?b:"0"+b,c=c.getUTCDate();return[a,b,10<=c?c:"0"+c].join("")};m.prototype.generate_link=function(){return""};m.prototype.view=function(a){var c=new window.Image;c.src=this._srv("/view/"+a);c.setAttribute("width","1");c.setAttribute("height","1");c.setAttribute("border","0");this._head().appendChild(c)};m.prototype.set_cookie=function(){};
m.prototype.reset=function(){this._set_global("adroll_c_id",null);this._set_global("adroll_url_macro","");this._set_global("adroll_c_macro","");this._set_global("adroll_cpm_macro","");this._set_global("adroll_ext_network",null);this._set_global("adroll_subnetwork",null);this._set_global("adroll_ad_payload",null);this._set_global("adroll_win_notif",null)};m.prototype.set_pixel_cookie=function(a,c,b){this._global("adroll_optout")||(this.handle(a),this.handle(c),this.handle(b),this.pixel_loaded())};
m.prototype.add_pixel_load_callback=function(a){this._loaded?a():this._ensure_global("adroll_callbacks",[]).push(a)};m.prototype.pixel_loaded=function(){this._loaded=!0;for(var a=this._ensure_global("adroll_callbacks",[]),c=0;c<a.length;c++)a[c].called||(a[c](),a[c].called=!0)};m.prototype.addLoadEvent=function(a){if(this._has_global("__adroll_loaded")&&this._global("__adroll_loaded")||this._has_global("_adroll_ie")&&this._global("_adroll_ie")||/msie/i.test(window.navigator.userAgent))return a();if(/WebKit/i.test(window.navigator.userAgent)){var c=window.setInterval(function(){/loaded|complete/.test(window.document.readyState)&&window.clearInterval(c);a()},10);return null}var b=window.onload;window.onload=function(){a();b&&b()}};
m.prototype._head=function(){return(window.document.getElementsByTagName("head")||[null])[0]||(window.document.getElementsByTagName("body")||[null])[0]||window.document.getElementsByTagName("script")[0].parentNode};m.prototype.external_data_to_qs=function(a){var c=[],b=this.get_external_data();if(!b)return null;for(var d in b)b.hasOwnProperty(d)&&this._is_defined(b[d])&&null!==b[d]&&c.push(this.normalize_var(window.escape(""+d)+"="+window.escape(""+b[d]),!1));c=c.join("&");a&&(c=window.escape(c));return"adroll_external_data="+c};
m.prototype.replace_external_data=function(a){var c=this.get_external_data(),b=this.get_conversion_value(),d=null,h;if(c)for(h in c)c.hasOwnProperty(h)&&(d=new RegExp("\\["+h+"\\]","gi"),a=a.replace(d,c[h]),d=new RegExp("\\["+h+"_ESC\\]","gi"),a=a.replace(d,window.escape(c[h])));if(b)for(h in b)b.hasOwnProperty(h)&&(d=new RegExp("\\["+h+"\\]","gi"),a=a.replace(d,b[h]),d=new RegExp("\\["+h+"_ESC\\]","gi"),a=a.replace(d,window.escape(b[h])));return a};
m.prototype.get_external_data=function(){if(this._has_global("adroll_custom_data")){var a=this._global("adroll_custom_data"),c={},b;for(b in a)a.hasOwnProperty(b)&&"undefined"!==a[b]&&(c[b.toLowerCase()]=a[b]);return c}return null};
m.prototype.get_conversion_value=function(){var a=this._ensure_global("adroll_currency",null),c=this._ensure_global("adroll_conversion_value",null),b=this._ensure_global("adroll_conversion_value_in_dollars",null);return c?{conv_value:""+c,currency:a}:b?{conv_value:""+parseInt(100*b),currency:"USC"}:null};m.prototype._has_global=function(a){return this._is_defined(this._global(a))};m.prototype._global=function(a){return window[a]};m.prototype._set_global=function(a,c){window[a]=c};m.prototype._unset_global=function(a){delete window[a]};m.prototype._ensure_global=function(a,c){this._has_global(a)||this._set_global(a,c);return this._global(a)};m.prototype.btoi=function(a){return a.includes(null)?null:parseInt(a.concat().reverse().join(""),2)};m.prototype.hstsImgUrl=function(a){return"http://"+a+".ar1d.net/p.gif"};m.prototype.hstsBitUrl=function(a){return this.hstsImgUrl("p"+a)};m.prototype.hstsCheckFlag=function(a,c){var b=new window.Image;b.onload=function(){c&&c.call(this,2===b.width)}.bind(this);b.src=a};m.prototype.hstsMaxBits=function(){return 32};m.prototype.hstsCacheName=function(){return"__ar1d"};
m.prototype.hstsOptoutCacheName=function(){return"__ar1d_optout"};m.prototype.hstsRead=function(a){var c=Array(this.hstsMaxBits()),b=c.length,d;for(d=0;d<b;d++)c[d]=null;c.forEach(function(b,d){this.hstsCheckFlag(this.hstsBitUrl(d),function(b){c[d]=b?"1":"0";b=this.btoi(c);null!==b&&a&&a.call(this,b)}.bind(this))}.bind(this))};
m.prototype.getSafariVersion=function(){var a=/^Mozilla\/5\.0 \([^)]+\) AppleWebKit\/[^ ]+ \(KHTML, like Gecko\) Version\/([^ ]+)( Mobile\/[^ ]+)? Safari\/[^ ]+$/i.exec(navigator.userAgent);return a?a[1]:null};m.prototype.check_tpc_optout=function(a){var c=this.hstsOptoutCacheName(),b=this.get(c);b&&a.call(this,parseInt(b,10));this.hstsCheckFlag(this.hstsImgUrl("optout"),function(b){b&&this.set(c,1);a&&a.call(this,b?1:0)}.bind(this))};
m.prototype.get_tpc_cookie=function(a){var c=this.hstsCacheName(),b=this.get(c);if(b)return a.call(this,b);this.hstsCheckFlag(this.hstsImgUrl("isset"),function(b){if(!b)return a.call(this,null);this.hstsRead(function(b){(b=b?this.md5(String(b)):null)&&this.set(c,b,17520);a.call(this,b)}.bind(this))}.bind(this))};m.prototype.jsonStringify=function(a){this.jsonStringifyFunc||this.initJsonStringify();return this.jsonStringifyFunc(a)};m.prototype.jsonParse=function(a){var c=this._global("JSON");return"function"===typeof c.parse?c.parse(a):eval("("+a+")")};
m.prototype.initJsonStringify=function(){var a=this._global("JSON");this.jsonStringifyFunc=a||a.stringify&&"function"===typeof a.stringify?a.stringify:function(){function a(c){return h[c]||"\\u"+(c.charCodeAt(0)+65536).toString(16).substr(1)}var b=Object.prototype.toString,d=Array.isArray||function(a){return"[object Array]"===b.call(a)},h={'"':'\\"',"\\":"\\\\","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t"},n=/[\\"\u0000-\u001F\u2028\u2029]/g;return function q(k){if(null===k)return"null";
if("number"===typeof k)return isFinite(k)?k.toString():"null";if("boolean"===typeof k)return k.toString();if("object"===typeof k){if("function"===typeof k.toJSON)return q(k.toJSON());if(d(k)){for(var e="[",g=0;g<k.length;g++)e+=(g?", ":"")+q(k[g]);return e+"]"}if("[object Object]"===b.call(k)){e=[];for(g in k)k.hasOwnProperty(g)&&e.push(q(g)+": "+q(k[g]));return"{"+e.join(", ")+"}"}}return'"'+k.toString().replace(n,a)+'"'}}()};m.prototype.macro_values=function(){var a=this._ensure_global("adroll_cpm_macro",null),c=this._ensure_global("adroll_url_macro",null),b=this._ensure_global("adroll_c_macro",null),d=this._ensure_global("adroll_subnetwork",null),h=this._ensure_global("adroll_ad_payload",null),n=this._ensure_global("adroll_win_notif",null),p=this._ensure_global("adroll_rtb_dict",null),q={r:/^\$\{.*\}$/i,g:/^%%.*%%$/i,b:/^\[.*\]$/i,x:/^\$\{.*\}$/i,t:/INSERTCLICKTRACKER/}[this._global("adroll_ext_network")],q=this._is_defined(q)?
q:/CANNOT_MATCH_THIS/,k={};a&&!q.test(a)&&(k.adroll_cpm_macro=a);c&&!q.test(c)&&(k.adroll_url_macro=c);b&&!q.test(b)&&(k.adroll_c_macro=b);d&&!q.test(d)&&(k.adroll_subnetwork=d);h&&!q.test(h)&&(k.adroll_ad_payload=h);n&&!/^[|$]/.test(n)&&(k.adroll_win_notif=n);!p||"string"===typeof p&&/^[|$]/.test(p)||("string"===typeof p&&(p=this.jsonParse(p)),k.adroll_rtb_dict=p);return k};m.prototype.format_macros=function(a,c,b,d){return this.macro_url_params(this.macro_values(),a,c,b,d)};
m.prototype.macro_url_params=function(a,c,b,d,h){h=this._is_defined(h)?h:!1;var n=d?window.escape:function(a){return a},p=a.adroll_cpm_macro,q=a.adroll_url_macro,k=b?a.adroll_c_macro:null,e=[],g=c?this.parseUri(c):null,g=g?this.endswith(g.path,".tp"):!1;!g&&h&&e.push(["desturl",""]);k&&0===k.indexOf("http")?(h=n,"g"===this._global("adroll_ext_network")&&(h=d?function(a){return a}:window.unescape),e.push(["clickurl",h(k)])):g&&h&&e.push(["clickurl",""]);this._global("adroll_ext_network")&&e.push(["adroll_network",
this._global("adroll_ext_network")]);p&&e.push(["cpm",p]);a.adroll_subnetwork&&e.push(["adroll_subnetwork",a.adroll_subnetwork]);a.adroll_ad_payload&&e.push(["adroll_ad_payload",a.adroll_ad_payload]);q&&(a=this.parseUri(window.unescape(q)),e.push(["site_url",n("http://"+a.host)]),b&&(e.push(["adroll_width",n(this._global("adroll_width"))]),e.push(["adroll_height",n(this._global("adroll_height"))])));this.log("Macros found "+this.serialize(e));return c?this.buildurl(c,e):this.serialize(e)};
m.prototype.serialize=function(a){if(a.length){for(var c=[],b=a.length-1;0<=b;b--)c.push(a[b].join("="));return c.join("&")}return""};m.prototype.endswith=function(a,c){return-1!==a.indexOf(c,a.length-c.length)};m.prototype.buildurl=function(a,c){var b=this.serialize(c),d=a.indexOf("?");return b?d===a.length-1?a+b:-1!==d?"&"===a[a.length-1]?a+b:a+"&"+b:a+"?"+b:a};m.prototype.md5=function(){function a(a,c){var b=(a&65535)+(c&65535);return(a>>16)+(c>>16)+(b>>16)<<16|b&65535}function c(c,b,d,g,f,l){b=a(a(b,c),a(g,l));return a(b<<f|b>>>32-f,d)}function b(a,b,d,g,f,l,h){return c(b&d|~b&g,a,b,f,l,h)}function d(a,b,d,g,f,l,h){return c(b&g|d&~g,a,b,f,l,h)}function h(a,b,d,g,f,l,h){return c(d^(b|~g),a,b,f,l,h)}function n(n,k){var e=n[0],g=n[1],f=n[2],l=n[3],e=b(e,g,f,l,k[0],7,-680876936),l=b(l,e,g,f,k[1],12,-389564586),f=b(f,l,e,g,k[2],17,606105819),g=b(g,f,l,e,k[3],
22,-1044525330),e=b(e,g,f,l,k[4],7,-176418897),l=b(l,e,g,f,k[5],12,1200080426),f=b(f,l,e,g,k[6],17,-1473231341),g=b(g,f,l,e,k[7],22,-45705983),e=b(e,g,f,l,k[8],7,1770035416),l=b(l,e,g,f,k[9],12,-1958414417),f=b(f,l,e,g,k[10],17,-42063),g=b(g,f,l,e,k[11],22,-1990404162),e=b(e,g,f,l,k[12],7,1804603682),l=b(l,e,g,f,k[13],12,-40341101),f=b(f,l,e,g,k[14],17,-1502002290),g=b(g,f,l,e,k[15],22,1236535329),e=d(e,g,f,l,k[1],5,-165796510),l=d(l,e,g,f,k[6],9,-1069501632),f=d(f,l,e,g,k[11],14,643717713),g=d(g,
f,l,e,k[0],20,-373897302),e=d(e,g,f,l,k[5],5,-701558691),l=d(l,e,g,f,k[10],9,38016083),f=d(f,l,e,g,k[15],14,-660478335),g=d(g,f,l,e,k[4],20,-405537848),e=d(e,g,f,l,k[9],5,568446438),l=d(l,e,g,f,k[14],9,-1019803690),f=d(f,l,e,g,k[3],14,-187363961),g=d(g,f,l,e,k[8],20,1163531501),e=d(e,g,f,l,k[13],5,-1444681467),l=d(l,e,g,f,k[2],9,-51403784),f=d(f,l,e,g,k[7],14,1735328473),g=d(g,f,l,e,k[12],20,-1926607734),e=c(g^f^l,e,g,k[5],4,-378558),l=c(e^g^f,l,e,k[8],11,-2022574463),f=c(l^e^g,f,l,k[11],16,1839030562),
g=c(f^l^e,g,f,k[14],23,-35309556),e=c(g^f^l,e,g,k[1],4,-1530992060),l=c(e^g^f,l,e,k[4],11,1272893353),f=c(l^e^g,f,l,k[7],16,-155497632),g=c(f^l^e,g,f,k[10],23,-1094730640),e=c(g^f^l,e,g,k[13],4,681279174),l=c(e^g^f,l,e,k[0],11,-358537222),f=c(l^e^g,f,l,k[3],16,-722521979),g=c(f^l^e,g,f,k[6],23,76029189),e=c(g^f^l,e,g,k[9],4,-640364487),l=c(e^g^f,l,e,k[12],11,-421815835),f=c(l^e^g,f,l,k[15],16,530742520),g=c(f^l^e,g,f,k[2],23,-995338651),e=h(e,g,f,l,k[0],6,-198630844),l=h(l,e,g,f,k[7],10,1126891415),
f=h(f,l,e,g,k[14],15,-1416354905),g=h(g,f,l,e,k[5],21,-57434055),e=h(e,g,f,l,k[12],6,1700485571),l=h(l,e,g,f,k[3],10,-1894986606),f=h(f,l,e,g,k[10],15,-1051523),g=h(g,f,l,e,k[1],21,-2054922799),e=h(e,g,f,l,k[8],6,1873313359),l=h(l,e,g,f,k[15],10,-30611744),f=h(f,l,e,g,k[6],15,-1560198380),g=h(g,f,l,e,k[13],21,1309151649),e=h(e,g,f,l,k[4],6,-145523070),l=h(l,e,g,f,k[11],10,-1120210379),f=h(f,l,e,g,k[2],15,718787259),g=h(g,f,l,e,k[9],21,-343485551);n[0]=a(e,n[0]);n[1]=a(g,n[1]);n[2]=a(f,n[2]);n[3]=
a(l,n[3])}var p="0123456789abcdef".split("");return function(a){var b=a;/[\x80-\xFF]/.test(b)&&(b=unescape(encodeURI(b)));var c=b.length;a=[1732584193,-271733879,-1732584194,271733878];var d;for(d=64;d<=b.length;d+=64){for(var f=b.substring(d-64,d),l=[],h=void 0,h=0;64>h;h+=4)l[h>>2]=f.charCodeAt(h)+(f.charCodeAt(h+1)<<8)+(f.charCodeAt(h+2)<<16)+(f.charCodeAt(h+3)<<24);n(a,l)}b=b.substring(d-64);f=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];for(d=0;d<b.length;d++)f[d>>2]|=b.charCodeAt(d)<<(d%4<<3);f[d>>2]|=
128<<(d%4<<3);if(55<d)for(n(a,f),d=0;16>d;d++)f[d]=0;f[14]=8*c;n(a,f);for(b=0;b<a.length;b++){c=a;d=b;f=a[b];l="";for(h=0;4>h;h++)l+=p[f>>8*h+4&15]+p[f>>8*h&15];c[d]=l}return a.join("")}}();m.prototype._gurl=function(){var a=window.location;return this.normalize_url(a.pathname+a.search)};m.prototype.get_dummy_product_for_facebook=function(a){return{product_id:"adroll_dummy_product",product_group:a,product_action:null,product_category:null}};m.prototype.facebook_dummy_product_enabled=function(){return!0};
m.prototype.extract_pid=function(a,c,b){function d(a){return a?(a=new RegExp(a,"gi"),!!a.exec(k)):null}a||(a={});var h=null,n=null,p=null,q=null,k=this._gurl(),e=this.get_external_data();e&&(n=e.product_id,h=e.product_group,p=e.product_action,q=e.adroll_product_category_id);if(!n&&a.regexp_group&&!("string"===a.regexp_group&&a.regexp_group instanceof String)&&"html"===a.regexp_group.scheme){if(d(a.blacklist_regexp)||!0!==d(a.regexp))return"";n=this.get_product_id_from_dom(a.regexp_group)}else if(!n){if(d(a.blacklist_regexp))return"";
n=this.get_product_id_from_url(k,a.regexp,a.regexp_group)}h||!a.product_group_group||"string"===a.product_group_group&&a.product_group_group instanceof String||"html"!==a.product_group_group.scheme?h||a.product_group_regexp&&(h=this.get_product_id_from_url(k,a.product_group_regexp,a.product_group_group)):h=this.get_product_id_from_dom(a.product_group_group);if(n)a={product_id:n,product_group:h,product_action:p,product_category:q};else if(this.facebook_dummy_product_enabled()&&"facebook"===c)a=this.get_dummy_product_for_facebook(h);
else return null;b&&b(a);return a};
m.prototype.get_pid=function(a){this.extract_pid(a,"adroll",function(a){if(a){var b=a.product_id,d=a.product_group,h=a.product_action,n=a.product_category;a=[];var p;if(b instanceof Array)for(p=0;p<b.length;p++)a.push(["adroll_product_id",this.normalize_var((b[p]+"").toLowerCase(),!0)]);else a.push(["adroll_product_id",this.normalize_var((b+"").toLowerCase(),!0)]);if(n instanceof Array)for(p=0;p<n.length;p++)a.push(["adroll_product_category_id",this.normalize_var((n[p]+"").toLowerCase(),!0)]);else n&&
a.push(["adroll_product_category_id",this.normalize_var((n+"").toLowerCase(),!0)]);d&&a.push(["adroll_product_group",this.normalize_var((d+"").toLowerCase(),!0)]);h&&a.push(["adroll_product_action",this.normalize_var((h+"").toLowerCase(),!0)]);(b=this.external_data_to_qs(!0))&&a.push([b]);b=this._srv(this.buildurl("/p/"+this._global("adroll_adv_id")+"/",a));d=window.document.createElement("img");d.src=b;d.height=d.width=1;d.border=0;this._head().appendChild(d)}}.bind(this))};
m.prototype.get_product_id_from_dom=function(a){var c=null,b;a.path&&(window.jQuery?(b=window.jQuery(a.path),b.length&&(b=b.eq(0),c="text"===a.attribute?b.text():b.attr(a.attribute))):window.Prototype&&window.$$?(b=window.$$(a.path),b.length&&(b=b[0],c="text"===a.attribute?b.innerText&&!window.opera?b.innerText:b.innerHTML.stripScripts().unescapeHTML().replace(/[\n\r\s]+/g," "):b.readAttribute(a.attribute))):window.YUI?(b=window.YUI().use("node"),b.one&&(b=b.one(a.path),c=null,b&&(c="text"===a.attribute?
b.get("text"):b.getAttribute(a.attribute)))):window.$$&&(b=window.$$(a.path),b.length&&(b=b[0],c="text"===a.attribute?b.get("text"):b.getProperty(a.attribute))));if(c&&(c=c.replace(/^\s\s*/,"").replace(/\s\s*$/,""),a.regular_expression&&a.regular_expression_replace))if(b=new RegExp(a.regular_expression,"gi"),c=b.exec(c),null!==c){a=a.regular_expression_replace;for(b=0;b<c.length;b++)a=a.replace(new RegExp("\\\\"+b,"gi"),c[b]||"");c=a}else c="";return c};
m.prototype.get_product_id_from_url=function(a,c,b){var d=null;try{d=parseInt(b)}catch(h){}return null!==d&&!isNaN(d)&&c&&(a=(new RegExp(c,"gi")).exec(a),null!==a&&d in a)?a[d]:null};m.prototype.render_pixel_code=function(a,c){this._has_global("adroll_tpc")?this.render_pixel_code_exec(a,c):this.load_adroll_tpc(function(){this.render_pixel_code_exec(a,c)}.bind(this))};
m.prototype.render_pixel_code_exec=function(a,c){this.expire_old();var b=this._srv("/pixel"),d=window.document.createElement("script");d.setAttribute("async","true");d.type="text/javascript";var h=this.get_keywords();this.addLoadEvent(function(n){return function(){var p=[];try{200>=window.document.referrer.length&&p.push("adroll_s_ref="+window.escape(window.document.referrer))}catch(r){}try{p.push("keyw="+window.escape(h))}catch(r){}try{n._has_global("adroll_segments")&&p.push("name="+window.escape(n._global("adroll_segments").toLowerCase()))}catch(r){}try{var q=
n.get_conversion_value();q.conv_value&&p.push("conv_value="+q.conv_value);q.currency&&p.push("adroll_currency="+q.currency)}catch(r){}try{if(n._has_email()){var k=n._global("adroll_email"),k=k.replace(/^\s+|\s+$/g,""),e=k.toLowerCase();n.is_already_hashed(e)?p.push("hashed_email="+e):n.is_email_valid(k)?p.push("hashed_email="+n.md5(e)):(p.push("data_error=email"),p.push("data_error_message=invalid_format"))}}catch(r){}try{if(n._has_user_identifier()){var g=n._global("adroll_user_identifier"),g=g.replace(/^\s\s*/,
"").replace(/\s\s*$/,"");p.push("user_identifier="+n.md5(g))}}catch(r){}try{var f=n.external_data_to_qs(!0);f&&p.push(f)}catch(r){}try{var l=window.location.href.split("#")[0];500>=l.length&&p.push("arrfrr="+window.encodeURIComponent(l))}catch(r){}p=n.get_base_url(b,a,c,null,"",p);d.src=p;n._head().appendChild(d)}}(this));this.addLoadEvent(function(a){return function(){var b=a._global("adroll");if(b&&"object"===typeof b){b.identify=function(){return a.identify.apply(a,arguments)};b.track=function(){return a.track.apply(a,
arguments)};for(var c,d,e=0;e<b.length;e++)c=b[e][0],d=b[e][1],"identify"===c?a.identify.apply(a,d):"track"===c&&a.track.apply(a,d)}}}(this))};
m.prototype.render_ad_code=function(a,c,b,d){d=this._is_defined(d)?d:null;if(!this._is_defined(this._r[c])||d){var h=["width="+this._global("adroll_width"),"height="+this._global("adroll_height"),"x=0","y=0"];if(b)this.log("Rendering test ad "+b+" in space "+c),h.push("test_ad="+b),a=this.get_url(a,c,null,"ad",h);else if(d){this.log("Rendering adgroup "+d);b=this.macro_values();var n=this.macro_url_params(b,!1,!1,!1,!1);h.push(n);this.render_win_notification(b);a=this.get_url(a,c,d,null,h)}else this.log("Rendering ad space "+
c),a=this.get_url(a,c,null,"ad",h);this.expire_old();window.document.write('<script src="'+a+'">\x3c/script>');this._nad+=1;this._r[c]=1}};m.prototype.render_win_notification=function(a){if(a.adroll_cpm_macro&&a.adroll_win_notif){var c=(this._secure()?"https://":"http://")+a.adroll_win_notif+a.adroll_cpm_macro;a.adroll_ad_payload&&(a.adroll_rtb_dict&&a.adroll_rtb_dict.waap||/waap=1&/.test(a.adroll_win_notif)&&!this._is_defined(a.adroll_rtb_dict))&&(c+="&ad_payload="+a.adroll_ad_payload);this.imgRequest(c)}};
m.prototype.get_base_url=function(a,c,b,d,h,n){var p=a.split("?");a=p[0]+"/"+c+"/"+b+(d?"/"+d:"")+(h?"/"+h:"");var q="?";p[1]&&(a+="?"+p[1],q="&");var p=q+"no-cookies=1&pv=",k="";this.cookieEnabled(!1)?(k=window.escape(this.get_eids()),a+=q+"pv="+this.pv+"&cookie="+k):a+=p+this.pv;n&&(a+="&"+n.join("&"));a=this.add_tpc_to_url(a);if(a.length>this._url){this.del(this.__adc);if(a.length-k.length>this._url)return a;this.log("Url was too big, shrinking it");return this.get_url(c,b,d,h,n)}this.log("Generated url: "+
a);return a};m.prototype.get_url=function(a,c,b,d,h){var n=b?this._srv("/c"):this._srv("/r");return this.get_base_url(n,a,c,b,d,h)};m.prototype.get_eids=function(){if(this._global("adroll_ext_network")||this._global("adroll_optout"))return"";try{for(var a=this.get(this.__adc),c=a?a.split("|"):"",a=[],b=c.length-1;0<=b;b--)if(c[b]){var d=c[b].split(":");a.push([d[0],d[2]].join(":"))}return a.join("|")}catch(h){return this.del(this.__adc),""}};m.prototype.record_user=function(a){var c="adroll_conversion_value adroll_conversion_value_in_dollars adroll_segments adroll_email adroll_user_identifier adroll_currency".split(" "),b,d;a=a||{};var h={adroll_email:!0,adroll_user_identifier:!0};for(b=0;b<c.length;b++){try{this._unset_global(c[b])}catch(n){}if(c[b]in a){c[b]in h?this._set_global(c[b],window.escape(a[c[b]])):this._set_global(c[b],a[c[b]]);try{delete a[c[b]]}catch(n){}}}try{this._unset_global("adroll_custom_data")}catch(n){}for(d in a)if(a.hasOwnProperty(d)){this._set_global("adroll_custom_data",
a);break}this.render_pixel_code(this._global("adroll_adv_id"),this._global("adroll_pix_id"))};m.prototype.record_adroll_email=function(a){if(this._has_email()){var c=this._global("adroll_email"),c=c.replace(/^\s+|\s+$/g,""),b,d=c.toLowerCase();this.is_already_hashed(d)?b=d:this.is_email_valid(c)&&(b=this.md5(d));c="https://d.adroll.com/id/"+this._global("adroll_adv_id")+"/?hashed_email="+b;a&&(c+="&idsource="+a);this.imgRequest(c)}};
m.prototype._send_plain_text_identifiers=function(a,c,b){(a||c)&&b&&(b="https://d.adroll.com/id/"+this._global("adroll_adv_id")+"/?idsource="+b,a&&(a=a.replace(/^\s+|\s+$/g,"").toLowerCase(),b+="&email="+window.encodeURIComponent(a)+"&hashed_email="+this.md5(a)),c&&(b+="&user_identifier="+window.encodeURIComponent(c)),this.imgRequest(b))};m.prototype._has_email=function(){return this._has_global("adroll_email")&&"username@example.com"!==this._global("adroll_email")};
m.prototype._has_user_identifier=function(){return this._has_global("adroll_user_identifier")&&"example_user_id"!==this._global("adroll_user_identifier")};m.prototype.is_already_hashed=function(a){return/^[a-f0-9]{32}$/.test(a)};m.prototype.is_email_valid=function(a){return/[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/.test(a)};
m.prototype.identify=function(a,c){(a.email||a.userId)&&this._send_plain_text_identifiers(a.email,a.userId,c||"adroll-identify");a.email&&this._set_global("adroll_email",a.email);var b=this.copyObj(a,["email","userId"]);b&&(b="https://d.adroll.com/uat/"+this._global("adroll_adv_id")+"/"+this._global("adroll_pix_id")+"/?user_attributes="+window.encodeURIComponent(this.jsonStringify(b)),c&&(b+="&idsource="+c),this.imgRequest(b));this._queueAndCallback("identify",[a,c])};
m.prototype.track=function(a,c){if(a){var b="https://d.adroll.com/uev/"+this._global("adroll_adv_id")+"/"+this._global("adroll_pix_id")+"/?event_name="+window.encodeURIComponent(a),d=this.copyObj(c);d&&(b+="&event_attributes="+window.encodeURIComponent(this.jsonStringify(d)));this.imgRequest(b);this._queueAndCallback("track",[a,c])}};
m.prototype._registerCallback=function(a,c,b){this.callbacks=this.callbacks||{};this.callbackNames=this.callbackNames||[];this.callbacks[a]=this.callbacks[a]||[];if(!("function"!==typeof c||-1<this.callbackNames.indexOf(b))&&(this.callbackNames.push(b),this.callbacks[a].push(c),this.callbackQueues&&this.callbackQueues[a]&&this.callbackQueues[a].length))for(b=0;b<this.callbackQueues[a].length;b++)c.apply(null,this.callbackQueues[a][b])};
m.prototype._queueAndCallback=function(a,c){this.callbackQueues=this.callbackQueues||{};this.callbackQueues[a]=this.callbackQueues[a]||[];this.callbackQueues[a].push(c);if(this.callbacks&&this.callbacks[a]&&this.callbacks[a].length)for(var b=0;b<this.callbacks[a].length;b++)this.callbacks[a][b].apply(null,c)};m.prototype.registerIdentifyCallback=function(a,c){this._registerCallback("identify",a,c)};m.prototype.registerTrackCallback=function(a,c){this._registerCallback("track",a,c)};m.prototype._is_defined=function(a){return"undefined"!==typeof a};m.prototype.normalize_var=function(a,c){if(!a)return"";a=a.toString().substr(0,this._kwl).replace(/,/gi,".");c&&(a=window.escape(a));return a};m.prototype.get_keywords=function(){try{var a=window.document.referrer||"";if(!a)return"";var c=this.parseUri(a);return-1!==c.host.indexOf("www.google.")?c.queryKey.q.substring(0,this._kwl):-1!==c.host.indexOf("bing.com")?c.queryKey.q.substring(0,this._kwl):""}catch(b){return""}};
m.prototype.parseUri=function(a){a=/^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/)?((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/.exec(a);for(var c={queryKey:{}},b=14,d="source protocol authority userInfo user password host port relative path directory file query anchor".split(" ");b--;)c[d[b]]=a[b]||"";c[d[12]].replace(/(?:^|&)([^&=]*)=?([^&]*)/g,function(a,b,d){b&&(c.queryKey[b]=d)});return c};
m.prototype._secure=function(){return!0};m.prototype._protocol=function(){return window.document.location.protocol};m.prototype._native=function(){try{return"http"!==this._protocol().slice(0,4)}catch(a){return!0}};m.prototype._srv=function(a){a=this._is_defined(a)?a:"";return this.add_tpc_to_url("https://d.adroll.com"+a)};m.prototype._cdn=function(a){a=this._is_defined(a)?a:"";return"https://s.adroll.com"+a};m.prototype.log=function(a){this._logs.push(a)};
m.prototype.read_log=function(a){return this._logs.join(a?"\n":"<br>\n")};m.prototype.normalize_url=function(a){return a.toLowerCase()};m.prototype.imgRequest=function(a){var c=new window.Image;c.src=this.add_tpc_to_url(a);c.setAttribute("width","1");c.setAttribute("height","1");c.setAttribute("border","0");this._head().appendChild(c)};m.prototype.copyObj=function(a,c){if(!a)return null;var b={},d=0,h;for(h in a)!a.hasOwnProperty(h)||c&&-1!==c.indexOf(h)||(d++,b[h]=a[h]);return d?b:null};
m.prototype.add_tpc_to_url=function(a){var c=this._global("adroll_tpc");if(!a||!c)return a;var b=this.parseUri(a);if(b.queryKey.adroll_tpc||"d.adroll.com"!==b.host&&"d.adroll.com"!==b.host+":"+b.port)return a;var d=a.indexOf("?"),h=b="";-1!==d?(b=a.slice(0,d+1),h="&"+a.slice(d+1)):(d=a.indexOf("#",-1===d?0:d),-1===d?b=a+"?":(b=a.slice(0,d)+"?",h=a.slice(d)));return b+"adroll_tpc="+encodeURIComponent("hsts="+c)+h};
m.prototype.load_adroll_tpc=function(a){11<=parseFloat(this.getSafariVersion())?this.check_tpc_optout(function(c){c?this._set_global("adroll_optout",!0):this.get_tpc_cookie(function(b){this._set_global("adroll_tpc",b||null);a.call(this)}.bind(this))}.bind(this)):a.call(this)};window.__adroll=window.__adroll||new m;}());
(function(a){a.adroll_optout=!1;a.adroll_ext_network=null;a.adroll_callbacks="undefined"===typeof a.adroll_callbacks?[]:a.adroll_callbacks;a.__adroll.render_pixel_code(a.adroll_adv_id,a.adroll_pix_id)})(window);