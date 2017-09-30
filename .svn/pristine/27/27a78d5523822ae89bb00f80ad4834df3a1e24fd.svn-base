<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<html>
<head>
<title>用户更新页面</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

#updateSubjectForm table  td {
	font-size: 12px;
}
-->
</style>
<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top" background="${ctx }/images/mail_leftbg.gif"><img
				src="${ctx }/images/left-top-right.gif" width="17" height="29" />
			</td>
			<td valign="top" background="${ctx }/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt"><spring:message code="index_right_update_jsp_countryTitle"/></div>
						</td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="${ctx }/images/mail_rightbg.gif"><img
				src="${ctx }/images/nav-right-bg.gif" width="16" height="29" />
			</td>
		</tr>
		<tr>
			<td valign="middle" background="${ctx }/images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0"
					align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="53%" valign="top">&nbsp;</td>
					</tr>
					<tr >
						<td valign="middle"><span class="left_txt">
								<div id="updateSubjectForm" align="center">
									<!--更新试题表单-->
									<form action="${ctx}/user/saveOrUpdateUser" method="post">
										<table border="0" cellspacing="10" cellpadding="0">
											<span class="login_txt_bt"><spring:message code="index_right_update_jsp_userTitle5"/></span>
											<tr>
												<td colspan="2">
												<!-- <s:actionmessage /> -->
												<font color="red">${message }</font>
												</td>
											</tr>
											<tr>
												<td><spring:message code="index_right_update_jsp_userTitle6"/></td>
												<td>${subject.userID}</td>
											</tr>
											<tr>
												<td><spring:message code="index_right_update_jsp_userTitle7"/></td>
												<td>
													<input name="userID" type="hidden" value="${subject.userID}"> 
													<input name="username" type="text" size="20" value="${subject.username}">
												</td>
											</tr>
											<td><spring:message code="index_right_update_jsp_userTitle8"/></td>
											<td>
												<input type="password" name="password" size="20">
											</td>
											</tr>
											<tr>
												<td><spring:message code="index_right_update_jsp_userTitle9"/></td>
												<td><input name="userRole" type="radio" value="1"
												${subject.userRole == "1" ? "checked" : ""}><spring:message code="index_right_update_jsp_userTitle10"/>
													<input name="userRole" type="radio" value="0"
												${subject.userRole == "0" ? "checked" : ""}><spring:message code="index_right_update_jsp_userTitle11"/>
												<input name="userRole" type="radio" value="2"
												${subject.userRole == "2" ? "checked" : ""}><spring:message code="return_manager"/></td>
											</tr>
											
											<tr>
												<td colspan="2"><div align="center">
														<input type="submit" value=<spring:message code="index_right_updatebutton"/>> <input
															type="reset" value=<spring:message code="index_right_resetbutton"/>>
													</div></td>
											</tr>
										</table>
									</form>
								</div>
						</td>
					</tr>

				</table>
			</td>
			<td background="${ctx }/images/mail_rightbg.gif">&nbsp;</td>
		</tr>
		<tr>
			<td valign="bottom" background="${ctx }/images/mail_leftbg.gif"><img
				src="${ctx }/images/buttom_left2.gif" width="17" height="17" />
			</td>
			<td background="${ctx }/images/buttom_bgs.gif"><img
				src="${ctx }/images/buttom_bgs.gif" width="17" height="17">
			</td>
			<td valign="bottom" background="${ctx }/images/mail_rightbg.gif"><img
				src="${ctx }/images/buttom_right2.gif" width="16" height="17" />
			</td>
		</tr>
	</table>
</body>