<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="./common/taglibs.jsp" %>
<html>
<head>
<title><spring:message code="login_title"/></title>
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
		<table width="1100" height="60" border="0">
      <tr>
        	<td width="80">&nbsp;</td>
        <td width="540"><font color="#00FA9A">      
        <marquee id="scrollArea1" scrollamount="5"  onmouseout="this.start()" onMouseOver="this.stop()"
              scrolldelay="130" direction="left" width="100%" >
                         <spring:message code="login_roll"/>
       </marquee>  
    		</font>
    		</td>
        <td width="60">&nbsp;</td>
        <td width="300" align="center"><font color="#000000">
    </font></td>
    <td>
    <font color="#000000">
    	<script type="text/javascript">
			//显示系统时间
			function updateTime(){
  				var d=new Date();
   				var year = d.getYear();
   				var month = d.getMonth()+1;
   				var day = d.getDate();
   				var hour = d.getHours();
   				var minutes  =d.getMinutes();
   				var second = d.getSeconds();
   				if(hour <10){
					hour = "0" + hour;
				}
					if(minutes <10){
					minutes = "0" + minutes;
				}
					if(second <10){
					second = "0" + second ;
				}
				var maghtime =year+"-"+month+"-"+day+" "+hour+":"+minutes+":"+second;
   				var time=d.getYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
   				//var time=d.toLocaleString(); 
   				document.getElementById("time").innerHTML=maghtime;
   				setTimeout("updateTime()",1000);
   			}
  	 		window.attachEvent("onload",updateTime);
		</script>
    <span id="time"></span>
     </font>
    </td>
      </tr>
    </table>



	<table width="100%" height="166" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="42" valign="top"><table width="100%" height="42"
					border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
					<tr>
						<td width="1%" height="21">&nbsp;</td>
						<td height="42">&nbsp;</td>
						<td width="17%">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td valign="top">
			<table width="100%" height="532" border="0"
					cellpadding="0" cellspacing="0" class="login_bg">
					<tr>
						<td width="49%" align="right"><table width="91%" height="532"
								border="0" cellpadding="0" cellspacing="0" class="login_bg2">
								<tr>
									<td height="138" valign="top">
									<table width="89%"
											height="427" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<!-- 修改左侧文字的高度 -->
												<td height="40">&nbsp;</td>
											</tr>
											<tr>
												<td height="80" align="right" valign="top">&nbsp;</td>
											</tr>
											<tr>
												<td height="198" align="right" valign="top"><table
														width="100%" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td width="35%">&nbsp;</td>
															<td width="65%" height="25" class="left_txt"><p><spring:message code="login_left_text_p1"/></p>
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" class="left_txt"><p><spring:message code="login_left_text_p2"/></p>
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" class="left_txt"><p><spring:message code="login_left_text_p3"/></p>
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" class="left_txt"><p><a href="http://hw.gionee.com.cn:9000/gionee/gioneeSales/imei/IMEIforAfterSales.jsp" target="_blank"><font size=4 color="#FF0000"><u><spring:message code="login_left_text_p4"/></u></font></a>
															</p>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>

							</table>
						</td>
						<td width="1%">&nbsp;</td>
						<td width="50%" valign="bottom"><table width="100%"
								height="59" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="4%">&nbsp;</td>
									<td width="96%" height="38"><span class="login_txt_bt"><spring:message code="login_loginname"/></span>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td height="21"><table cellSpacing="0" cellPadding="0"
											width="100%" border="0" id="table211" height="328">
											<tr>
												<td height="164" colspan="2" align="middle">
													<form name="myform" action="${ctx }/login" method="post">
														<table cellSpacing="0" cellPadding="0" width="100%"
															border="0" height="143" id="table212">
															<tr>
																<td colspan="2"><FONT color="red">
																<%-- <s:actionerror /> --%>
																<font color="red" >${message }</font>
																</FONT>
																</td>
																<!--显示错误信息 -->
															</tr>
															<tr>
																<td width="14%" height="38" class="top_hui_text"><span
																	class="login_txt"><spring:message code="user"/>&nbsp;&nbsp; </span>
																</td>
																<td height="38" colspan="2" class="top_hui_text"><input
																	name="username" class="editbox4" value="" size="20">
																</td>
															</tr>
															<tr>
																<td width="14%" height="35" class="top_hui_text"><span
																	class="login_txt"> <spring:message code="pass"/> &nbsp;&nbsp; </span>
																</td>
																<td height="35" colspan="2" class="top_hui_text"><input
																	class="editbox4" type="password" size="20"
																	name="password"> <img
																	src="${ctx }/images/luck.gif" width="19" height="18">
																</td>
															</tr>
															<tr>
															<td width="14%" height="35">
																</td>
																<td height="35" colspan="2" class="login_txt"></td>
																<%-- <td width="14%" height="35"><span
																	class="login_txt">登录角色：</span>
																</td>
																<td height="35" colspan="2" class="login_txt"><input
																	type="radio" name="role" value="admin"
																	checked="checked">管理员 <input type="radio"
																	name="role" value="user">用户</td> --%>
															</tr> 
															<tr>
																<td height="35">&nbsp;</td>
																<td width="19%" height="35"><input name="Submit"
																	type="submit" class="button" id="Submit" value=<spring:message code="login"/>>
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
				</table></td>
		</tr>
	</table>
	</td>
	</tr>
	<tr>
		<td height="20">
		<table width="100%" border="0" cellspacing="0"
				cellpadding="0" class="login-buttom-bg">
				<tr>
					<td align="center"><span class="login-buttom-txt STYLE1"><spring:message code="login_bottom"/>
							&copy; 2009-2013 </span>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	</table>
</body>
</html>
