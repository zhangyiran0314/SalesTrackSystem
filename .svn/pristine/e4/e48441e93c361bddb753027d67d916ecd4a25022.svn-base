<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<html>
<head>
<title>ÐÞ¸ÄÃÜÂë</title>
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
								<h2><spring:message code="modify_success"/>,<span id="auto" style="color:red;">3</span>s <spring:message code="after_forward_login"/>...</h2>
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
<script language="javascript">
$().ready(function(){
	settime();
	setTimeout("top.location.href='${ctx}/logout'",4000);
});

var countdown=3; 
function settime() { 
	if (countdown == 0) { 
		$("#auto").text("3");
	} else { 
		$("#auto").text(countdown);
		countdown--; 
	}	 
	setTimeout(function() { 
		settime(); 
	},1000);
} 
</script>