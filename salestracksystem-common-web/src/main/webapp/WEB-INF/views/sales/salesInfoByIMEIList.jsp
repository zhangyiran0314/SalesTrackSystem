<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<html>
<head>
<title><spring:message code="sales_list_page"/></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

#manageSubject table  td {
	font-size: 12px;
}
-->
</style>
<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx }/js/jquery/jquery-1.8.2.min.js"></script>
<script language="javascript">
function deleteImei(id,imei1,imei2) {
	$.post("${ctx }/sales/deleteImei",{id:id,imei1:imei1,imei2:imei2}, 
		function(data) { $("#listDiv").empty().append(data);});
}

function doView(imei1,imei2) {
	$.post("${ctx }/sales/viewAction!view.action?imei1="+imei1+"&imei2="+imei2, 
		function(data) { $("#listDiv").empty().append(data);});
}
</script>
</head>
<body>
	<div id="listDiv">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top" background="${ctx }/images/mail_leftbg.gif"><img
				src="${ctx }/images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="${ctx }/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt"><spring:message code="sales_list"/></div></td>
					</tr>
				</table></td>
			<td width="16" valign="top" background="${ctx }/images/mail_rightbg.gif"><img
				src="${ctx }/images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="${ctx }/images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0"
					align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="53%" valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td valign="middle"><span class="left_txt"></span>
								<div id="manageSubject" align="center">
									<table>
										<tr align="center">
											<td><spring:message code="query_the_imei"/>：</td>
											<td>${IMEINum}</td>
											<%--<td>
											 <div align="center">
													<form name="exportIntoExcel"
														action="exportIntoExcel.action?paramName=${name}&type=country"
														method="post">
														<input name="Submit" type="submit" class="button"
															id="Submit" value="导出查询数据到Excel">
													</form>
												</div> 
											</td>--%>
										</tr>
									</table>
									<!--管理试题-->
									<table width="95%" cellspacing="10">
										<tr align="center">
											<%-- <td><spring:message code="sales_code"/></td> --%>
											<td><spring:message code="extra_model"/></td>
											<td><spring:message code="inter_model"/></td>
											<td>IMEI-1</td>
											<td>IMEI-2</td>
											<td><spring:message code="phone_number"/></td>
											<td><spring:message code="activation_date"/></td>
											<%-- <c:if test="${vo.userName=='superadmin'}"> --%>
												<td>操作</td>
											<%-- </c:if> --%>
										</tr>
										<c:forEach items="${subjects }"  var="subject" step="1" varStatus="status"	>
											<tr align="center">
												<%-- <td>${subject.id}</td> --%>
												<c:choose>
													<c:when test="${subject.extraModel==''}"><td>P1</td></c:when>
													<c:otherwise><td>${subject.extraModel}</td></c:otherwise>
												</c:choose>
												<td>${subject.interModel}</td>
												<td>${subject.imei1}</td>
												<td>${subject.imei2}</td>
												<td><c:if test="${subject.telNum!='null'}">${subject.telNum}</c:if></td>
												<td>${subject.date}</td>
												<%-- <c:if test="${vo.userName=='superadmin'}"> --%>
													<td>
														<input type="button" name="imei" id="imei" value="删除" onclick="deleteImei('${subject.id}','${subject.imei1}','${subject.imei2}')"/>
														<input type="button" value="详情" onclick="doView('${subject.imei1}','${subject.imei2}')"/>
													</td>
												<%-- </c:if> --%>
											</tr>
										</c:forEach>
									</table>
								</div>
						</td>
					</tr>

				</table></td>
			<td background="${ctx }/images/mail_rightbg.gif">&nbsp;</td>
		</tr>
		<tr>
			<td valign="bottom" background="${ctx }/images/mail_leftbg.gif"><img
				src="${ctx }/images/buttom_left2.gif" width="17" height="17" /></td>
			<td background="${ctx }/images/buttom_bgs.gif"><img
				src="${ctx }/images/buttom_bgs.gif" width="17" height="17"></td>
			<td valign="bottom" background="${ctx }/images/mail_rightbg.gif"><img
				src="${ctx }/images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>
	</div>
</body>
</html>
