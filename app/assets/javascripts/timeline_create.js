$(document).ready(function() {

	var pid = $('#pid').val();
	console.log (pid)
	var source_str = "portfolios/"+ pid.toString()+".json";
	console.log ( source_str);

    createStoryJS({
        type:       'timeline',
        width:      "100%",
        height:     '600',                                                        
  		source: 	source_str,
        embed_id:   "my-timeline"
    });
});