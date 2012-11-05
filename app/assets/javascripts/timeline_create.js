$(document).ready(function() {
    createStoryJS({
        type:       'timeline',
        width:      "100%",
        height:     '600',
        //source: 	"lib/assets/testScripts/test2json.json"      
        //source: 	"lib/assets/testScripts/testjson.json"
       	source:   	'portfolios/:id(.:format) '                                                           
  		//source: 	'views/portfolios/show.json.rabl'
        //source:     'https://docs.google.com/spreadsheet/pub?key=0Agl_Dv6iEbDadHdKcHlHcTB5bzhvbF9iTWwyMmJHdkE&amp;output=html',
        embed_id:   'my-timeline'
    });
});