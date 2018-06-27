function sendJson(){
	console.log("it is working.");
	
	  $.post("json-send",
		        {
		        myjson: myObj
		        },
		        function(data,status){
		            alert(status);
		        });
}


var myObj = {
	"threadName" : {
		"startTime" : "timestart",
		"endTime" : "timestart",
		"erori" : [ "err1", "err2" ],
		"suite_name" : {

			"suite_metrics" : {
				"metric_start_time" : "m_start_time",
				"metric_end_time" : "m_end_time",
				"m_errori" : [ "err1", "err2" ]
			}, //end suite_metrics
			"pages_type_names":[{
				
				"page_type_name":{
					
					 "navigation":{
						 
						 "metrics_nav":{
							 "metrics_nav_start_time":"m_start_time",
							 "metrics_nav_end_time":"m_end_time",
							 "metrics_nav_errori":["err1","err2"]
						    }, //end metrics_nav
						    
					  "steps_pas":[{
						  "st_pas":{
							  "pas_start_time":"pas_start",
							  "pas_end_time":"pass_end",
							  "pas_errori":["passerror","passeror1"]
						  }
					  }]//end step pas array
						    
					 },//end navigation
					 
					 "test":{
						 "metrics_test":{
							 "metrics_test_start_time":"m_start_time",
							 "metrics_test_end_time":"m_end_time",
							 "metrics_test_errori":["err1","err2"]
						    }, //end metrics_nav
					  "test_steps_pas":[{
						  "test_pas":{
							  "test_pas_start_time":"pas_start",
							  "test_pas_end_time":"pass_end",
							  "test_pas_errori":["testpasserror","testpasseror1"]
						  }
					  }]
					 }//end test
					 
				}//end page_type_name object
			
			}]//end_pages_type_names array
			
		}//end suite name

	}//end threadName

}; // end myObj

