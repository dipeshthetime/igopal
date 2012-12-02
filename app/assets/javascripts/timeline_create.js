$(document).ready(function() {

	var p = $('#pid').val();
	console.log (p)
	var source_str = "portfolios/"+ p.toString()+".json";
	console.log (source_str);

    createStoryJS({
        type:       'timeline',
        width:      "100%",
        height:     '600',                                                        
  		source: 	"portfolios/1.json",
        embed_id:   "my-timeline"
    });
});