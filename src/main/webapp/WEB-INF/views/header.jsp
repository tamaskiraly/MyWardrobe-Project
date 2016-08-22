<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.simpleWeather/3.1.0/jquery.simpleWeather.min.js"></script>
<script src="resources/js/weather.js"></script>
<nav class="navbar navbar-default">
		<div class="container-fluid">
		
			<div class="navbar-header">
      			<a class="navbar-brand" href="#">MyWardrobe</a>
    		</div>
    		
    		<ul class="nav navbar-nav">
    		
    			<li><a href="#">Home</a></li>
    		
    			<li class="dropdown">
          			
          			<a href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Items <span class="caret"></span></a>
          	
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="<spring:url value="/item/add"/>">Add</a></li>
            			<li><a href="<spring:url value="/item/find"/>">Find</a></li>
          			</ul>
          			
        		</li>
        		
    			<li class="dropdown">
          		
          			<a href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Resources <span class="caret"></span></a>
          		
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="#">Add</a></li>
            			<li><a href="#">Find</a></li>
          			</ul>
        		
        		</li>
        		
    		</ul>
    		
		</div>
</nav>