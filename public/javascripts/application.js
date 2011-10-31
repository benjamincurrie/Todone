$(document).ready(function() {
	// Fix placeholders
	if (!("placeholder" in document.createElement("input"))) {
		$('input, textarea').focus(function() {
			if($(this).attr('placeholder') && $(this).val()==$(this).attr('placeholder')) {
				$(this).removeClass('faded').val('');
			}
		}).blur(function() {
			if($(this).attr('placeholder') && ($(this).val()=="" || $(this).val()==$(this).attr('placeholder'))) {
				$(this).addClass('faded').val($(this).attr('placeholder'));
			} else {
				$(this).removeClass('faded');
			}
		}).blur();
	}
	
	
	if($('aside.sticky').length > 0) {
		sticky_origin = $('aside.sticky').position().top;
		window.onscroll = function() {
			if( window.XMLHttpRequest ) { // IE 6 doesn't implement position fixed nicely...
				if (document.documentElement.scrollTop > sticky_origin) {
					$('aside.sticky').addClass('fixed');
				} else {
					$('aside.sticky').removeClass('fixed');
				}
			}
		}
	}
	
	$('.jshide').hide();
	$('.notifications .message').hide();
	$('.notifications').show();
	$('.notifications .message').each(function(i) {
		$(this).delay(3500*i).fadeIn(500).delay(2000).fadeOut(500);
	});
	
	$("ul.tasks li input[type=checkbox]").change(function() {
		checkbox = $(this);
		li = checkbox.parents('li');
		complete = checkbox.is(':checked');
		if(complete != li.hasClass('complete')) {
			$.post($(this).attr('rel'), { complete: complete },
				function(data) {
					if(data.task.complete === true) {
						li.addClass('complete');
					} else {
						li.removeClass('complete');
					}
				},
			'json');
		}
	}).change();
	
	$( ".datepicker" ).datepicker();
});