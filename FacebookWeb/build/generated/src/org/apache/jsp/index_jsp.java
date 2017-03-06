package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"index.css\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<script>\n");
      out.write("    // Cargar el SDK de forma asincrónica\n");
      out.write("    (function(d, s, id) {\n");
      out.write("        var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("        if (d.getElementById(id)) return;\n");
      out.write("        js = d.createElement(s); js.id = id;\n");
      out.write("        js.src = \"//connect.facebook.net/en_US/sdk.js\";\n");
      out.write("        fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("    }(document, 'script', 'facebook-jssdk'));\n");
      out.write("\n");
      out.write("    // Esto se llama con los resultados de FB.getLoginStatus ().\n");
      out.write("    function statusChangeCallback(response) {\n");
      out.write("        console.log('statusChangeCallback');\n");
      out.write("        console.log(response);\n");
      out.write("        if (response.status === 'connected') {\n");
      out.write("            testAPI();\n");
      out.write("            //getFacebookData();\n");
      out.write("        } else if (response.status === 'not_authorized') {\n");
      out.write("                    document.getElementById('status').innerHTML = 'Please log ' + 'into this app.';\n");
      out.write("                } else {\n");
      out.write("                    document.getElementById('status').innerHTML = 'Please log ' + 'into Facebook.';\n");
      out.write("                }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    // Esta función se llama cuando alguien termina con el Login\n");
      out.write("    function checkLoginState() {\n");
      out.write("        FB.getLoginStatus(function(response) {\n");
      out.write("            statusChangeCallback(response);\n");
      out.write("        });\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("\n");
      out.write("    window.fbAsyncInit = function() {\n");
      out.write("        FB.init({\n");
      out.write("            appId      : '1850671108521789',\n");
      out.write("            cookie     : true,  // enable cookies to allow the server to access \n");
      out.write("            status     : true,\n");
      out.write("            xfbml      : true,  // parse social plugins on this page\n");
      out.write("            version    : 'v2.8' // use graph api version 2.8\n");
      out.write("        });\n");
      out.write("        // Ahora que hemos inicializado el SDK de JavaScript, llamamos\n");
      out.write("        // FB.getLoginStatus (). Esta función obtiene el estado del\n");
      out.write("        // persona que visita esta página y puede devolver uno de los tres estados a\n");
      out.write("        // la devolución de llamada que usted proporciona. Ellos pueden ser:\n");
      out.write("        //\n");
      out.write("        // 1. Iniciar sesión en tu aplicación ('conectado')\n");
      out.write("        // 2. Conectado a Facebook, pero no a tu aplicación ('not_authorized')\n");
      out.write("        // 3. No has iniciado sesión en Facebook y no puedes saber si están conectados\n");
      out.write("        // tu aplicación o no.\n");
      out.write("        //\n");
      out.write("        // Estos tres casos se tratan en la función de devolución de llamada.\n");
      out.write("        FB.getLoginStatus(function(response) {\n");
      out.write("            statusChangeCallback(response);\n");
      out.write("        });\n");
      out.write("    };\n");
      out.write("\n");
      out.write("    // Aquí ejecutamos una prueba muy simple de la Graph API después de iniciar sesión\n");
      out.write("    // éxito. Consulte statusChangeCallback () para cuando se realiza esta llamada.\n");
      out.write("    function testAPI() {\n");
      out.write("        console.log('Bienvenido!  Fetching your information.... ');\n");
      out.write("        FB.api('/me', function(response) {\n");
      out.write("            console.log('Ingreso con exito de : ' + response.name);\n");
      out.write("            document.getElementById('status').innerHTML ='</br>Gracias por ingresar:  ' + response.name + '!';\n");
      out.write("        });\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("  A continuación incluimos el plugin social del botón de inicio de sesión. Este botón utiliza\n");
      out.write("  JavaScript SDK para presentar un botón de inicio de sesión gráfico que activa\n");
      out.write("  La función FB.login () cuando se hace clic.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("<fb:login-button id=\"btnfb\" scope=\"public_profile,email\" onlogin=\"checkLoginState();\">\n");
      out.write("</fb:login-button>\n");
      out.write("\n");
      out.write("    <div id=\"status\">\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div id=\"imagen\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- Your share button code -->\n");
      out.write("    </br>Radio Diablo Squad\n");
      out.write("  <div class=\"fb-share-button\" \n");
      out.write("    data-href=\"http://francoescamillaoficial.com/radio.php\" \n");
      out.write("    data-layout=\"button_count\">\n");
      out.write("  </div>\n");
      out.write("    </br>Qué aprender de Javascript en el 2017 de Platzi \n");
      out.write("  <div class=\"fb-share-button\" \n");
      out.write("    data-href=\"https://www.youtube.com/watch?v=sBbNzBMiEgU\" \n");
      out.write("    data-layout=\"button_count\">\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("    <a class=\"twitter-timeline\"  href=\"https://twitter.com/hashtag/GameofThrones\" data-widget-id=\"837478878440472576\">Tweets sobre GameofThrones</br></a>\n");
      out.write("            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\"://platform.twitter.com/widgets.js\";fjs.parentNode.insertBefore(js,fjs);}}(document,\"script\",\"twitter-wjs\");</script>\n");
      out.write("          \n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
