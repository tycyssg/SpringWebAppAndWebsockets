<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<jsp:include page="header.jsp" />
<body>


		<jsp:include page="menu.jsp" />
		
		<c:choose>
		<c:when test="${mode == 'TEST_INDEX' }">
		
			<div class="container" id="homeDiv">
				<div class="jumbotron">
					<h3 class="text-center">Edit account information</h3>
					<small><i class="fa fa-spinner fa-spin"></i>Thread Payload 0</small>
					<hr>
					
					<!-- Drop down button start -->
					<div class="container">                                        
					  <div class="dropdown">
					    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width:300px;">Homepage->My Profile->Address book
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu">
					      <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Navigate and run test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>254</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Run test on thread</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>130</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					      	<ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Init test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>173</li>
							 </ul>
					      </a></li>
					      
					      <li class="divider"></li>
					      <li style="width:550px;">
					  <div class="alert alert-danger" role="alert" style="border-radius:0;">
					Traceback (most recent call last):n  File "runner2.py", line 120, in run_test_on_threadn 
					 wrapper.navigate_and_run_test(testObject, path)n  File "C:Projectstestautomation2Wrapper.py", line 254, in navigate_and_run_testn 
					 self.thread.init_test(testName=testName, testResults=testResults)n  File "C:Projectstestautomation2ThreadPayload.py",
					 line 173, in init_testn    self.singleton.list_of_asserts[self.name].clear()nKeyError: ThreadPayload_0n
					</div>
					      </li>
					    </ul>
					    				
					  </div>
					</div>
				<!-- Drop down button End-->
					
				<br><br>
					<!-- Drop down button start -->
					<div class="container">                                        
					  <div class="dropdown">
					    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width:300px;">Homepage->My Profile->My orders
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu">
					      <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Navigate and run test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>254</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Run test on thread</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>130</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Init test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>173</li>
							  </ul>
					      </a></li>
					      <li class="divider"></li>
					      <li style="width:550px;">
					  <div class="alert alert-danger" role="alert" style="border-radius:0;">
					Traceback (most recent call last):n  File "runner2.py", line 120, in run_test_on_threadn 
					 wrapper.navigate_and_run_test(testObject, path)n  File "C:Projectstestautomation2Wrapper.py", line 254, in navigate_and_run_testn 
					 self.thread.init_test(testName=testName, testResults=testResults)n  File "C:Projectstestautomation2ThreadPayload.py",
					 line 173, in init_testn    self.singleton.list_of_asserts[self.name].clear()nKeyError: ThreadPayload_0n
					</div>
					      </li>
					    </ul>
					    				
					  </div>
					</div>
				<!-- Drop down button End-->
				</div>
			</div>
			
			
			<!-- Second test -->
			
			<div class="container" id="homeDiv">
				<div class="jumbotron">
					<h3 class="text-center">Edit account information</h3>
					<small><i class="fa fa-spinner fa-spin"></i>Thread Payload 0</small>
					<hr>
					
					<!-- Drop down button start -->
					<div class="container">                                        
					  <div class="dropdown">
					    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width:300px;">Homepage->My Profile->Address book
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu">
					      <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Navigate and run test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>254</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Run test on thread</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>130</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					      	<ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Init test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>173</li>
							 </ul>
					      </a></li>
					      
					      <li class="divider"></li>
					      <li style="width:550px;">
					  <div class="alert alert-danger" role="alert" style="border-radius:0;">
					Traceback (most recent call last):n  File "runner2.py", line 120, in run_test_on_threadn 
					 wrapper.navigate_and_run_test(testObject, path)n  File "C:Projectstestautomation2Wrapper.py", line 254, in navigate_and_run_testn 
					 self.thread.init_test(testName=testName, testResults=testResults)n  File "C:Projectstestautomation2ThreadPayload.py",
					 line 173, in init_testn    self.singleton.list_of_asserts[self.name].clear()nKeyError: ThreadPayload_0n
					</div>
					      </li>
					    </ul>
					    				
					  </div>
					</div>
				<!-- Drop down button End-->
					
				<br><br>
					<!-- Drop down button start -->
					<div class="container">                                        
					  <div class="dropdown">
					    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width:300px;">Homepage->My Profile->My orders
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu">
					      <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Navigate and run test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>254</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Run test on thread</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>130</li>
							  </ul>
					      </a></li>
					      
					            <li><a href="#">
					           <ul class="fa-ul">
							  <li><i class="fa-li fa fa-chain-broken" aria-hidden="true"></i>Init test</li>
							  <li><i class="fa-li fa fa-th-list" aria-hidden="true"></i>173</li>
							  </ul>
					      </a></li>
					      <li class="divider"></li>
					      <li style="width:550px;">
					  <div class="alert alert-danger" role="alert" style="border-radius:0;">
					Traceback (most recent call last):n  File "runner2.py", line 120, in run_test_on_threadn 
					 wrapper.navigate_and_run_test(testObject, path)n  File "C:Projectstestautomation2Wrapper.py", line 254, in navigate_and_run_testn 
					 self.thread.init_test(testName=testName, testResults=testResults)n  File "C:Projectstestautomation2ThreadPayload.py",
					 line 173, in init_testn    self.singleton.list_of_asserts[self.name].clear()nKeyError: ThreadPayload_0n
					</div>
					      </li>
					    </ul>
					    				
					  </div>
					</div>
				<!-- Drop down button End-->
				</div>
			</div>
			
			
		</c:when>
</c:choose>

</body>


</html>


