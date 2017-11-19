document.observe("dom:loaded", function() {
	Event.observe($('hamburger'),'click', function() {
		var dd;
		var burger;
		burger=$('hamburger_icon');
		if (dd=$('dropdown')) {
			if (dd.style.display=='none') {
				dd.style.display='block';
				if (burger) // re-enabled 5/30/17
					burger.style.transform='rotate(90deg)';
			} else {
				dd.style.display='none';
				if (burger) // 5/30/17
					burger.style.transform='';
			}
		}
	});

	Event.observe($('show_search'),'click', function() {
		$('show_search').style.display='none';
		$('section_links').style.display='none';
		$('search').style.display='inline';
		$('search_words').focus();
	});

	Event.observe($('hide_search'),'click', function() {
		$('show_search').style.display='inline';
		$('section_links').style.display='inline';
		$('search').style.display='none';
	});

});