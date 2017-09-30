<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>销量统计界面</title>

<script src="${ctx }/js/prototype.lite.js" type="text/javascript"></script>
<script src="${ctx }/js/moo.fx.js" type="text/javascript"></script>
<script src="${ctx }/js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(${ctx }/images/menu_bgs.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(${ctx }/images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(${ctx }/images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(${ctx }/images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(${ctx }/images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top">
    <div id="container">
      <c:if test="${vo.userRole!=2}">
      <h1 class="type"><a href="javascript:void(0)"><spring:message code="index_left_sales_entrance"/></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <c:if test="${vo.countryName==null }">
	         <%--  <li><a href="${ctx }/sales/salesInfoAction!salesInfoList.action" target="main"><spring:message code="index_left_queryAll"/></a></li> --%>
	          <li><a href="${ctx }/gioneeSales/sales/salesInfoByTime.jsp" target="main"><spring:message code="index_left_queryByTime"/></a></li>
	          <li><a href="${ctx }/sales/salesInfoByModelAction!salesInfoByModel.action" target="main"><spring:message code="index_left_queryByModel"/></a></li>
	          <li><a href="${ctx }/sales/salesInfoByCountryAction!salesInfoByCountry.action" target="main"><spring:message code="index_left_queryByCounrty"/></a></li>
	          <li><a href="${ctx }/gioneeSales/sales/salesInfoByIMEI.jsp" target="main"><spring:message code="index_left_queryByImei"/></a></li>
	      </c:if>
	      <c:if test="${vo.countryName!='Gms'}">
	          <li><a href="${ctx }/sales/salesInfoByConditionAction!salesInfoByCondition.action?countryName=${vo.countryName}" target="main"><spring:message code="index_left_queryByIntegrated"/></a></li>
	       </c:if>
	      <c:if test="${vo.countryName==null }">
	          <li><a href="${ctx }/gioneeSales/sales/deleteTestIMEI.jsp" target="main"><spring:message code="index_left_testData"/></a></li>
		  </c:if>  
 		  <c:if test="${vo.countryName!='Gms'}">
		  	<li><a href="${ctx }/statistics/statisticsReportAction!index.action?countryName=${vo.countryName}" target="main"><spring:message code="around_sales_statics_report"/></a></li>
		  </c:if>
		  <!-- start updated  updated by hutt 2017-08-30  隐藏掉  ‘印度分地区库存统计’、‘越南分地区库存统计’、‘按FingerPrint统计’、‘分版本号统计’、‘印度型号匹配’5个子菜单 -->
	     <%--  <c:if test="${fn:contains(vo.countryName, 'India')||vo.countryName==null}">
			  <li><a href="${ctx }/statistics/inStock!indiaInStock.action" target="main"><spring:message code="india_region_instock_statics"/></a></li>
	      </c:if>
	      <c:if test="${fn:contains(vo.countryName, 'Vietnam')||vo.countryName==null}">
			  <li><a href="${ctx }/statistics/vietnam!vietnamInStock.action" target="main"><spring:message code="vietnam_region_instock_statics"/></a></li>
	      </c:if>
	      <c:if test="${fn:contains(vo.countryName, 'Gms')||vo.countryName==null}">
			  <li><a href="${ctx }/statistics/fingerPrint!fingerPrintStatis.action" target="main"><spring:message code="vietnam_region_instock_statics"/>按FingerPrint统计</a></li>
	      </c:if>
	       <c:if test="${vo.countryName==null }">
			  <li><a href="${ctx }/statistics/versionNo!versionNoStatis.action" target="main"><spring:message code="vietnam_region_instock_statics"/>分版本号统计</a></li>
	      </c:if>
	       <c:if test="${vo.countryName==null }">
			  <li><a href="${ctx }/sales/inModelTransIndexAction!modelTransIndex.action" target="main">印度型号匹配</a></li>
	      </c:if> --%>
	      <!-- end updated  -->
        </ul>
      </div>
      </c:if>
	  <h1 class="type"><a href="javascript:void(0)"><spring:message code="index_left_user_enterance"/></a></h1>
		 <div class="content">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
		      </tr>
		    </table>
		    <ul class="MM">
		      <c:if test="${vo.userRole==1 && vo.countryName==null}">
		        <li><a href="${ctx }/user/add" target="main"><spring:message code="index_left_user_add"/></a></li>
		        <li><a href="${ctx }/user/queryUserList?currentPage=1" target="main"><spring:message code="index_left_user_query"/></a></li>
		        <li><a href="${ctx }/user/queryUserList?currentPage=1&flag=country" target="main">区域权限</a></li>
		     </c:if>  
		     <li><a href="${ctx }/user/modifyLoginUserPwd" target="main"><spring:message code="modify_password"/></a></li>
		    </ul>
		  </div>
		  
	  <%--  <c:if test="${vo.userRole==1 && vo.countryName==null}">
		      <h1 class="type"><a href="javascript:void(0)"><spring:message code="index_left_user_enterance"/></a></h1>
		      <div class="content">
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
		          </tr>
		        </table>
		        <ul class="MM">
		          <li><a href="${ctx }/user/addAction!add.action" target="main"><spring:message code="index_left_user_add"/></a></li>
		          <li><a href="${ctx }/user/listAction!list.action" target="main"><spring:message code="index_left_user_query"/></a></li>
		        </ul>
		      </div>
	  </c:if> --%>
     <c:if test="${vo.countryName==null }">
      <h1 class="type"><a href="javascript:void(0)"><spring:message code="index_left_countryArea_enterance"/></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="${ctx }/country/countryAdd" target="main"><spring:message code="index_left_country_add"/></a></li>
          <li><a href="${ctx }/country/queryAllCountryList?currentPage=1" target="main"><spring:message code="index_left_country_query"/></a></li>
          <%-- <li><a href="${ctx }/area/addAreaAction!add.action" target="main"><spring:message code="index_left_area_add"/></a></li>
          <li><a href="${ctx }/area/areaListAction!list.action" target="main"><spring:message code="index_left_area_query"/></a></li> --%>
        </ul>
      </div>
       </c:if>
		<c:if test="${vo.countryName!='Gms' && vo.userRole!=2}">
	       <h1 class="type"><a href="javascript:void(0)"><spring:message code="index_left_data_enterance"/></a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	          <li><a href="${ctx }/statistics/monthStatisticsAction!monthStatistics.action?countryName=${vo.countryName}" target="main"><spring:message code="index_left_data_month"/></a></li>
	          <li><a href="${ctx }/statistics/yearStatisticsAction!yearStatistics.action?countryName=${vo.countryName}" target="main"><spring:message code="index_left_data_year"/></a></li>
	        </ul>
	      </div>
      </c:if>
     <!-- start updated  updated by hutt 2017-08-30 隐藏掉‘功能机销量统计’菜单 -->
     <%-- <c:if test="${vo.userRole!=2 }">
	    <c:if test="${vo.countryName==null||fn:contains(vo.countryName, 'India')||fn:contains(vo.countryName, 'Africa')||fn:contains(vo.countryName, 'Vietnam')}">
	      <h1 class="type"><a href="javascript:void(0)"><spring:message code="third_sales_statistics"/></a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	        	<c:if test="${fn:contains(vo.countryName, 'India')||vo.countryName==null}">
	         		<li><a href="${ctx }/feturePhone/indiaStatistics!statistics.action" target="main"><spring:message code="feturephone_statistics_india"/></a></li>
	         		<li><a href="${ctx }/feturePhone/india!index.action" target="main"><spring:message code="feturephone_list_india"/></a></li>	        		
	        	</c:if>
	        	<c:if test="${fn:contains(vo.countryName, 'Vietnam')||vo.countryName==null}">
				    <li><a href="${ctx }/feturePhone/pf!phtdFeaturephone.action" target="main"><spring:message code="phtd_featurephone_query"/></a></li>
					<li><a href="${ctx }/feturePhone/vietnam!index.action" target="main"><spring:message code="vietnam_bkk_featurephone_query"/></a></li>
					<li><a href="${ctx }/feturePhone/vietnamStatistics!statistics.action" target="main"><spring:message code="vietnam_bkk_featurephone_statis"/></a></li>
	        	</c:if>
	        	<c:if test="${fn:contains(vo.countryName, 'Africa')||vo.countryName==null}">
					<li><a href="${ctx }/feturePhone/africa!index.action" target="main"><spring:message code="feturephone_list_africa"/></a></li>	        		
	        	</c:if>
	        </ul>
	      </div>  
	     </c:if> 
     </c:if> --%>
     <!-- end updated   -->
       <c:if test="${vo.userRole==2}">
      <h1 class="type"><a href="javascript:void(0)"><spring:message code="return_management"/></a></h1>
       <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="${ctx }/images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	          <li><a href="${ctx }/refund/refundInfoImportAction!refundInfoImport.action" target="main"><spring:message code="upload_data"/></a></li>
	          <li><a href="${ctx }/refund/refundInfoByConditionAction!refundInfoByCondition.action?countryName=${vo.countryName}" target="main"><spring:message code="data_view"/></a></li>
	        </ul>
	      </div>  
	      </c:if>
      </div>
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
</body>
</html>
