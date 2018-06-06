<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>TyCy App | Home</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="static/css/style.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="ws-index">Update Files</a></li>
				</ul>
			</div>
			
		</div>
	</div>
	<c:choose>
		<c:when test="${mode == 'MODE_HOME' }">

			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h3>Please enter your user name</h3>
					<hr>
					<form method="POST" action="check-user">
					
					<div class="form-group">
						<label for="exampleInputEmail1">User Name</label> 
							<input type="text" class="form-control" name="user" value="" />	
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
	</div>
		</c:when>
		
				<c:when test="${mode == 'WS_INDEX' }">

			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h3>Please enter your user name</h3>
					<hr>
					<form method="POST" action="start-ws">
					
					<div class="form-group">
						<label for="exampleInputEmail1">User Name</label> 
							<input type="text" class="form-control" name="name" value="" />	
							
							<br />
							<label for="exampleInputEmail1">Select any file to update</label> 
						  <select class="form-control" id="formSelect" name="file">
					  	<c:forEach var="file" items="${filesNames}">
					      <option value="${file}">${file}</option>
					      </c:forEach>

					    </select>
							
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
	</div>
		</c:when>
		
		
 <c:when test="${mode == 'MODE_OTHER' }">
		<div class="container" id="homeDiv">
		<div>
<form>
<input id="textMessage" type="text">
<input onclick="sendMessage()" value="Send" type="button">
</form>

<!-- get the info when the user submit the user and which file want to edit. -->
<input type="hidden" value="${name}" id="name">
<input type="hidden" value="${file}" id="file">

<br><textarea rows="10" cols="50" id="messages" readonly></textarea>
	</div>
		<div>
			<form>
			<c:forEach var="inf" items="${info}" varStatus="infoIndex">
			<input type="text" class="form-control" name="name" value="${inf}" id="infoId${infoIndex.count}" onclick="processIds(this.id)" onkeyup="updateFile(this.id)"/>	
			<span id="infoId${infoIndex.count}m" class="text-success"></span>
			<hr class="hr-primary" id="infoId${infoIndex.count}h" />
			</c:forEach>
	<script src="static/js/ws.js"></script>
				</form>
				</div>
			</div>	
		</c:when>

	</c:choose>

</body>


</html>


