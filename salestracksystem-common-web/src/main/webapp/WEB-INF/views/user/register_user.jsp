<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title><spring:message code="index_right_regist_jsp_title"/></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}

.STYLE1 {
	color: #E6EBF1
}
-->
</style>
<link href="${ctx }/images/skin.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="100%" height="140" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top"><table width="100%" height="400" border="0"
					cellpadding="0" cellspacing="0" class="login_bg">
					<tr>
						<td width="49%" align="right">
						<table width="91%" height="532"
								border="0" cellpadding="0" cellspacing="0" class="login_bg2">
								<tr>
									<td height="138" valign="top"><table width="89%"
											height="427" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<!-- 修改左侧文字的高度 -->
												<td height="100">&nbsp;</td>
											</tr>
											<tr>
												<td height="80" align="right" valign="top">&nbsp;</td>
											</tr>
											<tr>
												<td height="198" align="right" valign="top"><table
														width="100%" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td width="35%">&nbsp;</td>
															<td width="65%" height="25" class="left_txt"><p><spring:message code="index_right_regist_jsp_leftTitle1"/></p>
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" class="left_txt"><p><spring:message code="index_right_regist_jsp_leftTitle2"/></p>
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" class="left_txt"><p><spring:message code="index_right_regist_jsp_leftTitle3"/></p>
															</td>
														</tr>
													</table></td>
											</tr>
										</table></td>
								</tr>

							</table></td>
						<td width="1%">&nbsp;</td>
						<td width="50%" valign="bottom">
							<table width="100%"
									height="59" border="0" align="center" cellpadding="0"
									cellspacing="0">
								<tr>
										<td width="4%">&nbsp;</td>
										<td width="96%" height="38"><span class="login_txt_bt"><spring:message code="index_right_regist_jsp_rightTitle1"/></span>
										</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td height="21">
										<table cellSpacing="0" cellPadding="0"
												width="100%" border="0" id="table211" height="328">
											<tr>
													<td height="164" colspan="2" align="middle">
														<form name="myform" action="${ctx}/user/saveOrUpdateUser" method="post">
															<table cellSpacing="0" cellPadding="0" width="100%"
																border="0" height="143" id="table212">
																<tr>
																	<td colspan="2"><FONT color="red">
																	<!-- <s:actionerror /> -->
																	${message }
																<%-- 	<c:if test="${vo!=null }">该用户已存在！</c:if> --%>
																	</FONT>
																	</td>
																	<!--显示错误信息 -->
																</tr>
																<tr>
																	<td width="14%" height="38" class="top_hui_text"><span
																		class="login_txt"><spring:message code="index_right_regist_jsp_rightTitle2"/>&nbsp;&nbsp; </span>
																	</td>
																	<td height="38" colspan="2" class="top_hui_text">
																		<c:choose>
																			<c:when test="${user!=null }">
																			 <input name="username" class="editbox4" value="${user.username }" size="20" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"> 
																			</c:when>
																			<c:otherwise><input name="username" class="editbox4"  size="20" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"></c:otherwise>
																		</c:choose>
																	</td>
																</tr>
																<tr>
																	<td width="14%" height="35" class="top_hui_text"><span
																		class="login_txt"> <spring:message code="index_right_regist_jsp_rightTitle3"/> &nbsp;&nbsp; </span>
																	</td>
																	<td height="35" colspan="2" class="top_hui_text">
																		<c:choose>
																			<c:when test="${user!=null }">
																				<input class="editbox4" type="password" size="20" name="password" value="${user.password }">
																			</c:when>
																			<c:otherwise>
																			<input class="editbox4" type="password" size="20" name="password">
																			</c:otherwise>
																		</c:choose>																
																	 <img
																		src="${ctx }/images/luck.gif" width="19" height="18">
																	</td>
																</tr>
																<tr>
																	<td width="14%" height="35"><span
																		class="login_txt"><spring:message code="index_right_regist_jsp_rightTitle4"/></span>
																	</td>
																	<td height="35" colspan="2" class="login_txt">
																	<input type="radio" name="userRole" value="1" checked="checked">
																	<spring:message code="index_right_regist_jsp_rightTitle5"/>
																	<input type="radio"name="userRole" value="0">
																	<spring:message code="index_right_regist_jsp_rightTitle6"/>
																	<input type="radio"name="userRole" value="2">
																	<spring:message code="return_manager"/>
																	</td>
																</tr>
																<tr>
																	<td height="35">&nbsp;</td>
																	<td width="19%" height="35"><input name="Submit"
																		type="submit" class="button" id="Submit" value=<spring:message code="index_right_addbutton"/>>
																	</td>
																	<td width="67%" class="top_hui_text"><input
																		name="cs" type="button" class="button" id="cs"
																		value=<spring:message code="cancle"/> onClick="showConfirmMsg1()">
																	</td>
																</tr>
															</table>
															<br>
														</form>
													</td>
													
										
												</tr>
											<tr>
												<td width="433" height="164" align="right" valign="bottom"><img
													src="${ctx }/images/login-wel.gif" width="242" height="138">
												</td>
												<td width="57" align="right" valign="bottom">&nbsp;</td>
											</tr>
										</table>
								   </td>
							</tr>
						</table>
				</td>
		</tr>
	</table>
	</td>
	</tr>
	<%-- <tr>
		<td height="20"><table width="100%" border="0" cellspacing="0"
				cellpadding="0" class="login-buttom-bg">
				<tr>
					<td align="center"><span class="login-buttom-txt STYLE1">金立销量统计查询系统系统Copyright
							&copy; 2009-2010 </span>
					</td>
				</tr>
			</table>
		</td>
	</tr> --%>
	</table>
</body>
</html>
