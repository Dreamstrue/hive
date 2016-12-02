<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<% 
String path = request.getContextPath();
session.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>维权</title>
    <link rel="stylesheet" type="text/css" href="${path }/resources/js/jquery-easyui-1.4.5/themes/metro/easyui.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/js/jquery-easyui-1.4.5/themes/mobile.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/js/jquery-easyui-1.4.5/themes/icon.css">
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/jquery.min.js"></script>
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/jquery.easyui.mobile.js"></script>
</head>
<body>
    <div class="easyui-navpanel">
        <header>
            <div class="m-toolbar">
                <div class="m-title">维权人员列表</div>
                
                <!-- <div class="m-left">
                    <a href="javascript:void(0)" class="easyui-linkbutton m-back" plain="true" outline="true">Back</a>
                </div> -->
                <!-- <div class="m-right">
                    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" plain="true" outline="true">Search</a>
                </div> -->
            </div>
        </header>
        <table id="wq_dataGrid" data-options="singleSelect:true,border:false,fit:true,fitColumns:true,scrollbarSize:0">
                <thead>  
            <tr>  
                <th data-options="field:'itemid',width:80">Item ID</th>  
                <th data-options="field:'productid',width:100">Product</th>  
                <th data-options="field:'listprice',width:80,align:'right'">List Price</th>  
                <th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>  
            </tr>
        </thead>
        </table>
        <footer style="padding:2px 3px">
            <div style="text-align:center;margin-top:30px">
                <a href="${path }/view/weiQuan/add.jsp" class="easyui-linkbutton" style="width:100%;height:40px"><span style="font-size:16px">我也要投诉</span></a>
            </div>
            
        </footer>
    </div>
    
    <script>
        var data =     [
            {"productid":"FI-SW-01","productname":"Koi","unitcost":10.00,"status":"P","listprice":36.50,"attr1":"Large","itemid":"EST-1"},
            {"productid":"K9-DL-01","productname":"Dalmation","unitcost":12.00,"status":"P","listprice":18.50,"attr1":"Spotted Adult Female","itemid":"EST-10"},
            {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":38.50,"attr1":"Venomless","itemid":"EST-11"},
            {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":26.50,"attr1":"Rattleless","itemid":"EST-12"},
            {"productid":"RP-LI-02","productname":"Iguana","unitcost":12.00,"status":"P","listprice":35.50,"attr1":"Green Adult","itemid":"EST-13"},
            {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":158.50,"attr1":"Tailless","itemid":"EST-14"},
            {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":83.50,"attr1":"With tail","itemid":"EST-15"},
            {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":23.50,"attr1":"Adult Female","itemid":"EST-16"},
            {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":89.50,"attr1":"Adult Male","itemid":"EST-17"},
            {"productid":"FI-SW-01","productname":"Koi","unitcost":10.00,"status":"P","listprice":36.50,"attr1":"Large","itemid":"EST-1"},
            {"productid":"K9-DL-01","productname":"Dalmation","unitcost":12.00,"status":"P","listprice":18.50,"attr1":"Spotted Adult Female","itemid":"EST-10"},
            {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":38.50,"attr1":"Venomless","itemid":"EST-11"},
            {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":26.50,"attr1":"Rattleless","itemid":"EST-12"},
            {"productid":"RP-LI-02","productname":"Iguana","unitcost":12.00,"status":"P","listprice":35.50,"attr1":"Green Adult","itemid":"EST-13"},
            {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":158.50,"attr1":"Tailless","itemid":"EST-14"},
            {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":83.50,"attr1":"With tail","itemid":"EST-15"},
            {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":23.50,"attr1":"Adult Female","itemid":"EST-16"},
            {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":89.50,"attr1":"Adult Male","itemid":"EST-17"},
            {"productid":"FI-SW-01","productname":"Koi","unitcost":10.00,"status":"P","listprice":36.50,"attr1":"Large","itemid":"EST-1"},
            {"productid":"K9-DL-01","productname":"Dalmation","unitcost":12.00,"status":"P","listprice":18.50,"attr1":"Spotted Adult Female","itemid":"EST-10"},
            {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":38.50,"attr1":"Venomless","itemid":"EST-11"},
            {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":26.50,"attr1":"Rattleless","itemid":"EST-12"},
            {"productid":"RP-LI-02","productname":"Iguana","unitcost":12.00,"status":"P","listprice":35.50,"attr1":"Green Adult","itemid":"EST-13"},
            {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":158.50,"attr1":"Tailless","itemid":"EST-14"},
            {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":83.50,"attr1":"With tail","itemid":"EST-15"},
            {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":23.50,"attr1":"Adult Female","itemid":"EST-16"},
            {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":89.50,"attr1":"Adult Male","itemid":"EST-17"},
            {"productid":"AV-CB-01","productname":"Amazon Parrot","unitcost":92.00,"status":"P","listprice":63.50,"attr1":"Adult Male","itemid":"EST-18"}
        ];
        $(function(){
        	/* $('#wq_dataGrid').datagrid({
			url : '${pageContext.request.contextPath}/weiquan/list',
			fit : true,
			fitColumns : true,
			border : false,
			rownumbers:true,
			pagination : true,
			idField : 'id',
			sortOrder : 'desc',
			checkOnSelect : false,
			selectOnCheck : false,
			singleSelect:true,
			columns : [[
				{ field : 'inOrOutStockNumber', title : '扫描编号', width : "6%", align :'center'},
				{ field : 'productInfo', title : '产品名称', align :'center',width : "11%",
					formatter: function(value,row,index){
							if (value){
								return value.productName;
							} else {
								return "空";
							}
						} 
				},
				{ field : 'enterpriseInfo', title : '所属企业', align :'center', width : "12%",
					formatter: function(value,row,index){
							if (value){
								return value.centerprisename
							} else {
								return "空";
							}
						}
				},
				{ field : 'fromObjectName', title : '产品来源', align :'center', width : "12%",
					formatter: function(value,row,index){
							if (value){
								return value;
							} else {
								return "空";
							}
						}
				},
				{ field : 'operateTypeStr', title : '操作类型', width : "5%", align :'center'},
				{ field : 'toObjectName', title : '产品流转', align :'center', width : "12%",
					formatter: function(value,row,index){
							if (value){
								return value;
							} else {
								return "空";
							}
						}
				},
				{ field : 'operateNam', title : '操作对象', align :'center', width : "12%",
					formatter: function(value,row,index){
							if (row.levelType=='1'){
								return row.memberInfo.cEnterpriseName;
							}else if (row.levelType=='2'){
								return row.operateSubmemberInfo.cAgencyName;
							} else {
								return "空";
							}
						}
				},
				{ field : 'executor', title : '执行人', align :'center',width : "5%" },
				{ field : 'operateBeginTimeStr', title : '开始时间', width : "11%", align :'center'} ,
				{ field : 'operateEndTimeStr', title : '结束时间', width : "11%", align :'center'},
				{ field : 'scanSnTypeStr', title : '扫描类型', width : "5%", align :'center'},
				{ field : 'scanCountStr', title : '扫描数量', width : "5%", align :'center'}
			] ],
			rowStyler:function(index,row){    
			},    
			toolbar : '#toolbar'
		}); */
            $('#wq_dataGrid').datagrid({
                data: data
            });
        });
    </script>
</body>
</html>
