<%-- 
    Document   : layout
    Created on : Oct 8, 2016, 12:57:48 PM
    Author     : tuong
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib  prefix="co-well" tagdir="/WEB-INF/tags/clients" %>
<html>
    <head>
        <co-well:head></co-well:head>
    </head>
    <body>
    <co-well:header></co-well:header>
    <jsp:doBody></jsp:doBody>
    <co-well:footer></co-well:footer>
    <a href="" class="backtotop" style="display: inline;"><img src="http://co-well.vn/asset/frontend/img/backtotop.png" alt="Back to top"></a>
    <script type="text/javascript" src="resource/clients/js/jquery-1.11.2.min.js"></script>
      <!--<script type="text/javascript" src="clients/js/css_browser_selector.js"></script>-->
      <script src="resource/clients/js/css_browser_selector.js" type="text/javascript"></script>
      <script type="text/javascript" src="resource/clients/js/slideall.js"></script>
      <script type="text/javascript" src="resource/clients/js/swiper.jquery.min.js"></script>
      <script type="text/javascript" src="resource/clients/js/owl.carousel.min.js"></script>
      <script type="text/javascript" src="resource/clients/js/mediaelement-and-player.js"></script>

      <!--<script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>
         My custom -->
      <script type="text/javascript" src="resource/clients/js/scripts.js"></script>
      <script type="text/javascript" src="resource/clients/js/custom.js"></script>
      <!--<script src="http://maps.googleapis.com/maps/api/js"></script>-->
      <script type="text/javascript">
         var searchUrl = 'search'    
      </script>
      <script type="text/javascript" src="resource/clients/js/jquery.matchHeight.js"></script>
      <script type="text/javascript">
         $(function() {
             $('.swiper-wrapper li').matchHeight();
         });
      </script>
   
    </body>
</html>