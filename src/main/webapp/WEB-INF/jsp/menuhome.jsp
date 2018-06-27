<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="http://d2r8jqmejizzox.cloudfront.net/361456-853098-65x38-logofinal.png"></a>
    </div>
  
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="navbar-collapse style= collapse in" id="bs-megadropdown-tabs" style="
    padding-left: 0px;">
        <ul class="nav navbar-nav">
            <li><a href="/"><i class="fa fa-home"></i> HOME</a></li>
             <li><a href="#"><i class="fa fa-university"></i> POLITICS</a></li>
            
            <li class="dropdown mega-dropdown">
			   <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-space-shuttle"></i> CATEGORIES <span class="caret"></span></a>				
				<div id="filters" class="dropdown-menu mega-dropdown-menu">
                    <div class="container-fluid2">
    				    <!-- Tab panes -->
                        <div class="tab-content">
   
                          <div class="tab-pane active" id="kids">
                   			 <jsp:include page="menulinks.jsp" />
                  	        </div>
                  	                                  
                        </div>
                    </div>
                   
				</div>				
			</li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Newsletter">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">SIGN IN <span class="caret"></span></a>
             <ul id="login-dp" class="dropdown-menu">
    			<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required="">
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required="">
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="#"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://placehold.it/1200x400/16a085/ffffff&text=About Us">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/e67e22/ffffff&text=Projects">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/2980b9/ffffff&text=Portfolio">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/8e44ad/ffffff&text=Services">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                </div>
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        <ul class="nav nav-pills nav-justified">
            <li data-target="#myCarousel" data-slide-to="0"><a href="#">Who we are</a></li>
            <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects</a></li>
            <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services</a></li>
        </ul>
    </div>
    <!-- End Carousel -->
</div>