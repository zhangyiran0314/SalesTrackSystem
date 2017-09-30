<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<html>
<head>
<title>添加国家</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

#showSubject table  td {
	font-size: 12px;
}
-->
</style>
<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx }/js/lhgcalendar/lhgcore.js"></script>
<script type="text/javascript" src="${ctx }/js/lhgcalendar/lhgcalendar.js"></script>
<script src="<%=contextPath%>/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(function (){
	initCountryParam();
});

function initCountryParam(){
	$.ajax({
		url:"<%=contextPath%>/country/initPageParam",
		type:"post",
		dataType:"json",
		contentType:"application/json",
		success:function(data){
			var countryHtml =  "";
			country= data.result;
			for(var i = 0; i < country.length;i++){
				countryHtml += '<option value='+country[i].name+'>'+country[i].name+'</option>';
			}
			
			$("#program").html(countryHtml);
		},
		error:function(XMLHttpRequest,textStatus){
            	window.location.href = "<%=contextPath%>/login";
             
		}
		
	});
}

	function selectcountry() {
		var pageIndex = document.getElementById("program");
		document.getElementById("country").value=pageIndex.value;
		
	}
</script>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top" background="${ctx }/images/mail_leftbg.gif"><img
				src="${ctx }/images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="${ctx }/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt"><spring:message code="index_right_addcountry_jsp_addcountry"/></div></td>
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
						<td valign="middle"><span class="left_txt">
								<div id="showSubject" align="center">
									<!--型号条件查询-->
									<form action="${ctx }/country/saveOrUpdateCountry" method="post">
										<table border="0" cellspacing="10" cellpadding="0">
											<tr>
												<td><spring:message code="index_right_addcountry_jsp_selectcountry"/></td>
												<td>
													<select id="program" name="selectCountryName" onchange="selectcountry()"></select>
												</td>
											</tr>
											<tr>
												<td><spring:message code="index_right_addcountry_jsp_countryname"/></td>
												<td><input name="name" id="country" type="text" size="20" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')">
												</td>
											</tr>
											<td><spring:message code="index_right_addcountry_jsp_productmodel"/></td>
											<td><input type="text" name="model" size="20">
											</td>
											</tr>
											<tr>
												<td colspan="2"><div align="center">
														<input type="submit" name="Submit" value=<spring:message code="index_right_addbutton"/>> <input
															type="reset" name="Submit2" value=<spring:message code="index_right_resetbutton"/>>
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
			<td valign="bottom" background="${ctx }/images/mail_leftbg.gif"><img
				src="${ctx }/images/buttom_left2.gif" width="17" height="17" /></td>
			<td background="${ctx }/images/buttom_bgs.gif"><img
				src="${ctx }/images/buttom_bgs.gif" width="17" height="17"></td>
			<td valign="bottom" background="${ctx }/images/mail_rightbg.gif"><img
				src="${ctx }/images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>
</body>
</html>
