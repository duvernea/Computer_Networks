(function(){var window=this;var d=this,aa=function(){},ba=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==b&&"undefined"==typeof a.call)return"object";return b};var e=function(){this.a="";this.b=ca};e.prototype.s=!0;e.prototype.j=function(){return this.a};var da=function(a){return a instanceof e&&a.constructor===e&&a.b===ca?a.a:"type_error:TrustedResourceUrl"},ca={},ea=function(a){var b=new e;b.a=a;return b};var g=function(){this.l="";this.A=fa};g.prototype.s=!0;g.prototype.j=function(){return this.l};var ha=/^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i,fa={},ia=function(a){var b=new g;b.l=a;return b};ia("about:blank");var h;a:{var ja=d.navigator;if(ja){var ka=ja.userAgent;if(ka){h=ka;break a}}h=""};var m=function(a){m[" "](a);return a};m[" "]=aa;var p=function(){return d.googletag||(d.googletag={})};var q={1:"pagead2.googlesyndication.com",2:"pubads.g.doubleclick.net",3:"securepubads.g.doubleclick.net",7:.02,10:0,13:1500,16:.01,17:1,20:0,23:.001,24:200,27:.01,28:0,29:.01,33:"pagead2.googlesyndication.com",34:1,37:.01,38:.001,47:1E-4,53:"",54:0,57:.05,58:1,159:1,60:0,63:0,65:.01,66:1E-5,67:0,68:0,69:.99,71:.05,73:.001,74:.05,75:"",161:0,162:0,163:"",76:"",77:.001,78:.01,88:1,79:.95,81:.001,83:1E-4,84:0,85:.01,87:.2,89:.995,90:.01,91:.01,92:0,93:0,94:0,95:0,96:.995,97:.001,98:0,99:.01,101:.001,103:.01,104:"/pagead/js/rum.js",105:0,106:"1-0-13",107:"1-0-13",110:.001,113:1,114:.01,115:.01,116:.001,117:.01,118:.05,123:.01,120:.05,121:.01,124:.05,122:.01,125:.01,126:.01,127:.001,129:.01,130:1,131:"",132:.01,156:0,133:0,134:.01,135:0,136:1,137:.001,138:"",143:.001,144:.001,141:1,151:.01,157:.05,158:0,164:0,150:"",153:.05,154:1,155:0,165:0,166:0,160:21060970,152:[]};q[6]=function(a,b){try{for(var c=null;c!=a;c=a,a=a.parent)switch(a.location.protocol){case "https:":return!0;case "file:":return!!b;case "http:":return!1}}catch(f){}return!0}(window);q[49]=(new Date).getTime();q[36]=/^true$/.test(!1);q[46]=/^true$/.test(!1);q[148]=/^true$/.test(!1);var r=function(){var a={},b;for(b in q)a[b]=q[b];this.a=a};r.prototype.get=function(a){return this.a[a]};r.prototype.set=function(a,b){this.a[a]=b};r.b=void 0;r.a=function(){return r.b?r.b:r.b=new r};var t=["21060621","21060622","21060833","21060713"],la=r.a().a,ma=p(),na=ma._vars_,v;for(v in na)la[v]=na[v];ma._vars_=la;var oa=function(){return"158"},qa=p();qa.hasOwnProperty("getVersion")||(qa.getVersion=oa);var ra=function(){var a=aa;return function(){if(a){var b=a;a=null;b()}}};var sa=function(a,b){a.addEventListener?a.addEventListener("message",b,void 0):a.attachEvent&&a.attachEvent("onmessage",b)};var ua=function(){var a=d;this.b=a=void 0===a?d:a;this.B="https://securepubads.g.doubleclick.net/static/3p_cookie.html";this.a=2;this.f=[];this.o=!1;a:{var b=[d.top];a=[];for(var c=0,f;f=b[c++];){a.push(f);try{if(f.frames)for(var l=f.frames.length,u=0;u<l&&50>b.length;++u)b.push(f.frames[u])}catch(E){}}b:{try{var x=d.parent;if(x&&x!=d){var k=x;break b}}catch(E){}k=null}(l=k)&&a.unshift(l);a.unshift(d);var n;for(l=0;l<a.length;++l)try{var y=a[l],pa=w(y);if(pa){this.a=ta(pa);if(2!=this.a)break a;var G;if(G=!n){k=void 0;try{if(k=!!y&&null!=y.location.href)c:{try{m(y.foo);k=!0;break c}catch(E){}k=!1}G=k}catch(E){G=!1}}G&&(n=y)}}catch(E){}this.b=n||this.b}},z=function(a){if(2!=va(a)){for(var b=1==va(a),c=0;c<a.f.length;c++)try{a.f[c](b)}catch(f){}a.f=[]}},wa=function(a){var b=w(a.b);b&&2==a.a&&(a.a=ta(b))},va=function(a){wa(a);return a.a},xa=function(a){var b=A;b.f.push(a);if(2!=b.a)z(b);else if(b.o||(sa(b.b,function(a){var c=w(b.b);if(c&&a.source==c&&2==b.a){switch(a.data){case "3p_cookie_yes":b.a=1;break;case "3p_cookie_no":b.a=0}z(b)}}),b.o=!0),w(b.b))z(b);else{a=b.b.document.createElement("iframe");a.src=b.B;a.name="detect_3p_cookie";a.style.visibility="hidden";a.style.height="0";a.onload=function(){wa(b);z(b)};try{b.b.document.body.appendChild(a)}catch(c){}}},ya=function(a,b){try{return!!a.frames[b]}catch(c){return!1}},w=function(a){return a.frames[m("detect_3p_cookie")]||null},ta=function(a){return ya(a,"3p_cookie_yes")?1:ya(a,"3p_cookie_no")?0:2};var B=null;var za=function(a,b){var c="script";c=void 0===c?"":c;var f=a.createElement("link");f.rel="preload";b instanceof e?b=da(b):b instanceof g?b=b instanceof g&&b.constructor===g&&b.A===fa?b.l:"type_error:SafeUrl":(b instanceof g||(b=b.s?b.j():String(b),ha.test(b)||(b="about:invalid#zClosurez"),b=ia(b)),b=b.j());f.href=b;c&&(f.as=c);(a=a.getElementsByTagName("head")[0])&&a.appendChild(f)};var Aa=/^\.google\.(com?\.)?[a-z]{2,3}$/,Ba=/\.(cn|com\.bi|do|sl)$/,C=function(a){return Aa.test(a)&&!Ba.test(a)},D=d,A,Ca=function(a,b){a="https://"+("adservice"+b+"/adsid/integrator."+a);b=["domain="+encodeURIComponent(d.location.hostname)];F[3]>=+new Date&&b.push("adsid="+encodeURIComponent(F[1]));return a+"?"+b.join("&")},F,H,I=function(){D=d;F=D.googleToken=D.googleToken||{};var a=+new Date;F[1]&&F[3]>a&&0<F[2]||(F[1]="",F[2]=-1,F[3]=-1,F[4]="",F[6]="");H=D.googleIMState=D.googleIMState||{};C(H[1])||(H[1]=".google.com");"array"==ba(H[5])||(H[5]=[]);"boolean"==typeof H[6]||(H[6]=!1);"array"==ba(H[7])||(H[7]=[]);"number"==typeof H[8]||(H[8]=0)},Da=function(a){try{a()}catch(b){d.setTimeout(function(){throw b;},0)}},Fa=function(a){"complete"==d.document.readyState||"loaded"==d.document.readyState||d.currentScript&&d.currentScript.async?Ea(3):a()},Ga=0,J={g:function(){return 0<H[8]},m:function(){H[8]++},u:function(){0<H[8]&&H[8]--},v:function(){H[8]=0},c:function(){},w:function(){return!1},i:function(){return H[5]},h:Da},K={g:function(){return H[6]},m:function(){H[6]=!0},u:function(){H[6]=!1},v:function(){H[6]=!1},c:function(){},w:function(){return".google.com"!=H[1]&&2<++Ga},i:function(){return H[7]},h:function(a){Fa(function(){Da(a)})}},Ea=function(a){if(1E-5>Math.random()){d.google_image_requests||(d.google_image_requests=[]);var b=d.document.createElement("img");b.src="https://pagead2.googlesyndication.com/pagead/gen_204?id=imerr&err="+a;d.google_image_requests.push(b)}};J.c=function(){if(!J.g()){var a=d.document,b=function(b){var c=Ca("js",b);za(a,c);b=a.createElement("script");b.type="text/javascript";b.onerror=function(){return d.processGoogleToken({},2)};c=ea(c);b.src=da(c);try{(a.head||a.body||a.documentElement).appendChild(b),J.m()}catch(u){}},c=H[1];b(c);".google.com"!=c&&b(".google.com");d.setTimeout(function(){return d.processGoogleToken({},1)},1E3)}};K.c=function(){if(!K.g()){var a=d.document,b=Ca("sync.js",H[1]);za(a,b);b=b.replace(/[\W]/g,function(a){return"&#"+a.charCodeAt()+";"});var c=m("script"),f="<"+c+' src="'+b+'"></'+c+">"+("<"+c+'>processGoogleTokenSync({"newToken":"FBS"},5);</'+c+">");Fa(function(){a.write(f);K.m()})}};var Ha=function(a,b){I();var c=D.googleToken[5]||0;a&&(0!=c||F[3]>=+new Date?b.h(a):(b.i().push(a),b.c()));F[3]>=+new Date&&F[2]>=+new Date||b.c()},Ja=function(a){d.processGoogleToken=d.processGoogleToken||function(a,c){return Ia(J,a,c)};Ha(a,J)},Ka=function(a){d.processGoogleTokenSync=d.processGoogleTokenSync||function(a,c){return Ia(K,a,c)};Ha(a,K)},La=function(a){A=A||new ua;xa(function(b){b&&a()})},Ia=function(a,b,c){b=void 0===b?{}:b;c=void 0===c?0:c;var f=b.newToken||"",l=parseInt(b.freshLifetimeSecs||"",10)||3600,u=parseInt(b.validLifetimeSecs||"",10)||86400,x=b["1p_jar"]||"";b=b.pucrd||"";I();1==c?a.v():a.u();Ea(c);if(!f&&a.w())C(".google.com")&&(H[1]=".google.com"),a.c();else{var k=D.googleToken=D.googleToken||{},n=!(F[3]>=+new Date)&&(5==c||4==c||2==c);if(0==c&&f&&"string"==typeof f&&0<l&&0<u&&"string"==typeof x||n)n=+new Date,k[5]=c,k[1]=f,k[2]=n+1E3*l,k[3]=n+1E3*u,k[4]=x,k[6]=b,I();if(f||!a.g()){c=a.i();for(f=0;f<c.length;f++)a.h(c[f]);c.length=0}}};m("partner.googleadservices.com");m("www.googletagservices.com");var Ma="",Na="",Oa=r.a().get(46)&&!r.a().get(6);Ma=Oa?"http:":"https:";Na=r.a().get(Oa?2:3);var L=p(),M=L.fifWin||window,N=M.document,Pa=[],Qa=p();Qa.hasOwnProperty("cmd")||(Qa.cmd=Pa);if(L.evalScripts)L.evalScripts();else{var Ra=N.currentScript,O;var P=r.a(),Q=P.get(76);if(Q)O=Q;else{var R=P.get(131),Sa="",S,Ta="/gpt/pubads_impl_";if(R){"21061130"!==R&&(Sa="?eid="+R);var Ua=P.get(162);S="158";"21061058"===R&&Ua&&(Ta+="control_",S=Ua)}Q=Ma+"//"+Na+Ta+(S||"158")+".js"+Sa;r.a().set(76,Q);O=Q}var Va=O;-1!=h.indexOf("iPhone")&&r.a().set(79,0);var Wa=r.a().get(160);Wa&&r.a().get(152).push(Wa);var T;if(!(T=r.a().get(138))){var Xa=r.a().get(137),Ya;if(null===B){B="";try{var Za=d.top.location.hash;if(Za){var $a=Za.match(/\bdeid=([\d,]+)/);B=$a?$a[1]:""}}catch(a){}}var ab=(Ya=B)&&Ya.match(new RegExp("\\b("+t.join("|")+")\\b")),U;if(ab)U=ab[0];else{var V;if(Xa)a:{var bb=t.length*Xa;if(!(1E-4>Math.random())){var W=Math.random();if(W<bb){try{var cb=new Uint32Array(1);d.crypto.getRandomValues(cb);W=cb[0]/65536/65536}catch(a){W=Math.random()}V=t[Math.floor(W*t.length)];break a}}V=null}else V=null;U=V}T=U}var X=T;if(X)try{var Y=r.a().get(150);Y&&(I(),C(Y)&&(H[1]=Y));r.a().set(138,X)}catch(a){}var Z=M.performance;if(Z&&Z.now){var db=Z.now();(M.google_js_reporting_queue=M.google_js_reporting_queue||[]).push({label:"1",type:9,value:db,uniqueId:"rt."+Math.random()})}if(!("complete"==N.readyState||"loaded"==N.readyState||Ra&&Ra.async)){var eb="gpt-impl-"+Math.random();try{N.write('<script id="'+eb+'" src="'+Va+'">\x3c/script>'),L._syncTagged_=!0}catch(a){}if(N.getElementById(eb))switch(L._loadStarted_=!0,X){case "21060833":var fb=ra();La(fb);Ka(fb);break;case "21060622":case "21060713":Ka(null)}}if(!L._loadStarted_){switch(X){case "21060833":var gb=ra();La(gb);Ja(gb);break;case "21060622":case "21060713":Ja(null)}var hb=N.createElement("script");hb.src=Va;hb.async=!0;(N.head||N.body||N.documentElement).appendChild(hb);L._loadStarted_=!0}};}).call(this.googletag&&googletag.fifWin?googletag.fifWin.parent:this)
