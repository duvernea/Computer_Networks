var rp_account_config={rp_feature_set:{}};rp_account_config = {"rp_feature_set":{"jit_sync_android":true}};

var RubiconAdServing=RubiconAdServing||{};RubiconAdServing.AdSizes={1:{dim:"468x60"},2:{dim:"728x90"},3:{dim:"234x60"},4:{dim:"88x31"},5:{dim:"120x90"},6:{dim:"120x60"},7:{dim:"125x125"},8:{dim:"120x600"},9:{dim:"160x600"},10:{dim:"300x600"},11:{dim:"180x150"},12:{dim:"120x240"},13:{dim:"200x200"},14:{dim:"250x250"},15:{dim:"300x250"},16:{dim:"336x280"},17:{dim:"240x400"},18:{dim:"180x150"},19:{dim:"300x100"},20:{dim:"0x0"},21:{dim:"0x0"},22:{dim:"0x0"},23:{dim:"120x90"},24:{dim:"160x90"},25:{dim:"180x90"},26:{dim:"200x90"},27:{dim:"468x15"},28:{dim:"728x15"},29:{dim:"300x850"},30:{dim:"1x1"},31:{dim:"980x120"},32:{dim:"250x360"},33:{dim:"180x500"},34:{dim:"580x400"},35:{dim:"980x150"},36:{dim:"140x350"},37:{dim:"468x400"},38:{dim:"930x180"},39:{dim:"750x100"},40:{dim:"750x200"},41:{dim:"750x300"},42:{dim:"2x4"},43:{dim:"320x50"},44:{dim:"300x50"},45:{dim:"480x75"},46:{dim:"480x60"},47:{dim:"240x37"},48:{dim:"300x300"},49:{dim:"336x280"},50:{dim:"1024x90"},51:{dim:"768x90"},52:{dim:"1004x768"},53:{dim:"1024x768",interstitial:!0},54:{dim:"300x1050"},55:{dim:"970x90"},56:{dim:"900x250"},57:{dim:"970x250"},58:{dim:"1000x90"},59:{dim:"320x80"},60:{dim:"320x150"},61:{dim:"1000x1000"},62:{dim:"980x50"},63:{dim:"1000x40"},64:{dim:"580x500"},65:{dim:"640x480"},66:{dim:"930x600"},67:{dim:"320x480",interstitial:!0},68:{dim:"1800x1000"},69:{dim:"480x400"},70:{dim:"1100x210"},71:{dim:"852x210"},72:{dim:"320x320"},73:{dim:"320x160"},74:{dim:"1250x240"},75:{dim:"1250x250"},76:{dim:"265x720"},77:{dim:"265x600"},78:{dim:"980x240"},79:{dim:"980x300"},80:{dim:"980x400"},81:{dim:"450x150"},82:{dim:"300x75"},83:{dim:"480x300"},84:{dim:"320x480"},85:{dim:"300x120"},86:{dim:"300x250"},87:{dim:"950x90"},88:{dim:"300x600"},89:{dim:"300x1200"},90:{dim:"548x150"},91:{dim:"300x250"},92:{dim:"728x90"},93:{dim:"160x600"},94:{dim:"970x310"},95:{dim:"970x100"},96:{dim:"970x210"},97:{dim:"467x120"},98:{dim:"1000x120"},99:{dim:"300x250"},100:{dim:"300x250"},101:{dim:"480x320",interstitial:!0},102:{dim:"768x1024",interstitial:!0},103:{dim:"480x280"},104:{dim:"1250x360"},105:{dim:"250x800"},106:{dim:"300x480"},107:{dim:"440x220"},108:{dim:"320x240"},109:{dim:"468x120"},110:{dim:"994x66"},111:{dim:"1250x480"},112:{dim:"1366x40"},113:{dim:"1000x300"},114:{dim:"505x500"},115:{dim:"480x150"},116:{dim:"950x250"},117:{dim:"320x100"},118:{dim:"160x410"},119:{dim:"256x600"},120:{dim:"994x250"},121:{dim:"1280x800",interstitial:!0},122:{dim:"800x1280",interstitial:!0},123:{dim:"650x110"},124:{dim:"640x150"},125:{dim:"800x250"}};var RubiconAdServing=RubiconAdServing||{};RubiconAdServing.Utils={getProtocol:function(){return"https"==(RubiconAdServing.Utils.isIframe()&&RubiconAdServing.Utils.isIframeCrossDomain()?location.href.split(":"):window.top.location.href.split(":"))[0]?"https://":"http://"},isIframe:function(){return window!=top},isIframeCrossDomain:function(){var t=!1;try{window.top.location.href||(t=!0)}catch(e){t=!0}return t}},RubiconAdServing.Creatives=function(){RubiconAdServing.creatives=RubiconAdServing.creatives||{},this.setAd=function(t,e){t&&e&&(RubiconAdServing.creatives[t]=e)},this.getAd=function(t){return t?RubiconAdServing.creatives[t]:null},this.getAdBySlot=function(t){return this.getAd(t)},this.getAdByZone=function(t,e,i){var r=t+"/"+e+"/"+i;return this.getAd(r)},this.renderAdBySlot=function(t){var e=this.getAd(t);e&&"ok"==e.status&&e.script&&document.write("<script>"+e.script+"<\/script>")},this.renderAdByZone=function(t,e,i){var r=t+"/"+e+"/"+i,n=this.getAd(r);n&&"ok"==n.status&&n.script&&document.write("<script>"+n.script+"<\/script>")}},RubiconAdServing.Requests=function(){RubiconAdServing.requests=RubiconAdServing.requests||{},RubiconAdServing.timers=RubiconAdServing.timers||{},this.addRequest=function(t,e){RubiconAdServing.requests[t]=e},this.getRequest=function(t){return RubiconAdServing.requests[t]},this.sendRequest=function(t){var e,i=this.getRequest(t);i&&i.slot&&(i.context.rp_debug?document.write(i.url):(e=i.slot.shouldRouteToRFM()?'<div id="'+i.context.rp_div_id+'"><script type="text/javascript" src="'+i.url+'"><\/script></div>':"iframe"==i.context.rp_adtype?'<iframe frameborder="0" allowtransparency="true" hspace="0"  vspace="0" marginheight="0" marginwidth="0" scrolling="no"  width="'+i.context.rp_width+'px" height="'+i.context.rp_height+'px" src="'+i.url+'"></iframe>':'<script type="text/javascript" src="'+i.url+'"><\/script>',i.timer&&(RubiconAdServing.timers[t]=new Date),document.write(e)))}},RubiconAdServing.timeRequest=function(t,e,i,r){var n=new Date;if(RubiconAdServing.timers.hasOwnProperty(t)){var o=RubiconAdServing.timers[t];delete RubiconAdServing.timers[t];var s=n-o,c=RubiconAdServing.Utils.getProtocol()+"stats.aws.rubiconproject.com/stats/latency/"+e+"/"+i+"/"+r+"/"+s,a=document.createElement("img");a.src=c,a.width=0,a.height=0,document.getElementsByTagName("body")[0].appendChild(a)}},RubiconAdServing.RubiconAd=function(){this.config={server:"revv",host:"optimized-by.rubiconproject.com",hosts:{revv:{beta:"staged-by.rubiconproject.com",prod:"optimized-by.rubiconproject.com"},rfm:{beta:"mrp.rubiconproject.com",prod:"mrp.rubiconproject.com"}}},this.default_context={rp_env:"prod",rp_adtype:"js",rp_kw:null,rp_gender:null,rp_age:null,rp_age_range:null,rp_age_dob:null,rp_ethnicity:null,rp_xpi:null,rp_page:null,rp_geo:{},rp_aso:{},rp_badvid:[],rp_fastlane:!1,rp_feature_set:{visibility:!0,expandable:!0,local_storage:!0,rfm_routing:!1,tablet_mapping:!1,first_party_data:!0,rtp_first_look:!1,rtp_data_collection:!1,jit_sync:!0,jit_sync_android:!1,floor_is_rtb_only:!0,custom_host:null,custom_host_sites:[],latency_sampling:0,latency_sampling_sites:[]},rp_dpf:!1,rp_navigator:null},this.mergeProperties=function(t,e){if(void 0===t||!t)return e;for(var i in e)void 0===t[i]?t[i]=e[i]:null!=t[i]&&"object"==typeof t[i]&&this.mergeProperties(t[i],e[i]);return t},this.init=function(e){try{if(this.default_context.rp_div_id="rp-"+new Number(Math.floor(1e6*Math.random())).toString(36),this.context=e?this.mergeProperties(e,this.default_context):this.default_context,this.browser=new p(this.context.rp_navigator||navigator),this.context.rp_zonesize){var i=this.context.rp_zonesize.split("-");this.context.rp_zone=i[0],this.context.rp_size_id=i[1]}if(this.context.rp_lat&&!this.isValidLat(this.context.rp_lat)&&delete this.context.rp_lat,this.context.rp_long&&!this.isValidLong(this.context.rp_long)&&delete this.context.rp_long,this.context.rp_geo&&this.context.rp_geo.latitude&&!this.isValidLat(this.context.rp_geo.latitude)&&delete this.context.rp_geo.latitude,this.context.rp_geo&&this.context.rp_geo.longitude&&!this.isValidLong(this.context.rp_geo.longitude)&&delete this.context.rp_geo.longitude,rp_account_config){if(this.context=this.mergeProperties(rp_account_config,this.context),rp_account_config.site_config){var r=rp_account_config.site_config[this.context.rp_site];r&&(this.context=this.mergeProperties(r,this.context),r.zone_config&&(this.context=this.mergeProperties(r.zone_config[this.context.rp_zone],this.context)))}this.shouldSplitTablet()&&this.context.tablet_map.site_id&&this.context.tablet_map.zone_id&&(this.context.rp_site=this.context.tablet_map.site_id,this.context.rp_zone=this.context.tablet_map.zone_id,this.context.rp_zonesize=this.context.rp_zone+"-"+this.context.rp_size_id)}if(this.context.rp_rtb_tier=this.context.rp_rtb_tier||this.context.rp_pmp_tier,this.context.rp_feature_set.floor_is_rtb_only&&(this.context.rp_rtb_floor=this.context.rp_floor||this.context.rp_rtb_floor,this.context.rp_floor=null),this.shouldRouteToRFM()&&(this.config.server="rfm"),this.context.rp_env&&(this.config.host=this.config.hosts[this.config.server][this.context.rp_env]||this.config.hosts[this.config.server].prod||this.config.host),this.context.rp_feature_set.custom_host){var n=this.context.rp_feature_set.custom_host_sites;if(t(n))for(var o=0;o<n.length;o++)if(n[o]==this.context.rp_site){this.config.host=this.context.rp_feature_set.custom_host;break}}this.context.rp_slot||(this.context.rp_slot=this.context.rp_site+"_"+this.context.rp_size_id),this.context.rp_host&&(this.config.host=this.context.rp_host)}catch(t){}},this.isValidLat=function(t){return null!=t&&t>=-90&&t<=90},this.isValidLong=function(t){return null!=t&&t>=-180&&t<=180},this.shouldSplitTablet=function(){return this.context.rp_feature_set.tablet_mapping&&this.browser.detectiPad()},this.shouldRouteToRFM=function(){return this.context.rp_feature_set.rfm_routing_always||this.context.rp_feature_set.rfm_routing&&this.browser.detectiPad()&&"js"==this.context.rp_adtype},this.start=function(){var o=!1,s=RubiconAdServing.Utils.getProtocol();if(!this.context.rp_fastlane||this.context.rp_feature_set.fastlane_eligible){var a;if("jsonp"!=this.context.rp_adtype)a=s+this.config.host+"/a/$account_id$/$site_id$/$zonesize$.$format$?",a+="$cb$$floor$$rtb_floor$$smart$$referrer$$smartfile$$storagetype$$localstorage$",a+="$keyword$$gender$$age$$agerange$$agedob$$ethnicity$$tracking$$user_key$$fbid$$xpi$",a+="$tg_i$$tg_v$$p_app$$p_device$$p_accept$$p_interstitial$$dpf$$rtb_tier$$aso$$block_keys$",a+="$p_geo$$p_lat$$p_long$$p_screen_res$$slot$$ad_id$$badvid$",this.shouldRouteToRFM()&&(a=s+this.config.host+"/ad_request?$div_id$$app_id$$pub_id$$rand_cb$",a+="$rfm_lat$$rfm_lng$$rfm_ad_size$");else{var p=this.context.rp_fastlane?"/a/api/fastlane.$format$":"/a/api/ads.$format$";a=s+this.config.host+p+"?enc=url&account_id=$account_id$&site_id=$site_id$&zone_id=$zone_id$&size_id=$size_id$",a+="$cb$$floor$$rtb_floor$$smart$$referrer$$smartfile$$storagetype$$localstorage$",a+="$keyword$$gender$$age$$agerange$$agedob$$ethnicity$$tracking$$user_key$$fbid$$xpi$",a+="$tg_i$$tg_v$$p_app$$p_device$$p_accept$$p_interstitial$$dpf$$rtb_tier$$aso$$block_keys$",a+="$p_geo$$p_lat$$p_long$$p_screen_res$$slot$$ad_id$$badvid$",this.context.rp_ae_spoof&&(a=this.context.rp_ae_spoof)}if(a+="$rp_secure$",a+="$digitrust.id$$digitrust.preference$",this.context.rp_account&&this.context.rp_site&&this.context.rp_zonesize){a=r("account_id",this.context.rp_account,a),a=r("site_id",this.context.rp_site,a),a=r("zonesize",this.context.rp_zonesize,a),a=r("zone_id",this.context.rp_zone,a),a=r("size_id",this.context.rp_size_id,a),a=r("format","iframe"==this.context.rp_adtype?"html":this.context.rp_adtype,a);var d=null;try{if(this.context.rp_page&&this.context.rp_page.length>0)d=escape(this.context.rp_page);else if(RubiconAdServing.Utils.isIframe()){var _=document.referrer;try{"string"==typeof window.parent.location.href&&"http"==window.parent.location.href.substr(0,4)&&(_=top.location.href||_)}catch(t){}_&&_.length>0&&(d=escape(_))}}catch(t){o=!0}if(a=i("referrer","rf",d,a),this.context.rp_feature_set.aso_override||(this.context.rp_aso={}),!this.context.rp_feature_set.expandable||"exp"in this.context.rp_aso||(this.context.rp_aso.exp=this.getSupportExpandableAd()?1:null),!this.context.rp_feature_set.visibility||"pos"in this.context.rp_aso||(this.context.rp_aso.pos=n()),a=this.appendObject("aso","p",this.context.rp_aso,a,"_"),a=i("slot","ad_slot",this.context.rp_slot,a),a=i("ad_id","ad_id",this.context.rp_ad,a),a=i("p_screen_res","p_screen_res",c(),a),a=i("cb","cb",Math.random(),a),a=i("keyword","kw",this.context.rp_kw,a),a=i("gender","gender",this.context.rp_gender,a),a=i("age","age",this.context.rp_age,a),a=i("agerange","age_range",this.context.rp_age_range,a),a=i("agedob","age_dob",this.context.rp_age_dob,a),a=i("ethnicity","ethnicity",this.context.rp_ethnicity,a),null!=this.context.rp_lat&&null!=this.context.rp_long?(a=i("p_lat","p_lat",this.context.rp_lat,a),a=i("p_long","p_long",this.context.rp_long,a)):(a=i("p_lat","p_lat",null,a),a=i("p_long","p_long",null,a)),a=i("xpi","xpi",this.context.rp_xpi,a),this.context.rp_rtb_floor){var u={standard:1,override:2,priority:3,private:4},l=null;this.context.rp_rtb_tier&&this.context.rp_rtb_tier in u&&(l=u[this.context.rp_rtb_tier]),a=i("rtb_floor","rp_floor",this.context.rp_rtb_floor,a),a=i("rtb_tier","rp_pmp_tier",l,a),a=i("dpf","rp_dpf",this.context.rp_dpf?"1":null,a)}else a=i("rtb_floor","rp_floor",null,a),a=i("rtb_tier","rp_pmp_tier",null,a),a=i("dpf","rp_dpf",null,a);a=this.context.rp_floor?i("floor","rp_hard_floor",this.context.rp_floor,a):i("floor","rp_hard_floor",null,a),a=i("block_keys","p_block_keys",this.context.rp_blocks,a),a=i("tracking","tk_code",this.context.rp_tracking,a),a=i("user_key","tk_user_key",this.context.rp_user_key,a),a=i("smart","tk_st",o?"0":"1",a),a=i("smartfile","tk_sf",this.context.rp_smartfile?"1":null,a),this.context.rp_feature_set.first_party_data?(a=this.appendObject("tg_i","tg_i",this.context.rp_inventory,a),a=this.appendObject("tg_v","tg_v",this.context.rp_visitor,a)):(a=this.appendObject("tg_i","tg_i",null,a),a=this.appendObject("tg_v","tg_v",null,a)),a=i("div_id","div",this.context.rp_div_id,a,!0),a=i("app_id","app",this.context.rp_app_id,a),a=i("pub_id","pub",this.context.rp_publisher_id,a),a=i("rand_cb","id",Number(1e17*Math.random()).toString(36),a),a=i("rfm_lat","lat",this.context.rp_geo.latitude,a),a=i("rfm_lng","lng",this.context.rp_geo.longitude,a);var h,f=!1;if(RubiconAdServing.AdSizes&&this.context.rp_size_id&&RubiconAdServing.AdSizes[this.context.rp_size_id]&&("0x0"==(h=RubiconAdServing.AdSizes[this.context.rp_size_id].dim)&&(h=null),f=RubiconAdServing.AdSizes[this.context.rp_size_id].interstitial),a=i("rfm_ad_size","sze",h,a),a=i("fbid","x_fbid",this.context.rp_facebook_device_id,a),a=this.appendObject("p_app","p_app",this.context.rp_app,a),a=this.appendObject("p_device","p_device",this.context.rp_device,a),a=this.appendObject("p_geo","p_geo",this.context.rp_geo,a),a=this.appendObject("p_accept","p_accept",this.context.rp_accept,a),a=i("p_interstitial","p_instl",f?1:null,a),this.context.rp_badvid&&t(this.context.rp_badvid)){for(var g="",b=!1,v=0;v<this.context.rp_badvid.length;v++)b=this.context.rp_badvid[v],parseInt(b)==b&&(g+=b+",");g.length&&(g=g.substr(0,g.length-1)),a=i("badvid","x_badvid",g,a)}else a=i("badvid","x_badvid",null,a);var x=s.match(/^https/)?"1":null;a=i("rp_secure","rp_secure",x,a);var $,m=null,w=null;try{$=typeof DigiTrust.getIdentitySync}catch(t){$=!1}if(this.context.rp_feature_set.digitrust&&$){var y=DigiTrust.getIdentitySync({member:"rubicon"});if(y&&y.success&&y.identity){var S=y.identity;m=S.id,w=S.privacy.optout?1:0}}if(a=i("digitrust.id","dt.id",m,a),a=i("digitrust.preference","dt.preference",w,a),this.context.rp_feature_set.local_storage&&this.browser.detectSafari()){var A=[];if(data=RubiconAdServing.getStoredData(),data&&data.fcaps&&data.fcaps.sizes){var R=data.fcaps.sizes;for(var z in R)if(R[z].ads)for(var k in R[z].ads)A[A.length]="ls_fcap."+z+"="+k+",0x"+R[z].ads[k].count.toString(16)+",0x"+R[z].ads[k].first_seen.toString(16)+",0x"+R[z].ads[k].last_seen.toString(16)}if(data&&data.bucket&&"object"==typeof data.bucket){var j=data.bucket;for(var D in j)if("object"==typeof j[D])for(var O in j[D])A[A.length]="ls_c."+D+"."+O+"=0x"+j[D][O].value.toString(16)+",0x"+j[D][O].first_set.toString(16)+",0x"+j[D][O].last_set.toString(16)}a=a.replace(/\$localstorage\$/,A.length?"&"+A.join("&"):"",a),a=i("storagetype","rp_s","l",a)}else a=i("localstorage","localstorage",null,a),a=i("storagetype","rp_s","c",a);if("jsonp"==this.context.rp_adtype){L=this;window.rp_onAdResponseLoaded=function(t){L.onAdResponseLoaded(t)}}if(this.shouldRouteToRFM())for(var E=["rp_page","rp_inventory","rp_visitor","rp_gender","rp_age","rp_age_range","rp_age_dob","rp_ethnicity","rp_xpi","rp_kw","rp_tracking","rp_floor","rp_smartfile","rp_geo"],v=0;v<E.length;v++)void 0!==this.context[E[v]]&&null!=this.context[E[v]]&&(window[E[v]]=this.context[E[v]]);var T=new RubiconAdServing.Requests,C=this.context.rp_feature_set.latency_sampling_sites,P=0===C.length||e(this.context.rp_site,C),I={slot:this,url:a,context:this.context,timer:P&&Math.random()<this.context.rp_feature_set.latency_sampling};T.addRequest(this.context.rp_zonesize,I);try{var M=this.context.rp_feature_set.jit_sync&&(this.browser.detectSafari()||this.browser.detectiPhone()||this.browser.detectiPad()),B=this.context.rp_feature_set.jit_sync_android&&this.browser.detectAndroid();if(M||B){var q=[2054,2138,2149,2532,3410],N="rp_onUserIdLoaded_"+this.context.rp_zonesize,F=s+"gum.criteo.com/sync?c=2&r=2&j="+(N=N.replace("-","_")),L=this;window[N]=function(t){L.onUserIdLoaded(q,I,t)},document.write("<script type='text/javascript' src='"+F+"'><\/script>")}}catch(t){}document.write("<script type='text/javascript'>rp_requests = new RubiconAdServing.Requests(); rp_requests.sendRequest('"+this.context.rp_zonesize+"');<\/script>")}}},this.onUserIdLoaded=function(t,e,i){if(t&&i&&"OK"==i.status&&i.userid){var r,n;for(n=0;n<t.length;n++)r=t[n],e.url=e.url+="&put_"+r+"="+encodeURIComponent(i.userid)}},this.filter_script=function(t){return t=t.replace(/\/SCRIPT/g,'/SCR"+"IPT'),t=t.replace(/\/script/g,'/scr"+"ipt')},this.onAdResponseLoaded=function(t){var e;try{if(t.ads)for(var i=0;i<t.ads.length;i++){e=t.ads[i];var r=["script","html"];for(var n in r){var o=r[n];e[o]&&"string"==typeof e[o]&&(e[o]=decodeURIComponent(e[o]),"function"==typeof this["filter_"+o]&&(e[o]=this["filter_"+o](e[o])))}this.context.rp_slot&&(e.rp_slot=this.context.rp_slot);var s,c=new RubiconAdServing.Creatives;s=t.account_id+"/"+t.site_id+"/"+t.zone_id+"-"+t.size_id,c.setAd(s,e),s=this.context.rp_slot,c.setAd(s,e)}this.context.rp_callback&&("function"==typeof this.context.rp_callback&&this.context.rp_callback(t),"string"==typeof this.context.rp_callback&&window[this.context.rp_callback]&&"function"==typeof window[this.context.rp_callback]&&window[this.context.rp_callback](t))}catch(t){}},this.getSupportExpandableAd=function(){return!RubiconAdServing.Utils.isIframe()&&"iframe"!=this.context.rp_adtype};var t=function(t){return(t||!1)&&"[object Array]"===Object.prototype.toString.apply(t)&&"number"==typeof t.length&&t.length>0},e=function(t,e){for(var i=0;i<e.length;i++)if(t===e[i])return!0;return!1},i=function(t,e,i,n,o){var s="";return null!==i&&void 0!==i&&(s=(!0===o?"":"&")+e+"="+i),r(t,s,n)},r=function(t,e,i){return"string"==typeof t&&null!==t&&t.length>0?i.replace("$"+t+"$",e):i};this.appendObject=function(t,e,i,n,o){var s="";if(i){o=o||".";var c;for(var a in i)i.hasOwnProperty(a)&&null!=(c=i[a])&&(void 0===c.length||c.length>0)&&(s+="boolean"==typeof c?"&"+e+o+a+"="+(c?1:0):"&"+e+o+a+"="+encodeURIComponent(c))}return n=r(t,s,n)};var n=function(){var t=null;try{if(RubiconAdServing.Utils.isIframeCrossDomain());else{var e,i=window,r=s(),n=90;if(RubiconAdServing.Utils.isIframe()){for(;window.top!==i.parent;){i=i.parent;try{i.location.href}catch(e){return t}}e=a(i.frameElement),n=i.frameElement.clientHeight/2}else{for(var c=document.documentElement;c.childNodes.length&&1==c.lastChild.nodeType;)c=c.lastChild;var p=document.createElement("div"),d=o("rubicon_chk_position_");p.setAttribute("id",d),p.style.width="0px",p.style.height="0px",c.parentNode.appendChild(p),e=a(p),c.parentNode.removeChild(p),n/=2}t=r.y+r.h<n+e.y||r.y>n+e.y?"btf":"atf"}}catch(t){}return t},o=function(t){return t+Math.floor(1e6*Math.random())},s=function(){return window.frameElement?{x:window.top.innerWidth,y:window.top.pageYOffset||window.top.document.body.scrollTop||window.top.document.documentElement.scrollTop,w:window.top.innerWidth||window.top.documentElement.clientWidth||window.top.getElementsByTagName("body")[0].clientWidth,h:window.top.innerHeight||window.top.documentElement.clientHeight||window.top.getElementsByTagName("body")[0].clientHeight}:{x:window.pageXOffset||document.body.scrollLeft||document.documentElement.scrollLeft,y:window.pageYOffset||document.body.scrollTop||document.documentElement.scrollTop,w:window.innerWidth||document.documentElement.clientWidth||document.getElementsByTagName("body")[0].clientWidth,h:window.innerHeight||document.documentElement.clientHeight||document.getElementsByTagName("body")[0].clientHeight}},c=function(){try{return window.screen.width+"x"+window.screen.height}catch(t){}},a=function(t){var e=0,i=0;if(t.offsetParent)do{e+=t.offsetLeft,i+=t.offsetTop}while(t=t.offsetParent);return{x:e,y:i}},p=function(t){this.navigator=t,this.safariMatching=[{text:t.vendor,pattern:"Apple"}],this.ipadMatching=[{text:t.userAgent,pattern:"iPad"},{text:t.userAgent,pattern:"OS X"}],this.iphoneMatching=[{text:t.userAgent,pattern:"iPhone"},{text:t.userAgent,pattern:"OS X"}],this.androidMatching=[{text:t.userAgent,pattern:"Android"}],this.detectSafari=function(){return this.matchesAny(this.safariMatching)},this.detectiPad=function(){return this.matchesAll(this.ipadMatching)},this.detectiPhone=function(){return this.matchesAll(this.iphoneMatching)},this.detectAndroid=function(){return this.matchesAll(this.androidMatching)},this.detectIE8Plus=function(){var e=0;if(t&&"Microsoft Internet Explorer"==t.appName){var i=t.userAgent;null!=new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})").exec(i)&&(e=parseFloat(RegExp.$1))}return e>=8},this.matchesAny=function(t){for(var e=0;e<t.length;e++){var i=t[e].text;if(i&&-1!=i.indexOf(t[e].pattern))return!0}return!1},this.matchesAll=function(t){for(var e=0,i=0;i<t.length;i++){var r=t[i].text;r&&r.indexOf(t[i].pattern)>=0&&e++}return e>0&&e==t.length}}},RubiconAdServing.getStoredData=function(){try{var t=localStorage.rubiconSmartTagData;if(t){var e=JSON.parse(t);if("object"==typeof e)return e}}catch(t){return{}}return{}},RubiconAdServing.storeData=function(t){try{localStorage.rubiconSmartTagData=JSON.stringify(t)}catch(t){}},RubiconAdServing.enforceFCapStructure=function(t,e,i,r){return t.fcaps||(t.fcaps={}),t.fcaps.sizes||(t.fcaps.sizes={}),t.fcaps.sizes[e]||(t.fcaps.sizes[e]={}),t.fcaps.sizes[e].ads||(t.fcaps.sizes[e].ads={}),t.fcaps.sizes[e].ads[i]||(t.fcaps.sizes[e].ads[i]={count:0,ad_id:i,first_seen:r,last_seen:r}),t},RubiconAdServing.setFCap=function(t,e,i,r){var n=RubiconAdServing.getStoredData();(n=RubiconAdServing.enforceFCapStructure(n,t,e,r)).fcaps.sizes[t].ads[e].count=i,n.fcaps.sizes[t].ads[e].last_seen=r,RubiconAdServing.storeData(n)},RubiconAdServing.incFCap=function(t,e,i,r){var n=RubiconAdServing.getStoredData();(n=RubiconAdServing.enforceFCapStructure(n,t,e,r)).fcaps.sizes[t].ads[e].count+=i,n.fcaps.sizes[t].ads[e].last_seen=r,RubiconAdServing.storeData(n)},RubiconAdServing.decFCap=function(t,e,i,r){var n=RubiconAdServing.getStoredData();(n=RubiconAdServing.enforceFCapStructure(n,t,e,r)).fcaps.sizes[t].ads[e].count-=i,n.fcaps.sizes[t].ads[e].last_seen=r,RubiconAdServing.storeData(n)},RubiconAdServing.delFCap=function(t,e){var i=RubiconAdServing.getStoredData();delete(i=RubiconAdServing.enforceFCapStructure(i,t,e,0)).fcaps.sizes[t].ads[e],"{}"===JSON.stringify(i.fcaps.sizes[t].ads)&&delete i.fcaps.sizes[t],"{}"===JSON.stringify(i.fcaps.sizes)&&delete i.fcaps.sizes,RubiconAdServing.storeData(i)},RubiconAdServing.enforceBucketStructure=function(t,e,i,r){return"object"!=typeof t.bucket&&(t.bucket={}),"object"!=typeof t.bucket[e]&&(t.bucket[e]={}),"object"!=typeof t.bucket[e][i]&&(t.bucket[e][i]={first_set:r,value:0}),t},RubiconAdServing.setBucketValue=function(t,e,i,r){var n=RubiconAdServing.getStoredData();(n=RubiconAdServing.enforceBucketStructure(n,t,e,r)).bucket[t][e].value=i,n.bucket[t][e].last_set=r,RubiconAdServing.storeData(n)},RubiconAdServing.incBucketValue=function(t,e,i,r){var n=RubiconAdServing.getStoredData();(n=RubiconAdServing.enforceBucketStructure(n,t,e,r)).bucket[t][e].value+=i,n.bucket[t][e].last_set=r,RubiconAdServing.storeData(n)},RubiconAdServing.decBucketValue=function(t,e,i,r){var n=RubiconAdServing.getStoredData();(n=RubiconAdServing.enforceBucketStructure(n,t,e,r)).bucket[t][e].value-=i,n.bucket[t][e].last_set=r,RubiconAdServing.storeData(n)},RubiconAdServing.delBucketValue=function(t,e){var i=RubiconAdServing.getStoredData();delete(i=RubiconAdServing.enforceBucketStructure(i,t,e,0)).bucket[t][e],"{}"===JSON.stringify(i.bucket[t])&&delete i.bucket[t],RubiconAdServing.storeData(i)},function(){try{var t,e,i=new RubiconAdServing.RubiconAd,r=new Object;e=["rp_account","rp_site","rp_zonesize","rp_ad","rp_height","rp_width","rp_floor","rp_pmp_tier","rp_rtb_tier","rp_rtb_floor","rp_lat","rp_long","rp_slot"];for(n=0;n<e.length;n++)t=e[n],null==window[t]||"string"!=typeof window[t]&&"number"!=typeof window[t]||(r[t]=window[t],window[t]=void 0);e=["rp_adtype","rp_page","rp_ae_spoof","rp_env","rp_host","rp_facebook_device_id","rp_publisher_id","rp_app_id","rp_div_id"];for(n=0;n<e.length;n++)t=e[n],window[t]&&"string"==typeof window[t]&&(r[t]=window[t],window[t]=void 0);e=["rp_gender","rp_age","rp_age_range","rp_age_dob","rp_ethnicity","rp_xpi","rp_kw","rp_tracking","rp_user_key","rp_blocks"];for(n=0;n<e.length;n++)t=e[n],window[t]&&("string"==typeof window[t]&&"[INSERT"!=window[t].substr(0,7)||"number"==typeof window[t])&&(r[t]=window[t],window[t]=void 0);e=["rp_debug","rp_inventory","rp_visitor","rp_app","rp_device","rp_geo","rp_accept","rp_feature_set","rp_dpf","rp_aso","rp_navigator","rp_badvid","rp_fastlane"];for(n=0;n<e.length;n++)t=e[n],!window[t]||"object"!=typeof window[t]&&"boolean"!=typeof window[t]||(r[t]=window[t],window[t]=void 0);e=["rp_smartfile"];for(n=0;n<e.length;n++)t=e[n],window[t]&&"string"==typeof window[t]&&"[SMART"!=window[t].substr(0,6)&&(r[t]=window[t],window[t]=void 0);e=["rp_callback"];for(var n=0;n<e.length;n++)t=e[n],!window[t]||"function"!=typeof window[t]&&"string"!=typeof window[t]||(r[t]=window[t],window[t]=void 0);i.init(r),i.start()}catch(t){}}();