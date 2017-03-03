<%-- 
    Document   : index
    Created on : 02/03/2017, 04:04:28 PM
    Author     : Julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="index.css">
        
    </head>
    <body>
<script>
  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
  
  
  
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
        if (response.status === 'connected') {
            testAPI();
            
            //getFacebookData();
        } else if (response.status === 'not_authorized') {
                    document.getElementById('status').innerHTML = 'Please log ' + 'into this app.';
                } else {
                    document.getElementById('status').innerHTML = 'Please log ' + 'into Facebook.';
                }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1850671108521789',
    cookie     : true,  // enable cookies to allow the server to access 
    status     : true,
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.8
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };


  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Bienvenido!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Ingreso con exito de : ' + response.name);
      
      document.getElementById('status').innerHTML =
        '</br>Gracias por ingresar:  ' + response.name + '!';
        
    });
  }
</script>

<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

<fb:login-button id="btnfb" scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

    <div id="status">
    </div>

    <div id="imagen"></div>
    
 <!-- Load Facebook SDK for JavaScript -->
  <div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <!-- Your share button code -->
    </br>Radio Diablo Squad
  <div class="fb-share-button" 
    data-href="http://francoescamillaoficial.com/radio.php" 
    data-layout="button_count">
  </div>
    </br>Qué aprender de Javascript en el 2017 de Platzi 
  <div class="fb-share-button" 
    data-href="https://www.youtube.com/watch?v=sBbNzBMiEgU" 
    data-layout="button_count">
  </div>
    
    <a class="twitter-timeline"  href="https://twitter.com/hashtag/GameofThrones" data-widget-id="837478878440472576">Tweets sobre GameofThrones</br></a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          

</body>
</html>
