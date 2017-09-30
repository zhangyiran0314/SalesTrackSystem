<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><spring:message code="index_Title"/></title>
<link rel="Stylesheet" type="text/css" href="${ctx }/style/loginDialog.css" />
<script src="${ctx }/js/jquery/jquery-1.8.2.min.js" type="text/javascript"></script>

<script src="${ctx }/js/prototype.lite.js" type="text/javascript"></script>
<script src="${ctx }/js/moo.fx.js" type="text/javascript"></script>
<script src="${ctx }/js/moo.fx.pack.js" type="text/javascript"></script>


<script type="text/javascript" src="${ctx }/js/lhgcalendar/lhgcore.js"></script>
<script type="text/javascript" src="${ctx }/js/lhgcalendar/lhgcalendar.js"></script>
<script>
document.onkeydown=function(event){
    var e = event || window.event || arguments.callee.caller.arguments[0];
     if(e && e.keyCode==13){ // enter 键
        alert("please click the query button!");
        return false;
    }
};  
</script>
</head>
<frameset rows="90,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="${ctx }/top" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  	<frameset cols="200,*"  rows="680,*" id="frame">
	<frame src="${ctx }/left" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="${ctx }/right" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  </frameset>
  </frameset>
<!-- <noframes>
  <body>
  </body>
    </noframes> -->
</html>