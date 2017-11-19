(function (w, d) {
  'use strict';
  var s1 = d.getElementsByTagName('script')[0],
      s = d.createElement('script'),
      onReady;
      s.src = '//tru.am/scripts/ta-pagesocial-sdk.js';
  onReady = function () {
    var l = document.location,
        h = l.hostname.toLowerCase(),
        cid;
  if (h.indexOf('fanbuzz.com') > -1) {
            cid = ['757','761','764','765','766','767','768','769','770','771','772','773','774','775','776','777','778','779','780'];
    } else if (h.indexOf('faves.com') > -1) {
                cid = ['756','763'];
    } else if (h.indexOf('rare.us') > -1) {
                cid = ['707', '716', '717', '718','746','747','748','749','750','752','753','754','755','762','783','784','785','786','787','788','789'];
    } else if (h.indexOf('rarecountry.com') > -1) {
                cid = ['707', '716', '717', '718','746','747','748','749','750','752','753','754','755','762','783','784','785','786','787','788','789'];
    } else if (h.indexOf('clark.com') > -1) {
                cid = '758';
    } else if (h.indexOf('wsbtv.com') > -1) {
              cid = '759';
    } else if (h.indexOf('hottopics.tv') > -1) {
              cid = '963';
    } else if (h.indexOf('altdriver.com') > -1) {
              cid = '1032';
    } else if (h.indexOf('ajc.com') > -1) {
              cid = ['1033', '1064'];
    } else if (h.indexOf('accessatlanta.com') > -1) {
              cid = ['1033', '1064'];
    } else if (h.indexOf('statesman.com') > -1) {
              cid = ['1065', '1066'];
    } else if (h.indexOf('austin360.com') > -1) {
              cid = ['1065', '1066'];
    } else if (h.indexOf('dayton.com') > -1) {
              cid = '1036';
    } else if (h.indexOf('daytondailynews.com') > -1) {
              cid = '1036';
    } else if (h.indexOf('journal-news.com') > -1) {
              cid = '1036';
    } else if (h.indexOf('springfieldnewssun.com') > -1) {
              cid = '1036';
    } else if (h.indexOf('palmbeachpost.com') > -1) {
              cid = '1037';
    } else if (h.indexOf('palmbeachdailynews.com') > -1) {
              cid = '1037';
    } else if (h.indexOf('specials.myajc.com') > -1) {
              cid = '1033';
    } else if (h.indexOf('gocarolinas.com') > -1) {
              cid = '1113';
    } else if (h.indexOf('wsoctv.com') > -1) {
              cid = '1076';
    } else if (h.indexOf('mandammit.com') > -1) {
                cid = ['751','782','1040'];
    }
    if (cid) {
      w.TRUE_ANTHEM.configure(cid);
    }
  };
  if (s.addEventListener) {
    s.addEventListener('load', onReady, false);
  } else {
    s.onreadystatechange = function () {
      if (s.readyState in {loaded: 1, complete: 1}) {
        s.onreadystatechange = null;
        onReady();
      }
    };
  }
  s1.parentNode.insertBefore(s, s1);
}(window, document));