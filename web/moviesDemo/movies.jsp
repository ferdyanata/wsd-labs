<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html >
  <head>
    <title>Movie Land JSP</title>
  </head>

  <body>
      
      <!-- Replace the URL value with the location of movies.xml on your PC-->
    <c:import url="file:///D:/NetBeans/NetBeans%208.1/Projects/Demo-lec6-XSLT/web/movies.xml"
              var="inputDoc" />

    <!-- Replace the URL value with the location of movies.xsl on your PC-->
    <c:import url="file:///D:/NetBeans/NetBeans%208.1/Projects/Demo-lec6-XSLT/web/movies.xsl"
              var="stylesheet" />

    <!-- Transform xml inputDoc using stylesheet -->
    <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
      <x:param name="bgColor"  value="lightgreen" />
    </x:transform>
  </body>
</html>