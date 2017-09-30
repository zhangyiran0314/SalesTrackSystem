<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<html>
  <head>
    <title>IMEI查询页面</title>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
		background-color: #EEF2FB;
	}
	#showSubject table  td{
		font-size:12px;
	}
	-->
	</style>
	<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${ctx }/js/jquery-1.4.min.js"></script>
	<Script Language="JavaScript"> 
	function trim(s){ 
		return trimRight(trimLeft(s)); 
	} 
		
	function checkIMEIData() {
		var IMEINum = $("#IMEINum").val();
		if (IMEINum.replace(/(^\s*)|(\s*$)/g, "") == "") {
			alert('<spring:message code="please_input_imei"/>');
			return false;
		}
		return true;
	}
	
	<%-- function deleteTestIMEI() 
    { 
    <%
    String testImeiNum = ReadProperties.matchesValuesName("IMEI");
    /* System.out.print(" ************testImeiNum********* "+testImeiNum); */
    %>
    var imei = <%=testImeiNum%>
    alert(imei);
    }  --%>
    </Script> 
  </head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="${ctx }/images/mail_leftbg.gif"><img src="${ctx }/images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="${ctx }/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt"><spring:message code="imei_query"/></div></td>
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
        <td valign="middle"><span class="left_txt">
			<div id="showSubject" align="left"><!--模糊查询试题-->
			<form action="${ctx }/sales/salesInfoByIMEIList" method="post" onsubmit="return checkIMEIData();">
			<table border="0" cellspacing="10" cellpadding="0">
				  <tr>
					<td><spring:message code="enter_imei"/>:</td>
					<td>
						<c:choose>
							<c:when test="${imei1=='' }"><input name="IMEINum" size="30" id="IMEINum"></c:when>
							<c:otherwise><input name="IMEINum" size="30" id="IMEINum" value="${imei1}"></c:otherwise>
						</c:choose>
					</td>
					<!-- 
					<td><INPUT Type="Button" Name="Modify" Value="删除测试IMEI数据（限测试人员）" onClick="deleteTestIMEI()"></td>
				  </tr>
				   -->
				  <tr>
				    <td colspan="2"><div align="center">
				      <input type="submit" name="Submit" value="<spring:message code="query"/>">
				      <input type="reset" name="Submit2" value="<spring:message code="reset"/>">
			        </div></td>
			    </tr>
			</table>
			</form>
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
