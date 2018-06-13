<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.jar.*" %>
<%@ page import="de.meinefirma.meinprojekt.MeineBean" %>

<html>
<body>
<h2>Hello World!</h2>
<%
   String pth = getServletConfig().getServletContext().getRealPath( "/" );
   if( !pth.endsWith( "/" ) && !pth.endsWith( "\\" ) ) pth += "/";
   File mf = new File( pth + "META-INF/MANIFEST.MF" );
   if( mf.exists() ) {
      out.println( "<h4>Attribute in der META-INF/MANIFEST.MF:</h4>" );
      Manifest manifest = new Manifest( new FileInputStream( mf ) );
      for( Map.Entry<Object,Object> attr : manifest.getMainAttributes().entrySet() ) {
         out.println( attr + "<br>" );
      }
   }
   out.println( "<h4>MeineBean:</h4>MeineBean.berechne( 1, 2 ): " + MeineBean.berechne( 1, 2 ) );
%>
</body>
</html>
