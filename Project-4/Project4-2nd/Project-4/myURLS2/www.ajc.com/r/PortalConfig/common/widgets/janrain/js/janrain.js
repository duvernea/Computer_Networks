window.janrain = window.janrain || {};
window.janrainEventFns = {};

if(!window.janrainInitializeDefer){
	janrainInit(window.pubsubcutioner || window.pubsub)
}

function janrainInit(pubsub){
	if(!pubsub){
		console.error("You MUST have a pubsub set before initializing janrain! If loaded in a separate project, please use janrainInitializeDefer");
	}
	
	// Basic Janrain settings.
	var janrainSettingsDefaults = {
		packages : [ 'login', 'capture', 'share' ],
		appUrl : 'https://login.cmgdigital.com',
		language : 'en-US',
		tokenUrl : 'http://www.coxmediagroup.com/',
		tokenAction : 'event',
		borderColor : '#000000',
		fontFamily : 'sans-serif',
		width : 400, // 392 will set larger icons, 391 will set smaller icons
		// according to JR CSS
		actionText : ' ',
		providers : [ 'facebook', 'twitter', 'googleplus', 'yahoo' ],
		providersPerPage : '4',
		pubsub: pubsub,
		format : 'one column',
		loadurlHttps : "https://rpxnow.com/load/cmg-dev",
		loadurlHttp : "http://widget-cdn.rpxnow.com/load/cmg-dev",
	// loadurlHttps: "https://rpxnow.com/load/login.cmgdigital.com",
	// loadurlHttp: "http://widget-cdn.rpxnow.com/load/login.cmgdigital.com",
	};

	// Janrain "capture" setting - the shape of the user data we want to record.
	var janrainSettingsCaptureDefaults = {
		appId : '6z4jnndkpe6dmfx7vdg4c7hkmz',
		captureServer : 'https://users.cmgdigital.com',
		redirectUri : 'http://localhost/',
		clientId : '',
		registerFlow : 'socialRegistration',
		setProfileCookie : false,
		modalCloseHtml : '<span class="janrain-close-modal">x</span>',
		noModalBorderInlineCss : true,
		keepProfileCookieAfterLogout : false,
		flowVersion : 'HEAD',
		responseType : 'token',
		returnExperienceUserData : [ 'displayName', 'email', 'uuid', 'gender',
				'birthday', 'billingAddress.zip'],
		returnExperienceNameMap : {
			'displayName' : 'name',
			'billingAddress.zip' : 'zip',
		},

		federate : true,
		federateServer : 'https://sso.cmgdigital.com',
		federateXdReceiver : '',
		federateLogoutUri : '',
		federateLogoutCallback : function() {
		},
		federateEnableSafari : false,

		recaptchaPublicKey : '6LeVKb4SAAAAAGv-hg5i6gtiOV4XrLuCDsJOnYoP',
		flowName : 'standard_newspaper',
		mobileStylesheets : [],
		setProfileData : '',
		stylesheets : [],
		confirmModalClose : '',
	};
	
	// Janrain social-sharing settings.
	var janrainSettingsSocialDefaults = {
	    providers: [
	        "facebook",
	        "twitter",
	        "native-googleplus",
	        "email-googleplus",
	        "email-mailto"
	    ],
	    orientation: "horizontal",
	    formFactor: "bar",
	    shareCountMode: "none"	
	};

	// Merge all settings objects together.
	janrain.settings = merge_objects(janrainSettingsDefaults, janrain.settings
			|| {});
	janrain.settings.capture = merge_objects(janrainSettingsCaptureDefaults,
			janrain.settings.capture || {});
	janrain.settings.social = merge_objects(janrainSettingsSocialDefaults,
			janrain.settings.social || {});

	// Fire 'authn-logout metrics when DOM is loaded.
	function isReady() {
		janrain.ready = true;
		janrain.settings.pubsub.subscribe('authn-logout', function() {
			janrain.capture.ui.endCaptureSession();
		});
	}

	// Event handlers to check DOM is ready.
	if (document.addEventListener) {
		document.addEventListener("DOMContentLoaded", isReady, false);
	} else {
		window.attachEvent('onload', isReady);
	}

	// Dynamically inject Janrain script/widget into the DOM.
	var e = document.createElement('script');
	e.type = 'text/javascript';
	e.id = 'janrainAuthWidget';
	if (document.location.protocol === 'https:') {
		e.src = janrain.settings.loadurlHttps;
	} else {
		e.src = janrain.settings.loadurlHttp;
	}
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(e, s);

	// Metrics to track how many clicks occur on the widget.
	 window.janrainClickTracker = 0;
	janrain.settings.pubsub.subscribe("site-interaction", function() {
		window.janrainClickTracker++;
	});
	
	janrain.settings.pubsub.publish("authn-init");
}

// Return an object containing a user's Janrain "capture" data.
function janrainReturnExperience() {
	var data = {};
	var userData = janrain.settings.capture.returnExperienceUserData;
	for (var i = 0; i < userData.length; i++) {
		var janrainDatumName = userData[i];
		var datumName = janrain.settings.capture.returnExperienceNameMap[janrainDatumName]
				|| janrainDatumName;
		data[datumName] = janrain.capture.ui
				.getReturnExperienceData(janrainDatumName);
	}
	janrain.settings.pubsub.publish("authn-login", data);
}

// Helper function to merge JavaScript objects together.
function merge_objects(obj1, obj2) {
	var obj3 = {};
	for ( var attrname in obj1) {
		obj3[attrname] = obj1[attrname];
	}
	for ( var attrname in obj2) {
		obj3[attrname] = obj2[attrname];
	}
	return obj3;
}


// Native Janrain event handlers for our own customisation.
// http://developers.janrain.com/overview/registration/registration-js-api/events/
// http://developers.janrain.com/overview/social-login/social-login-js-api/events/
function janrainCaptureWidgetOnLoad() {
	var janrainModalSelector = "#janrainModal";
	var returnUser = false;
	var isModalOpen = false;
	var autoLogin = true;

	janrain.events.onCaptureLoginSuccess.addHandler(function(result) { 
		console.log("Login success handler");
		janrain.settings.pubsub.publish("login-success");
		janrain.capture.ui.modal.close();
		janrainReturnExperience();
		if(autoLogin) { 
			console.log("return user event");
			janrain.settings.pubsub.publish("authn-login-return");
		}
		if(!returnUser && !window.mg2){
			janrain.settings.pubsub.publish("login-complete", janrainModalSelector);
		}
		
	});
    
	janrain.events.onCaptureLoginFailed.addHandler(function(result) {
			janrain.settings.pubsub.publish("login-error", janrainModalSelector);
			
	});

	janrain.events.onCaptureSessionFound.addHandler(function(result) {
		console.log("Login session found handler");
		janrain.settings.pubsub.publish("session-found");
		janrain.capture.ui.modal.close();
		janrainReturnExperience();
		//returnUser = true;
	});

	janrain.events.onCaptureSessionNotFound.addHandler(function(result) {
		janrain.settings.pubsub.publish("authn-anonymous");
	});
	
	if (window.janrainEventFns.onCaptureEmailVerificationSuccess) {
		janrain.events.onCaptureEmailVerificationSuccess.addHandler(window.janrainEventFns.onCaptureEmailVerificationSuccess);
	}
	
	janrain.events.onCaptureRegistrationStart.addHandler(function(result) {
	});
	
	janrain.events.onCaptureRegistrationSuccess.addHandler(function(result) {
		janrain.capture.ui.modal.close();
		janrain.settings.pubsub.publish("registration-success");
		
	});

	janrain.events.onCaptureScreenShow.addHandler(function(result) {
		if (result.screen == "returnTraditional") {
			janrainReturnExperience();
		}
	});

	janrain.events.onCaptureRenderComplete.addHandler(function(result) {
		janrain.settings.pubsub.publish("authn-modal-render-complete", janrainModalSelector);
	});

	janrain.events.onModalOpen.addHandler(function() {
		console.log("modal open handler");
		if (!isModalOpen) {
			janrain.settings.pubsub.publish("authn-modal-open", janrainModalSelector);
			isModalOpen = true;
			autoLogin = false;
		}
	});

	janrain.events.onModalClose.addHandler(function() {
		janrain.settings.pubsub.publish("authn-modal-close", janrainModalSelector);
		isModalOpen = false;
	});

	janrain.events.onCaptureProfileSaveSuccess.addHandler(function(result) {
		janrain.settings.pubsub.publish("authn-profile-save-success", result);
	});
	
	// Event: backplane.ready
    janrain.events.onCaptureBackplaneReady.addHandler(function () {
    	janrain.settings.pubsub.publish('backplane.ready');
    });

	if (janrain.capture.ui && janrain.capture.ui.status != "not loaded") {
		
		// Validate zipcode field in registration widget.
		janrain.capture.ui.registerFunction('zipCodeValidation', function(name,
				value, validation) {
			var zipCodeRegex = /^[0-9]{5}(?:-[0-9]{4})?$/;
			return Boolean(zipCodeRegex.test(value));
		});
		
		// Validate names in registration widget.
		janrain.capture.ui.registerFunction('displayNameValidation', function(
				name, value, validation) {
			var displayNameRegex = /^[a-zA-Z0-9_-]+$/;
			if (displayNameRegex.test(value)) {
				var whitespace = /\s/;
				if (whitespace.test(value)) {
					return false;
				} else {
					return true;
				}
			} else {
				return false;
			}
		});
	}

	// Start the Janrain widget for use.
	janrain.capture.ui.start();
	function openRegistrationHandler(evt) {
		janrain.capture.ui.modal.open('traditionalRegistration');
	}
	
	// Add event-handlers to open widget for any "capture_modal_registration" 
	// markup present.
	var registrationElements = document.getElementsByClassName("capture_modal_registration");
	for (var i = 0; i < registrationElements.length; i++) {
		registrationElements[i].addEventListener('click',
				openRegistrationHandler);
		registrationElements[i].addEventListener('touchstart',
				openRegistrationHandler);
	}
}