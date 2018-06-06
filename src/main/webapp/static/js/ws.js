/**
 * 
 */
// Write in file logic start
var clickId;
var lineBefore;
var lineAfter;

function processIds(idInfo) {
	clickId = idInfo;
	lineBefore = document.getElementById(clickId).value;
	document.getElementById(clickId).readOnly = false;
}

// websockets logic
var socket = new WebSocket("ws://localhost:8080/bootapp/server");
var messageTextArea = document.getElementById("messages");
var fileTextArea = document.getElementById("fname");
var nameHidden = document.getElementById("name");
var fileHidden = document.getElementById("file");

// Websockets Messages
socket.onopen = function(message) {
	processOpen(message);
};
socket.onmessage = function(message) {
	processMessage(message);
};
socket.onclose = function(message) {
	processClose(message);
};
socket.onerror = function(message) {
	processError(message);
};

function processOpen(message) {
	socket.send(nameHidden.value + " " + fileHidden.value);
	messageTextArea.value += "Server Connect..\n";
}

function processMessage(message) {
	if (message.data.substring(0, 6) == "System"
			|| message.data.substring(0, 4) == "CHAT") {
		messageTextArea.value += message.data + "\n";
	} else {
		var array = message.data.split("+");
		var outFnct = array[1].length;

		$("#" + array[0]).val(array[1]);
		$("#" + array[0]).css("background-color", "#9BFFAF");
		$("#" + array[0]).attr('disabled', 'disabled');

		setTimeout(function() {
			var inFnct = array[1].length;
			if (outFnct == inFnct) {
				$("#" + array[0]).css("background-color", "white");
				$("#" + array[0]).removeAttr('disabled');
			}
		}, 5000);
	}

}

function sendMessage() {
	if (textMessage.value != "close") {
		socket.send("You: " + textMessage.value);
		messageTextArea.value += "You: " + textMessage.value + "\n";
	} else {
		socket.close();
	}
}

function processClose(message) {
	socket.send("Client disconnected...");
	messageTextArea.value += "Server Disconnect...\n";
}

function processError(message) {
	socket.send("Client Error");
	messageTextArea.value += "error...\n";
}

function updateFile(id, event) {

	if (lineBefore === undefined) {
		alert("Please click on the input first before you start edit it.");
		window.location.reload();
	} else {
		if (event.which == 9) {
			document.getElementById(id + "m").innerHTML = "Before edit this input, please click on it!!";
			document.getElementById(id).readOnly = true
			$('#' + id + 'h').removeClass('hr-primary').addClass('hr-danger');
			$('#' + id + 'm').removeClass('text-primary').addClass('text-danger');
			
			setTimeout(function() {
				document.getElementById(id + "m").innerHTML = "";
				$('#' + id + 'h').removeClass('hr-danger').addClass(
						'hr-primary');
				$('#' + id + 'm').removeClass('text-danger').addClass(
						'text-primary');
			}, 2000);

		} else {

			lineAfter = document.getElementById(id).value;
			var idAndLine = id + "+" + lineAfter;
			var lineLength = lineAfter.length;

			setTimeout(function() {
						var inLineLength = lineAfter.length;

						if (lineLength == inLineLength) {
							var timeNow = new Date().getTime();
							console.log("Line after " + lineAfter);
							console.log("Line before" + lineBefore);
							console.log("File Name " + fileHidden.value);
							console.log("Time " + timeNow);

			$.post("send-update",
					{
						after : lineAfter,
						before : lineBefore,
						fileName : fileHidden.value,
						time : timeNow

					},
			function(data, status) {
					var localId = clickId;
					document.getElementById(localId+"m").innerHTML = status;
					$('#' + localId + 'h').removeClass('hr-primary').addClass('hr-success');
			setTimeout(function() {
					document.getElementById(localId+ "m").innerHTML = "";
					$('#'+ localId+'h').removeClass('hr-success').addClass('hr-primary');
			}, 1500);
									});
					}// end if
				}, 2789);
			socket.send(idAndLine);
		}// end inner else

	}// end outer else

}