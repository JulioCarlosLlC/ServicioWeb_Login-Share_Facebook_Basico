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
    // Cargar el SDK de forma asincrónica
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    // Esto se llama con los resultados de FB.getLoginStatus ().
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

    // Esta función se llama cuando alguien termina con el Login
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
        // Ahora que hemos inicializado el SDK de JavaScript, llamamos
        // FB.getLoginStatus (). Esta función obtiene el estado del
        // persona que visita esta página y puede devolver uno de los tres estados a
        // la devolución de llamada que usted proporciona. Ellos pueden ser:
        //
        // 1. Iniciar sesión en tu aplicación ('conectado')
        // 2. Conectado a Facebook, pero no a tu aplicación ('not_authorized')
        // 3. No has iniciado sesión en Facebook y no puedes saber si están conectados
        // tu aplicación o no.
        //
        // Estos tres casos se tratan en la función de devolución de llamada.
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    };

    // Aquí ejecutamos una prueba muy simple de la Graph API después de iniciar sesión
    // éxito. Consulte statusChangeCallback () para cuando se realiza esta llamada.
    function testAPI() {
        console.log('Bienvenido!  Fetching your information.... ');
        FB.api('/me', function(response) {
            console.log('Ingreso con exito de : ' + response.name);
            document.getElementById('status').innerHTML ='</br>Gracias por ingresar:  ' + response.name + '!';
        });
    }
</script>

<!--
  A continuación incluimos el plugin social del botón de inicio de sesión. Este botón utiliza
  JavaScript SDK para presentar un botón de inicio de sesión gráfico que activa
  La función FB.login () cuando se hace clic.
-->

<fb:login-button id="btnfb" scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

    <div id="status">
    </div>

    <div id="imagen"></div>


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
