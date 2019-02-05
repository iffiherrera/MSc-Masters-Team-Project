<html>

	<head>
		<!-- Web page title -->
    	<title>Top Trumps</title>
    	
    	<!-- Import JQuery, as it provides functions you will probably find useful (see https://jquery.com/) -->
    	<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
    	<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    	<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/flick/jquery-ui.css">

		<!-- Optional Styling of the Website, for the demo I used Bootstrap (see https://getbootstrap.com/docs/4.0/getting-started/introduction/) -->
		<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/TREC_IS/bootstrap.min.css">
    	<script src="http://dcs.gla.ac.uk/~richardm/vex.combined.min.js"></script>
    	<script>vex.defaultOptions.className = 'vex-theme-os';</script>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex.css"/>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex-theme-os.css"/>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style>
    	
	body{
	background-color: #12A5F4; }
<!-- gallery class to contain opponents cards in a row -->
	div.gallery {
	  margin: 5px;
	  border: 1px solid #ccc;
	  float: left;
	  width: 180px;
	  height: 250px;
	  background-color: #F1F1F1;
	  border-radius: 8px;
	  border-color: black;
	  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	}

<!-- class to change the appearance when someone hovers over the gallery -->
	div.gallery:hover {
  	border: 1px solid #777;
  	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	}
	
	
<!-- class set how the images are contained in the gallery -->
div.gallery img {
	padding: 5px;
  width: 100%;
  height: auto;
  border-color: black;
}

<!-- class to contain the decsription of the cards -->
div.desc {
  padding: 15px;
  text-align: center;
  font-family: arial,serif;
  font-size: 15px
	
}
<!-- class to format the exit button -->
.goBackButton{
		margin: 5px;
    	background-color: #FF7C30;
    	-webkit-transition-duration: 0.4s; /* Safari */
    	transition-duration: 0.4s;
    	font-size: 20px;
    	font-family: arial,serif;
    	font-size: 20px;
    	color: white;
    	cursor:pointer;
    	width: 100%;
    	border-radius: 8px;
    	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    }
    
<!-- class to make exit button hoverable -->
    .goBackButton:hover{
    	background-color: #F25900;
    	font-color:white;
    	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
    }
<!-- class to contain current scores -->
    .scoresBox{
		background-color:#F1F1F1;
        font-size: 15px;
        font-family: arial, serif; 
        font-color:black;
       	padding:20px;
       	margin: 5px;
        margin-right: 20px;
       	border-radius: 8px;
        border-color: black;
        border-width: 2px;
       	width:100%;
	  	border-color: black;
       	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.24), 0 6px 20px 0 rgba(0,0,0,0.19);

</style>

<style>

<!-- class for div background at bottom of the page -->
div.rectangleBackGround {
  height: 250px;
  width: 200px;
  border-radius: 8px;
  background-color: #ffffff;
  position: fixed;
  width: 98%;
  left: 1%;
  bottom: 10px;
}


<!-- class to contain the player's card and its categories -->
div.squareMainCard {
  height: 350px;
  width: 250px;
  border-radius: 8px;
  border-style: solid;
  border-width: 1px;
  margin-left:-150px;
  position:fixed;
  background:#f1f1f1;
  bottom:30px;
  left:50%;
  top: 50%;

}

<!-- class to specify the format of the category buttons -->
button {
  background-color: #ff7c30; 
  color: white;
  font-style: arial,serif;
  width: 100%
  cursor: pointer; 
  border-radius: 8px;
  margin: 4px;
  text-align: center;

}
<!-- class to specify the format how the buttons sit as a group -->
div.btn-group button {
  width: 230px; 
  height: 35px;
  bottom: 0px;
  top: 40%;
  left: 10px;
  margin:4px;
  border-radius: 8px;
  display: block;

}

.btn-group button:not(:last-child) {
  border-bottom: none; 
}

<!-- adding hover function to buttons -->
.btn-group button:hover {
  background-color: #f25900;
}

<!-- class to hold the player and last round winner -->
div.textSquare {
  text-align: left;
  top: 50px;
  padding-left: 10%;
  font: arial, serif;
}

<!-- class to represent the communal pile -->
.cardPile {
  background: #f1f1f1;
  height: 250px;
  width: 150px;
  font-style: arial, serif;
  font-size: 15px;
  text-align: left;
  border-radius: 8px;
  border-width: 1px;
  border-style: solid;
  position: fixed;
  bottom:200px;
  right: 75px;
  border-color: black;
  box-shadow:
    0 -1px 2px rgba(0,0,0,0.15),
    0 -10px 0 -5px #eee,
    0 -10px 2px -4px rgba(0,0,0,0.15),
    0 -20px 0 -10px #eee,
    0 -20px 2px -9px rgba(0,0,0,0.15);
    padding: 30px;


}

</style>


	</head>

    <body onload="initalize()"> <!-- Call the initalize method when the page loads -->
    	
    	<div class="container">

<!-- adding a row, that will contain 3 columns, first one holding 'go back button, the -->
<!-- second the gallery, the third the stats -->

			<div class= "container-fluid">
	<div class="row">
		<div class ="col-sm-1" style="width:10%">
			<button class = "goBackButton">Go Back</button>
		</div>
		<div class="col-sm-9" style="width:70%"> 
<div class="gallery">
  <a target="_blank" href="Avenger.jpg">
    <img src="Avenger.jpg" alt="Player 1" style="width:177px;height:110px;">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="Carrack.jpg">
    <img src="Carrack.jpg" alt="Player 2" style="width:177px;height:110px;">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="Constellation.jpg">
    <img src="Constellation.jpg" alt="Player 3" style="width:177px;height:110px;">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="350r.jpg">
    <img src="350r.jpg" alt="Player 4" style="width:177px;height:110px;">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>
</div>
<div class="col-sm-2" style="width:20%">
<div class="scoresBox">
				<p> Your score: <br>
					Round: <br>
					Cards left: <br>
				 </p>
			</div>
</div>
</div>


<!-- bottom row which will take up bottom half of the screen -->

<div class="row">
  <div class ="col-sm-12">
<div class="rectangleBackGround">
<div class="textSquare">
    <p><h3><b>Turn:</b> Player 1<br>
  <b>Winner:</b> You<br></p></h3></div>
</div>
    <!-- adding the human player card with categories -->
        <div class="squareMainCard">  
  <div class ="col-sm-9">
   
  <div class="squareMainCard" align="bottom"> 
  <img src="350r.jpg" alt="Player 0" style="width:247px;height:150px;padding:5px">

  <div class="btn-group" >
   <ul style="padding-left: 4px"> 
  <button>Category 1</button>
  <button>Category 2</button>
  <button>Category 3</button>
  <button>Category 4</button>
  <button>Category 5</button>
</ul>

 </div>
 <div class="col-sm-3">
   <div class="cardPile">
     <p><h5><center><b>Communal Pile</b></center></h5> <br> No.of Cards: </p>
   </div>
</div>
</div>
</div>
</div>
</div>
</div>

		
		</div>
		
		<script type="text/javascript">
		
			// Method that is called on page load
			function initalize() {
			
				// --------------------------------------------------------------------------
				// You can call other methods you want to run when the page first loads here
				// --------------------------------------------------------------------------
				
				// For example, lets call our sample methods
				helloJSONList();
				helloWord("Student");
				
			}
			
			// -----------------------------------------
			// Add your other Javascript methods Here
			// -----------------------------------------
		
			// This is a reusable method for creating a CORS request. Do not edit this.
			function createCORSRequest(method, url) {
  				var xhr = new XMLHttpRequest();
  				if ("withCredentials" in xhr) {

    				// Check if the XMLHttpRequest object has a "withCredentials" property.
    				// "withCredentials" only exists on XMLHTTPRequest2 objects.
    				xhr.open(method, url, true);

  				} else if (typeof XDomainRequest != "undefined") {

    				// Otherwise, check if XDomainRequest.
    				// XDomainRequest only exists in IE, and is IE's way of making CORS requests.
    				xhr = new XDomainRequest();
    				xhr.open(method, url);

 				 } else {

    				// Otherwise, CORS is not supported by the browser.
    				xhr = null;

  				 }
  				 return xhr;
			}
		
		</script>
		
		<!-- Here are examples of how to call REST API Methods -->
		<script type="text/javascript">
		
			// This calls the helloJSONList REST method from TopTrumpsRESTAPI
			function helloJSONList() {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/helloJSONList"); // Request type and URL
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
					alert(responseText); // lets produce an alert
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}
			
			// This calls the helloJSONList REST method from TopTrumpsRESTAPI
			function helloWord(word) {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/helloWord?Word="+word); // Request type and URL+parameters
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
					alert(responseText); // lets produce an alert
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}

		</script>
		
		</body>
</html>