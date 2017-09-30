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

.STYLE7 {font-size: 12px; color: red; }
-->
</style>
<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx }/js/jquery.js"></script>
</head>
<body>
	<div id="updateSuccess">
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
						<td valign="middle"><span class="left_txt"></span>
								<div id="updateSubjectForm" align="center">
									<!--更新试题表单-->
									<form method="post" id="updateSubjectForm1" action="${ctx }/user/updateLoginUser">
										<table border="0" cellspacing="10" cellpadding="0">
											<span class="login_txt_bt"><spring:message code="modify_password"/></span>
											<tr>
												<td colspan="2"><s:actionmessage />
												</td>
											</tr>
											<tr>
												<td><spring:message code="user"/></td>
												<td>${vo.username}</td>
											</tr>
											<tr>
												<td><spring:message code="pass"/></td>
												<td>
													<input name="userID" type="hidden" value="${vo.userID}"> 
													<input id="userPwd" name="password" type="password" size="20" value="">
												</td>
											</tr>
											<tr>
												<td colspan="2"><div align="center">
														<input type="submit" value=<spring:message code="index_right_updatebutton"/> > 
														<input type="reset" value=<spring:message code="index_right_resetbutton"/>>
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
	</div>
</body>
<script language="javascript">
function doSave() {
	var pwd = $("#userPwd").val();
	if(pwd.replace(/(^\s*)|(\s*$)/g, "")=='') {
		alert("please input password!");
	}else {
		var form = $("#updateSubjectForm1");
		 $.post("${ctx}/user/mdPWDAction!modify.action", form.serialize(),
					function(data) {
			 			$("#updateSuccess").empty().append(data);
					});
	}
	
}
</script>