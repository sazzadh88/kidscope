<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="http://aeteducation.in/js/css/styles.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="http://aeteducation.in/js/js/sliderman.1.3.7.js"></script>
	<link rel="stylesheet" type="text/css" href="http://aeteducation.in/js/css/sliderman.css" />
	
		<style type="text/css">
		* { margin: 0; outline: none; }
		body { background-color: #FFFFFF; }
		.c { clear: both; }
		#wrapper {  width:1000px; }
		/*h2 { padding: 20px 0 10px 0; font-size: 24px; line-height: 40px; font-weight: normal; color: #adc276; text-shadow: 0 1px 3px #222222; }*/
	</style>
	<link rel="stylesheet" href="http://aeteducation.in/js/css/colorbox.css" />
<script type="text/javascript" src="http://aeteducation.in/js/js/down.js" language="javascript"></script>
<script src="http://aeteducation.in/js/js/light_box.js"></script>
<script src="http://aeteducation.in/js/js/jquery.colorbox.js"></script>
<script>		$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group1").colorbox({rel:'group1'});
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				$(".group3").colorbox({rel:'group3', transition:"none", width:"75%", height:"75%"});
				$(".group4").colorbox({rel:'group4', slideshow:true});
				$(".ajax").colorbox();
				$(".youtube").colorbox({iframe:true, innerWidth:425, innerHeight:344});
				$(".vimeo").colorbox({iframe:true, innerWidth:500, innerHeight:409});
				$(".iframe").colorbox({iframe:true, width:"80%", height:"80%"});
				$(".inline").colorbox({inline:true, width:"50%"});
				$(".callbacks").colorbox({
					onOpen:function(){ alert('onOpen: colorbox is about to open'); },
					onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
					onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
					onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
					onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
				});

				$('.non-retina').colorbox({rel:'group5', transition:'none'})
				$('.retina').colorbox({rel:'group5', transition:'none', retinaImage:true, retinaUrl:true});
				
				//Example of preserving a JavaScript event for inline calls.
				$("#click").click(function(){ 
					$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
					return false;
				});
			});
		</script>
       	
		<script type="text/javascript">
		function clear()
		{
		
		document.getElementById("e_sub").value=="";
		}
		</script>

</head>

<body>
  <div id="side_links">
       <ul>
	   		<li><a href="#"><img src="http://aeteducation.in/js/images/icon-facebook.png"></a></li>
			<li><a href="#"><img src="http://aeteducation.in/js/images/icon-linkedin.png"></a></li>
			<li><a href="#"><img src="http://aeteducation.in/js/images/icon-twitter.png"></a></li>
            <li><a href="#"><img src="http://aeteducation.in/js/images/icon-google.png"></a></li>
	</ul>

</div>
<div id="top">
  
   <div id="logn" align="center"><a href="#login" class="inline">Login<span></span></a></div>
   <div style='display:none'>
					<div id="login" >
						<div class="doc_search_tab1">
						<h3 style="color:#4285f4">Login</h3>
						<form id="loginForm" method="post" action="#">
						<table><tr><td>
						<label for="email">Email Address</label></td></tr>
                        <tr><td><input type="text" name="email" id="email" /><br /></td></tr>
						<tr><td><label for="password">Password</label></td></tr>
                        <tr><td><input type="password" name="password" id="password" /></td></tr>
						 <tr><td colspan="2"><input type="submit" id="login1" class="login1" value="Sign in" />
                         <label for="checkbox"><input type="checkbox" id="checkbox" />Remember me</label></tr>
						 <tr><td>
						  <span class="forget"><a href="#">Forgot your password?</a></span></td></tr>
						  </table>
						</form>
						<br />
						</div>
						
					<div class="doc_search_tab_right">
							<br /><br />
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text</p>
					</div>
				</div>
  </div>
   
   <div id="logn" align="center"><a href="#login" class="inline">Sign Up<span></span></a></div>
  <div style='display:none'>
					<div id="login" >
						<div class="doc_search_tab1">
						<h3 style="color:#4285f4">Login</h3>
						<form id="loginForm" method="post" action="#">
						<table><tr><td>
						<label for="email">Email Address</label></td></tr>
                        <tr><td><input type="text" name="email" id="email" /><br /></td></tr>
						<tr><td><label for="password">Password</label></td></tr>
                        <tr><td><input type="password" name="password" id="password" /></td></tr>
						 <tr><td colspan="2"><input type="submit" id="login1" class="login1" value="Sign in" />
                         <label for="checkbox"><input type="checkbox" id="checkbox" />Remember me</label></tr>
						 <tr><td>
						  <span class="forget"><a href="#">Forgot your password?</a></span></td></tr>
						  </table>
						</form>
						<br />
						</div>
						
					<div class="doc_search_tab_right">
							<br /><br />
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text</p>
					</div>
				</div>
  </div>
  
<div id="logo"></div>
 
</div>
<div class="wrapper2">
		<div class="main_menu">
			<div class="menu">
				<ul>
					<li><a href="#"  class="r">Home</a></li>
					<li><a href="#">Groups</a></li>
					<li><a href="#">Blogs</a></li>
					<li><a href="#">Hotels</a>
                    	<ul>
							<li class="sub_menu"><a href="#">Top Hotels</a></li>
							<li class="sub_menu"><a href="#">Top Hostels</a></li>
							<li class="sub_menu"><a href="#">Inventions</a></li>
						</ul>
                    </li>
					<li><a href="#">Hostels</a></li>
					<li class="aa"><a href="#">Contact</a></li>
                  	
				</ul>
			</div>
		</div>
</div>
<div class="wrapper3">
  <div class="banner">
		<div id="frm"><h2>SEARCH</h2>
		<form action="" method="get" >
	      <select name="select2" id="slct">
          <option selected="selected" id="h">Select Country</option>
          <option>India</option>
        </select>
        <select name="select" id="slct">
		<option selected="selected" id="h">Select City</option>
		<option>Chennai</option>
		</select>
<input type="date" value="Check In Date" id="slct">	
<input type="date" value="Check Out Date" id="slct">


<table width="51%" border="0">
		 <tr>
      <td colspan="2" align="center"><h2>Select Property Type</h2></td>
      </tr>
  <tr>
    <td width="18%"><input type="checkbox" class="chkg" /></td>
    <td width="82%"><h6>Hotel</h6></td>
  </tr>
  <tr>
    <td><input type="checkbox" class="chkg1" /></td>
    <td><h6>Hostel</h6></td>
  </tr>
  <tr>
    <td><input type="checkbox" class="chkg2" /></td>
    <td><h6>Apartment</h6></td>
  </tr>
  <tr>
    <td><input type="checkbox" class="chkg3" /></td>
    <td><h6>GuestHouse</h6></td>
  </tr>
</table>
<input type="submit" value="submit" id="btn" />
		</form>
		</div>
		
		<div id="right">
		
		<div id="wrapper">
   <div id="examples_outer">
			
  
  <div id="slider_container_2">

				<div id="SliderName_2" class="SliderName_2">
					<img src="http://aeteducation.in/js/images/800px-Hotel_Sacher_Vienna_Sept_2006_002.jpg" width="680" height="300" alt="Demo2 first" title="Demo2 first" usemap="#img1map" />
					<div class="SliderName_2Description"><strong>Top Hotels</strong></div>
					<map name="img1map">
						<area href="#img1map-area1" shape="rect" coords="100,100,200,200" />
						<area href="#img1map-area2" shape="rect" coords="300,100,400,200" />
					</map>
					
					<img src="http://aeteducation.in/js/images/Atlantis-the-Palm_Big.jpg" width="680" height="300" alt="Demo2 second" title="Demo2 second" />
					<div class="SliderName_2Description"> SEARCH<strong>Different Hotels</strong></div>
					<img src="http://aeteducation.in/js/images/Bellagio-front.jpg" width="680" height="300" alt="Demo2 third" title="Demo2 third" />
					<div class="SliderName_2Description"><strong>TOP MOST HOTEL SEARCH</strong></div>
					
				</div>
				<div class="c"></div>
				<div id="SliderNameNavigation_2"></div>
				<div class="c"></div>

				<script type="text/javascript">
					effectsDemo2 = 'rain,stairs,fade';
					var demoSlider_2 = Sliderman.slider({container: 'SliderName_2', width: 680, height: 300, effects: effectsDemo2,
						display: {
							autoplay: 3000,
							loading: {background: '#000000', opacity: 0.5, image: 'images/loading.gif'},
							buttons: {hide: true, opacity: 1, prev: {className: 'SliderNamePrev_2', label: ''}, next: {className: 'SliderNameNext_2', label: ''}},
							description: {hide: true, background: '#000000', opacity: 0.4, height: 50, position: 'bottom'},
							navigation: {container: 'SliderNameNavigation_2', label: '<img src="http://aeteducation.in/js/images/clear.gif" />'}
						}
					});
				</script>
			
		
		
		
		</div>
		</div>
	
</div>
</div></div></div>




<div id="content">
 
  <div id="top_hotels"><h1>TOP HOTELS</h1>
     <ul>
	 <li><img src="http://aeteducation.in/js/images/hotel.jpg" height="150px" width="150px" /></li>
      <li><img src="http://aeteducation.in/js/images/taj_hotels.jpg" height="150px" width="150px" /></li>
	  <li><img src="http://aeteducation.in/js/images/Bellagio-front.jpg"height="150px" width="150px" /></li>
	  <li><img src="http://aeteducation.in/js/images/dubai_hotel_2.jpg" height="150px" width="150px" /></li>
	 
	
	  </ul>
  </div>
</div>
</body>
</html>
