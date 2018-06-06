/**
 * 
 */
//Write in file logic start  
	var clickId;
	var lineBefore;
	var lineAfter;
	
	function processIds(idInfo){
		clickId = idInfo;
		lineBefore = document.getElementById(clickId).value;
	}
		

				//websockets logic
				var socket = new WebSocket("ws://localhost:8080/bootapp/server");
				var messageTextArea = document.getElementById("messages");
				var fileTextArea = document.getElementById("fname");
				var nameHidden = document.getElementById("name");
				var fileHidden = document.getElementById("file");
				 
				//Websockets Messages
				socket.onopen = function(message){ processOpen(message);};
				socket.onmessage = function(message){ processMessage(message);};
				socket.onclose = function(message){ processClose(message);};
				socket.onerror = function(message){ processError(message);};

				function processOpen(message){
					socket.send(nameHidden.value+" "+fileHidden.value);
					messageTextArea.value += "Server Connect..\n";
				}

				function processMessage(message){
					if(message.data.substring(0,6) == "System" || message.data.substring(0,4) == "CHAT"){
						messageTextArea.value += message.data+"\n";
					}else{
						var array = message.data.split("+");
						var outFnct = array[1].length;
						
						$("#"+array[0]).val(array[1]);
						$("#"+array[0]).css("background-color", "#9BFFAF");
						
						 setTimeout(function(){
							 var inFnct = array[1].length;
							 if(outFnct == inFnct){
								 $("#"+array[0]).css("background-color", "white");
							 }
					         },5000);
					}
					
				}

				function sendMessage(){
					if(textMessage.value != "close"){
					socket.send("You: "+textMessage.value);
					messageTextArea.value += "You: "+textMessage.value+"\n";
					}else{
						socket.close();
					}
				}

				function processClose(message){
					socket.send("Client disconnected...");
					messageTextArea.value += "Server Disconnect...\n";
				}

				function processError(message){
					socket.send("Client Error");
					messageTextArea.value += "error...\n";
				}
				
			
				function updateFile(id){
					console.log(id);
					lineAfter = document.getElementById(id).value;
					var idAndLine = id+"+"+lineAfter;
		
					setTimeout(function() { 
						 var d = new Date().getTime();
						 
						 $.post("send-update",
						        {
								  after: lineAfter,
						          before: lineBefore,
						          fileName: fileHidden.value,
						          time:d
						         
						        }, function(data,status){
						        	document.getElementById(clickId+"m").innerHTML = status;
						        	 $('#'+clickId+'h').removeClass('hr-primary').addClass('hr-success');
						        	 setTimeout(function(){
								         document.getElementById(clickId+"m").innerHTML="";
								         $('#'+clickId+'h').removeClass('hr-success').addClass('hr-primary');
								         },1500);
						        	
						        });
					 }, 2000);
					
					  socket.send(idAndLine);
				}