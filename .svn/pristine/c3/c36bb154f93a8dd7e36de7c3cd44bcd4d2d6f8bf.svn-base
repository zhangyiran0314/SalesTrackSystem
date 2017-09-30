<!-- 假如用代理服务器，request.getRemoteAddr();    只能得到代理服务器地址，以下方法是得到正确所有ip的方法
在jsp声明这个函数  把以下代码嵌入jsp网页中，然后用<%String ip=getIpAddr(request);%>得到访问者ip
ip就是访问者的ip，你保存到数据库或者缓存中，就由你自己了 -->
<%!public String getIpAddr(HttpServletRequest request) { 
    String ip = request.getHeader("x-forwarded-for");    
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {    
        ip = request.getHeader("Proxy-Client-IP");    
    }    
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {    
        ip = request.getHeader("WL-Proxy-Client-IP");    
    }    
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {    
        ip = request.getRemoteAddr();    
    }    
    return ip;    
}%>
<%String ipValue=getIpAddr(request);%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<title><spring:message code="index_right_imeiforaftersales_jsp_title"/></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #000000;
}
.STYLE5 {font-size: 12px; color: #FFFFFF; margin-left: -80px;}
.STYLE7 {font-size: 12px; color: #FFFFFF; }
-->
</style>
<script src="${ctx }/js/jquery/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="${ctx }/js/Clock.js" type="text/javascript"></script>
<link rel="Stylesheet" type="text/css" href="${ctx }/style/loginDialog.css" />
<script>
function changeColor(type) {
	if(type==1) {
		$("#style5").css("color","red");
	}else {
		$("#style5").css("color","#FFFFFF");
	}
}
function changeColor1(type) {
	if(type==1) {
		$("#style6").css("color","red");
	}else {
		$("#style6").css("color","#FFFFFF");
	}
}

/* function modifyPwd() {
	window.open ('page.html','newwindow','height=400,width=600,top=250,left=400,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no') 
} */

</script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="57" background="${ctx }/images/imei/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="378" height="57" background="${ctx }/images/imei/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33" height="27"><img src="${ctx }/images/imei/main_05.gif" width="33" height="27" /></td>
            <td width="248" background="${ctx }/images/imei/main_06.gif">
            </td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="40" background="${ctx }/images/imei/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="194" height="40" background="${ctx }/images/imei/main_07.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        </table></td>
        <td width="248">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="right">
          <tr>
            <td width="9%"><span class="STYLE5"><spring:message code="current_account"/>${vo.username }</span>&nbsp;
            <%-- <a href="#" onclick="modifyPwd()" style="text-decoration: none;" onmouseover="changeColor1(1)" onmouseout="changeColor1(2)"><span class="STYLE7" id="style6">修改密码</span></a> --%>
            <a href="javascript:parent.location.href='${ctx }/logout'" style="text-decoration: none;" onmouseover="changeColor(1)" onmouseout="changeColor(2)"><span class="STYLE7" id="style5"><spring:message code="logout"/></span></a></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
<!-- <SCRIPT type=text/javascript>
    var clock = new Clock();
    clock.display(document.getElementById("clock"));
</SCRIPT> -->