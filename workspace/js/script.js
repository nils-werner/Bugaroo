$(document).ready(function() {
	$(".toggle-filter").click(function(){
		var element = $("#filter-form");
		if (element.is(":hidden")) {
			element.slideDown();
			$(this).addClass("hidden");
			return false;
		}
		else {
			element.slideUp();
			$(this).removeClass("hidden");
			return false;
		}
	});

	
	if($.getUrlVars() != null) {
		$("#filter-form").show();
		$(".toggle-filter").addClass("hidden");
	}
	else {
		$("#filter-form").hide();
	}
	
	$(".selected, .clear").click(function() {
		if($(".selected").length == 1)
			$("#filter-form").slideUp();
	});
});

$.extend({
  getUrlVars: function(){
    var vars = [], hash;
    if(window.location.href.indexOf('?') > 0) {
	    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
	    for(var i = 0; i < hashes.length; i++)
	    {
	      hash = hashes[i].split('=');
	      vars.push(hash[0]);
	      vars[hash[0]] = hash[1];
	    }
	    return vars;
	}
	return null;
  },
  getUrlVar: function(name){
    return $.getUrlVars()[name];
  }
});