<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
var obj = JSON.parse(myObj);

$(document).ready(function(){
    $("button").click(function(){
        $.post("json-send",
        {
          name:obj
        },
        function(data,status){
            alert("Data: " + data + "\nStatus: " + status);
        });
    });
});


{
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

	}
	
	
</script>
</head>

<body>

		<c:choose>
		<c:when test="${mode == 'JSON_INDEX' }">
		
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h3>Please enter your user name</h3>
					<hr>
				 <button>Send an HTTP POST request to a page and get the result back</button>
				</div>
			</div>
			
		</c:when>
</c:choose>

</body>


</html>

