<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<jsp:include page="header.jsp" />
<body>


		<jsp:include page="menu.jsp" />
		
		<c:choose>
		<c:when test="${mode == 'WS_INDEX' }">
		
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h3>Please enter your user name</h3>
					<hr>
					<form method="POST" action="start-ws">

						<div class="form-group">
							<label for="exampleInputEmail1">User Name</label> <input
								type="text" class="form-control" name="name" value="" /> <br />
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


		<c:when test="${mode == 'MODE_FILES' }">
		
			<div class="container" id="homeDiv">
			
				<div>
					<!-- mini chat start -->
					<form>
						<div class="row">
							<div class="col-md-6" style="width: 44%">
								<input id="textMessage" type="text" class="form-control">
							</div>
							<div class="col-md-6">
								<input onclick="sendMessage()" value="Send" type="button"
									class="btn btn-primary">
							</div>
						</div>
					</form>
					<!-- get the info when the user submit the user and which file want to edit. -->
					<input type="hidden" value="${name}" id="name"> <input type="hidden" value="${file}" id="file"> <br>
					<textarea rows="10" cols="50" id="messages" readonly class="form-control" style="width:50%"></textarea><br />
					<!-- mini chat end -->
					</div>
					
				<div>
					<form>
						<c:forEach var="inf" items="${info}" varStatus="infoIndex">
							<input type="text" class="form-control" name="name" value="${inf}" id="infoId${infoIndex.count}" onclick="processIds(this.id)" onkeyup="updateFile(this.id,event)" />
							<strong><span id="infoId${infoIndex.count}m" class="text-primary"></span></strong>
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


