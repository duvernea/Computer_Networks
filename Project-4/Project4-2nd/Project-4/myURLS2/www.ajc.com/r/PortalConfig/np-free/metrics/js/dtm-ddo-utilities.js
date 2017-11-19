(function () {
	var utilities = DDO.utilities || (DDO.utilities = {}),
		deferred = {setVar: [], track: []};
	
	var DOMReady = function(a,b,c){b=document,c='addEventListener';b[c]?b[c]('DOMContentLoaded',a):window.attachEvent('onload',a)}
    
	
	// A more useful typeof, lifted from omniture_utilities.js.
	function is_a(type_string, obj) {
		var constr_string = Object.prototype.toString.call(obj),
		match = constr_string.match(/(\w+)\]$/)[1].toLowerCase();
		return match === type_string.toLowerCase();
	}

	// Inject direct-call rule event data into DTM.
	function dtm_push_data(data) {
		if(window._satellite){
			_satellite.setVar("payload_data", data);
		}else{
			deferred.setVar = deferred.setVar.concat(data);
		}
	}

	// Inform DTM a direct-call event rule has fired.
	function dtm_track_event(event_type) {
		if(window._satellite){ 
			_satellite.track(event_type);
		}else{ 
			deferred.track = deferred.track.concat(event_type);
		}
	}
	
	// _satellite is not defined immediately, so we defer events until it is
	DDO.utilities.deferredConsume = function(){
		var i;
		for(i = 0; i < deferred.setVar.length; i++) {
			_satellite.setVar(deferred.setVar[i]);
		}
		for(i = 0; i < deferred.track.length; i++) {
			_satellite.track(deferred.track[i]);
		}
		deferred = {setVar: [], track: []};
	}

	// Wrapper to print the contents of the submitted metrics payload
	// to the console if DTM debugging is enabled. This is primarily
	// for QA purposes as the DTM source does not contain useful
	// debugging statements for its .setVar method.
	function dtm_log_payload(data) {
		console.log(
				'SATELLITE: DDO.action data:' + '\n' + JSON.stringify(data)
		);
		return data;
	}


	/*
        Tracks a direct-call rule event on DTM.

        Usage: cmg.DDO.action('eventType')
               cmg.DDO.action('eventType', { foo: 'bar' })

        The second argument, an object literal data payload, is
        optional, and can consist of an arbitrary number of key/value
        pairs.
	 */
	DDO.action = function(event_type, data) { 
		if (is_a("string", event_type)) {
			if(is_a("object", data)) {
				dtm_push_data(dtm_log_payload(data));
			}
				dtm_track_event(event_type);
		}
	};
	DDO.libraryAdded = 0;
	DDO.dependentEventCheck = function (type){
		if(type != "TIMED OUT"){
			var idx = DDO.dependentEvents.indexOf(type);
			if (idx > -1) {
				DDO.dependentEvents.splice(idx, 1);
			}
		}
		if((DDO.dependentEvents.length == 0 && !DDO.libraryAdded) || (type === "TIMED OUT" && !DDO.libraryAdded)){
			// necessary events have been fired, now actually load the dtm library
			DDO.utilities.triggerDTMPageView();//DDO.utilities.loadDTMLibrary();
		}
	}
	
	DDO.utilities.triggerDTMPageView = function(){
		DDO.libraryAdded = 1;
		console.log("DDO Complete, triggering page view")
		pubsub = pubsubcutioner || window.pubsub || null;
		if(pubsub){
			pubsub.publish("DDO_ready");
		}else{
			DOMReady(function () {
			  pubsub = pubsubcutioner || window.pubsub;
		      pubsub.publish("DDO_ready");
		    });
		}
	}
	
	/*DDO.utilities.loadDTMLibrary = function(){ 
		DDO.libraryAdded = 1;
		localStorage.setItem("sdsat_debug", true);
		var script = document.createElement('script');
		document.head.appendChild(script);
		script.onload = function(){DDO.utilities.triggerDTMEvents();};
		script.setAttribute('src', DDO.DTMLibraryURL);
	}

	function triggerDTMEvents(){
	   	_satellite.pageBottom();
		localStorage.setItem("sdsat_debug", false);
		DDO.utilities.deferredConsume();
		console.log("DTM events triggered");
	}

	DDO.utilities.triggerDTMEvents = triggerDTMEvents;*/
})();
