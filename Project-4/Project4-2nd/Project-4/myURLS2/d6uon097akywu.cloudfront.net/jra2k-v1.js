(function() {
  'use strict';

  var a2kcollector = 'cdn.janrain.xyz';
  var a2ksnowplow = 'https://cdn.janrain.xyz/js/sp-2.6.2.js';
  var appId = null;
  var debugMode = false;

  window.janrain = window.janrain || {};
  var janrain = window.janrain;
  janrain.analytics = janrain.analytics || {};
  janrain.analytics.anonymous = {};

  function walk(path, obj) {
    return path.split('.').reduce(function(o, v) { return o && o[v]; }, obj);
  }

  function debugModeEnabled() {
    return debugMode || walk('settings.debug.enabled', janrain);
  }

  var a2kscript = document.getElementById('jra2kjsid');
  if (a2kscript !== null) {
    appId = a2kscript.getAttribute('data-appid');
    debugMode = a2kscript.getAttribute('data-debug') !== null;
  }

  if (!appId && walk('janrain.settings.capture', window)) {
    appId = janrain.settings.capture.appId || janrain.settings.capture.appid;
  }

  if (!appId && debugModeEnabled()) console.warn('No appId supplied.');

  (function(p, l, o, w, i, n, g) {
    if (!p[i]) {
      p.GlobalSnowplowNamespace = p.GlobalSnowplowNamespace || [];
      p.GlobalSnowplowNamespace.push(i);
      p[i] = function() {
        (p[i].q = p[i].q || []).push(arguments);
      };
      p[i].q = p[i].q || [];
      n = l.createElement(o);
      g = l.getElementsByTagName(o)[0];
      n.async = 1;
      n.src = w;
      g.parentNode.insertBefore(n, g);
    }
  }(window, document, 'script', a2ksnowplow, 'jra2ksp'));

  window.jra2ksp('newTracker', 'cf', a2kcollector, { // Initialise a tracker
    appId: appId,
    platform: 'web',
    discoverRootDomain: true,
    cookieName: 'jra2k',
    respectDoNotTrack: true,
    encodeBase64: true,
    userFingerprintSeed: 6385926734,
    pageUnloadTimer: 0,
    forceSecureTracker: true
  });

// This is the sp onload handler
  window.jra2ksp(function(x) {
    if (debugModeEnabled()) {
      console.log(x);
      console.log(this.cf);
      console.log(this.cf.getDomainUserId());
      console.log(this.cf.getDomainUserInfo());
      console.log(this.cf.getUserFingerprint());
      console.log(this.cf.getUserId());
    }

    // interface
    var tracker = janrain.analytics.anonymous = {
      pageView: function() {
        window.jra2ksp('trackPageView');
      },

      loginStart: function() {
        tracker.customEvent('identity', 'loginStart');
      },

      loginSuccess: function(loginResponse) {
        if (loginResponse.userData && loginResponse.userData.uuid) {
          window.jra2ksp('setUserId', loginResponse.userData.uuid);
          if (loginResponse.action === 'socialSignin') {
            tracker.customEvent(
              'identity',
              'login',
              loginResponse.action,
              'provider',
              loginResponse.authProvider
            );
          } else {
            tracker.customEvent(
              'identity',
              'login',
              loginResponse.action
            );
          }
        }
      },

      loginFailed: function(loginResponse) {
        if (loginResponse.action && loginResponse.statusMessage) {
          tracker.customEvent(
            'identity',
            'loginFailed',
            loginResponse.action,
            'message',
            loginResponse.statusMessage
          );
        }
      },

      registrationStart: function() {
        tracker.customEvent('identity', 'registrationStart');
      },

      registrationSuccess: function(registrationResponse) {
        if (walk('userData.uuid', registrationResponse)) {
          window.jra2ksp('setUserId', registrationResponse.userData.uuid);
          if (registrationResponse.action === 'socialRegister') {
            tracker.customEvent(
              'identity',
              'registration',
              registrationResponse.action,
              'provider',
              registrationResponse.authProvider
            );
          } else {
            tracker.customEvent(
              'identity',
              'registration',
              registrationResponse.action
            );
          }
        }
      },

      registrationFailed: function(registrationResponse) {
        if (registrationResponse.action && registrationResponse.statusMessage) {
          tracker.customEvent(
            'identity',
            'registrationFailed',
            registrationResponse.action,
            'message',
            registrationResponse.statusMessage
          );
        }
      },

      modalClose: function() {
        tracker.customEvent('identity','modalClose');
      },

      logout: function() {
        tracker.customEvent('identity','logout');
      },

      validationComplete: function(validationResponse) {
        if (walk('fieldsWithError.length', validationResponse) > 0) {
          tracker.customEvent(
            'identity',
            'registrationValidation',
            'error',
            'numberOfErrors',
            validationResponse.fieldsWithError.length
          );
        }
      },

      customEvent: function(category, action, label, property, value) {
        if (!(category && action) && debugModeEnabled()) {
          console.warn('customEvent requires at least a category and action.');
        }
        window.jra2ksp(
          'trackStructEvent',
          category,
          action,
          label || '',
          property || '',
          value || ''
        );
      },

      bindJanrainWidgetEvents: function() {
        [
          ['onCaptureLoginSuccess', 'loginSuccess'],
          ['onCaptureLoginFailed', 'loginFailed'],
          ['onCaptureRegistrationStart', 'registrationStart'],
          ['onCaptureRegistrationSuccess', 'registrationSuccess'],
          ['onCaptureRegistrationFailed', 'registrationFailed'],
          ['onCaptureSessionEnded', 'logout'],
          ['onCaptureValidationComplete', 'validationComplete']
        ].forEach(function(x) {
          var e = janrain.events[x[0]];
          var t = tracker[x[1]];
          if (!(e || t)) {
            console.error('Invalid event binding for ' + e + ' and ' + t);
          }
          e.addHandler(t);
        });
      }
    };

    // We loaded on a page, let's immediately track a page view.
    tracker.pageView();
  }, '');

  janrain.analytics.anonymous.bindJanrainWidgetEvents = function() {
    window.jra2ksp(function() {
      janrain.analytics.anonymous.bindJanrainWidgetEvents();
    }, '');
  };

}());
