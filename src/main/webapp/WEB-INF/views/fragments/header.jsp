<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.simpleWeather/3.1.0/jquery.simpleWeather.min.js"></script>
<script src="resources/js/weather.js"></script>
<nav class="navbar navbar-default">
		<div class="container-fluid">
		
			<div class="navbar-header">
      			<a style="padding:0;" class="navbar-brand climate_bgHeader"></a>
      			<a style="padding:15;" class="navbar-brand temperatureHeader"></a>
      			<a style="padding:15;" class="navbar-brand locationHeader"></a>
    		</div>
    		
    		<ul class="nav navbar-nav">
    		
    			<li><a href="index">Home</a></li>
    			<li><a href="getItems">MyWardrobe</a></li>
    			
    			
    		
    			<li class="dropdown">
          			
          			<a href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Items<span class="caret"></span></a>
          	
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="addItem">Add</a></li>
            			<li><a href="getItems">Find</a></li>
          			</ul>
          			
        		</li>
        		
    			<li class="dropdown">
          		
          			<a href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Outfit <span class="caret"></span></a>
          		
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="planOutfit">Add</a></li>
            			<li><a href="getOutfits">Find</a></li>
          			</ul>
        		
        		</li>
        		
    			<li><a href="j_spring_security_logout">Log Out</a></li>
    		</ul>
    		
		</div>
</nav>