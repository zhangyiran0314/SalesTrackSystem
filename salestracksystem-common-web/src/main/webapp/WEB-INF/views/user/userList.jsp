<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<html>
  <head>
    <title>用户列表页面</title>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
		background-color: #EEF2FB;
	}
	#manageSubject table  td{
		font-size:12px;
	}
	-->
	</style>
	<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
  </head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="${ctx }/images/mail_leftbg.gif"><img src="${ctx }/images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="${ctx }/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt"><spring:message code="user_list"/></div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="${ctx }/images/mail_rightbg.gif"><img src="${ctx }/images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="${ctx }/images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="53%" valign="top">&nbsp;</td>
        </tr>
      <tr>
        <td valign="middle"><span class="left_txt"></span>
			<div id="manageSubject" align="center">
			<table width="90%" cellspacing="10">
				  <tr align="center">
					<td><spring:message code="user_code"/></td>
					<td><spring:message code="user_name"/></td>
					<td><spring:message code="user_role"/></td>
					<td><spring:message code="modify"/></td>
					<td><spring:message code="delete"/></td>
					
				  </tr>
				  
				  <c:forEach items="${userList }" var="user" varStatus="status">
				  	<tr align="center">
							<td>${user.userID}</td>
							<td>${user.username}</td>
							<td>${user.userRole == "1" ? "Admin" : "User"}</td>
							<td><a href="${ctx }/user/edit?userId=${user.userID}&username=${user.username}&userRole=${user.userRole}"><font color="#FF0000"><spring:message code="modify"/></font></a></td>
							<td><a href="${ctx }/user/delete?userId=${user.userID}"><font color="#FF0000"><spring:message code="delete"/></font></a></td>
					  </tr>
				  </c:forEach>
				  <tr>
				  	<td colspan="6" align="center">
				  		<spring:message code="total"/>${page.totalCount}<spring:message code="records"/>,<spring:message code="present"/>${page.currentPage}/${page.totalPage}<spring:message code="page"/>,<spring:message code="per_page"/>${page.everyPage}<spring:message code="records"/>
				  <c:choose>
				  	<c:when test="${page.hasPrePage }">
				  		<a href="${ctx }/user/queryUserList?currentPage=1"><spring:message code="first_page"/></a> | 
                		<a href="${ctx }/user/queryUserList?currentPage=${page.currentPage - 1}"><spring:message code="previous_page"/></a> | 
				  	</c:when>
				  	<c:otherwise>
				  		<spring:message code="first_page"/> | <spring:message code="previous_page"/> | 
				  	</c:otherwise>
				  </c:choose>
				  <c:choose>
				  	<c:when test="${page.hasNextPage }">
				  		<a href="${ctx }/user/queryUserList?currentPage=${page.currentPage + 1}"><spring:message code="next_page"/></a> | 
                		<a href="${ctx }/user/queryUserList?currentPage=${page.totalPage}"><spring:message code="last"/></a>
				  	</c:when>
				  	<c:otherwise>
				  		<spring:message code="next_page"/> | <spring:message code="last"/>
				  	</c:otherwise>
				  </c:choose>
				  	</td>
				  </tr>	  
			</table>	
			</div>
		</td>
        </tr>
      
    </table></td>
    <td background="${ctx }/images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="${ctx }/images/mail_leftbg.gif"><img src="${ctx }/images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="${ctx }/images/buttom_bgs.gif"><img src="${ctx }/images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="${ctx }/images/mail_rightbg.gif"><img src="${ctx }/images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
</html>
