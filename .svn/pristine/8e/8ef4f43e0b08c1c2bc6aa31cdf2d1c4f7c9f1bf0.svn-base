package com.chenyee.salestracksystem.utils;

import java.text.SimpleDateFormat;

/**
 * @description：系统参数
 * @author：wangjian
 * @date：2016/8/22
 */
public interface Config {

    Integer RESOURCE_MENU = 0; // 菜单
    Integer RESOURCE_BUTTON = 1; // 按钮
    /**系统默认管理员国家id为-1*/
    public static final int AdminCountryId =-1;
    /**系统默认管理员parentId为-1*/
    public static final long AdminOrganizationId =-1;
    /**系统默认四种用户角色*/
    public static final int RoleType_Admin =0;
    public static final int RoleType_CommonAdmin=2;
    public static final int RoleType_CommonUser=3;
    public static final int RoleType_SuperUser=4;
    /**账号管理菜单名(key)*/
    public static final String AccountManage ="AccountManage";
    /**金立字符串*/
    public static final String GIONEESTR = "gionee";
    /**机型类型设置  0 智能机 1功能机*/
  	public static final  int PhoneTypeSmart =0;
  	public static final  int PhoneTypeFunction =1;
  	
  	/**库存销售状态设置  0 在库 1为已售出*/
  	public static final int StockStatusIn=0;//在库
  	public static final int StockStatusOut=1;//已售出
    /**用户组织id设置,当设置为0是则当前用户为非组织用户(国家级用户) */
  	public static final  long InitOrganizationId =0;
    /**报表日周月类型查询参数 */
  	public static final  int Report_Period_Daily =0;
	public static final  int Report_Period_Week = 1;
	public static final  int Report_Period_Month =2;
	
	/**分页相关参数*/
	public static final int PageSize = 10;
    /**接口请求参数*/
    public static final String Charset_UTF8 ="utf-8";
    public static final String Param_MaxUpdateTime = "maxUpdateTime";
    public static final String Param_Type="type";
    public static final int Param_Type_Count_Value=0;
    public static final int Param_Type_Record_Value =1;
    
    public static final String Param_Record_Start ="start";
    public static final String Param_Record_Limit ="limit";
    public static final String Param_Record_Sort="sort";
    public static final String Param_Record_Sort_Value="desc";
    
    public static final int Param_Record_PageSize =1000;
    
    public static final SimpleDateFormat Param_MaxUpdateTime_SDF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    /**接口请求数据通用json常量*/
    public static final String Json_Count="count";
    public static final String Json_Data="data";
    /**产品-产品类型信息获取相关Json常量*/
    public static final String Get_Product_Type_Url="http://18.8.8.248:8080/SaleManageSystem/queryProductTypeInfo.action";
    public static final String Json_Type_Id = "id";
    public static final String Json_Type_Name = "typename";
    /**产品-代理商信息获取相关Json常量*/
    public static final String Get_Product_Agents_Url="http://18.8.8.248:8080/SaleManageSystem/queryAgentsInfo.action";
    public static final String Json_Agents_Id = "agentsId";
    public static final String Json_Agents_ParentId = "parentId";
    public static final String Json_Agents_Name = "agentsName";
    /**产品-产品信息获取相关json常量*/
    public static final String Get_Product_Info_Url="http://18.8.8.248:8080/SaleManageSystem/queryStockInfo.action";
    public static final String Json_Info_Id = "id";
    public static final String Json_Info_Imei1 = "imei1";
    public static final String Json_Info_Imei2 = "imei2";
    public static final String Json_Info_Model = "model";
    public static final String Json_Info_Country = "country";
    public static final String Json_Info_Color = "color";
    public static final String Json_Info_CreateTime = "createtime";
    public static final String Json_Info_UpdateTime = "modifytime";
    public static final String Json_Info_AgentsId= "agentsid";
    public static final String Json_Info_Agents = "agentsname";
    public static final String Json_Info_Type = "phonetype";
    public static final String Json_Info_Status="salesStatus";
    
    /**销量-国家信息获取 from 销量统计系统*/
    public static final String Get_Sales_Country_Url ="http://hw.gionee.com.cn:9000/gionee/countryAction!getData.action";
    public static final String Json_Sales_Country_Id ="id";
    public static final String Json_Sales_Country_Name="name";
    public static final String Json_Sales_Country_Model="model";
    /**销量-销量信息获取 from 销量统计系统
     * 1.根据当前系统获取销量信息最大的销量时间,部署上线之前执行一次整体数据同步,
     * 2.以二个小时为一个查询周期,查询数据至当前定时任务执行时间最近二个小时*/
    //销量统计系统销售记录最小时间
    public static final String Sales_Info_Min_Date = "2013-01-04 17:22:56";
    public static final String Get_Sales_Info_Url ="http://hw.gionee.com.cn:9000/gionee/salesAction!getData.action";
//    public static final String Get_Sales_Info_Url ="http://hw.gionee.com.cn:9000/gionee/myanmarSalesAction!getData.action";
    //数据查询数据和时间常量
    public static final String Get_Sales_Info_Count="count";
    public static final String Get_Sales_Info_UpdateTime ="date";
    
    public static final String Json_Sales_Info_Id = "id";
    public static final String Json_Sales_Info_Imei1 = "imei1";
    public static final String Json_Sales_Info_Imei2 = "imei2";
    public static final String Json_Sales_Info_ExtraModel = "extraModel";
    public static final String Json_Sales_Info_IntelModel = "interModel";
    public static final String Json_Sales_Info_TelNum = "telNum";
    public static final String Json_Sales_Info_date = "date";
    public static final String Json_Sales_Info_Ip = "ip";
//    public static final String Json_Sales_Info_FingerPrint= "fingerPrint";
//    public static final String Json_Sales_Info_VersionNo = "versionNo";
//    public static final String Json_Sales_Info_Agents = "agents";
//    public static final String Json_Sales_Info_Province = "province";
//    public static final String Json_Sales_Info_City = "city";
//    public static final String Json_Sales_Info_Country = "country";
//    public static final String Json_Sales_Info_FullLocation = "fullLocation";
//    public static final String Json_Sales_Info_UpdateDate = "updateDate";
    /**
     * 销量-退货记录信息获取常量 from 销量统计系统*/
    public static final String Get_Sales_Refund_Url ="http://hw.gionee.com.cn:9000/gionee/refundInterface/refundInterfaceAction!getData.action";
    public static final String Get_Sales_Refund_UpdateTime ="date";
    public static final String Json_Sales_Refund_Id="id";
    public static final String Json_Sales_Refund_Imei1="imei1";
    public static final String Json_Sales_Refund_Imei2 = "imei2";
    public static final String Json_Sales_Refund_ExtraModel = "extraModel";
    public static final String Json_Sales_Refund_InterModel = "interModel";
    public static final String Json_Sales_Refund_Date ="date";
    public static final String Json_Sales_Refund_ReturnDate ="returnDate";
    public static final String Json_Sales_Refund_Address ="address";
    
    
    
    public static final String StatisticTablePre ="t_sales_statistic_";
}
