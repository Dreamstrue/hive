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
    <title>起诉报名</title>
    <link rel="stylesheet" type="text/css" href="${path }/resources/js/jquery-easyui-1.4.5/themes/metro/easyui.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/js/jquery-easyui-1.4.5/themes/mobile.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/js/jquery-easyui-1.4.5/themes/icon.css">
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/jquery.min.js"></script>
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/jquery.easyui.mobile.js"></script>
    <script type="text/javascript" src="${path }/resources/js/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
</head>
<script type="text/javascript">
function subWq(){

	$('#addForm').form('submit',{
	    url:"${pageContext.request.contextPath}/weiquan/addweiquan",
	    onSubmit: function(){
			return $(this).form('validate');
	    },
	    success:function(data){
	    var r = JSON.parse(data);
	    	
	    	if(r.status){
	    		location.href = "${pageContext.request.contextPath}/view/weiQuan/wqlist.jsp";
	    	}else{
	    		alert("失败");
	    	}
	    	
			/* var r = $.parseJSON(data);
				if (r.status) {
					$("#resume_add_dialog").dialog('destroy');
					$('#resume_manage_datagrid').datagrid('reload');
				}
				$.messager.alert("提示",r.msg,"info"); */
	    }
	    
	});
}
</script>
<body>
    <div class="easyui-navpanel" style="position:relative;padding:20px">
        <header>
            <div class="m-toolbar">
                <div class="m-title">维权起诉报名</div>
            </div>
        </header>
        <form id="addForm" method="post" action="${pageContext.request.contextPath}/weiquan/addweiquan">
            <div style="margin-bottom:10px">
                <input class="easyui-textbox" name="userName" data-options="label:'姓名',prompt:'请输入姓名',required:true" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-textbox" name="mobilePhone" data-options="label:'手机号',prompt:'请输入手机号',required:true" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-numberbox" name="money" data-options="label:'金额',prompt:'请输入货款金额',required:true" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-datebox" name="buyTime" data-options="label:'订单日期',prompt:'请选择订单日期',required:true,editable:false,panelWidth:220,panelHeight:240,iconWidth:30" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-textbox" name="buyAddress" data-options="label:'订货地点',prompt:'请输入订货地点'" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-textbox" name="buyThings" data-options="label:'订单货物',prompt:'请输入订单的货物'" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-textbox" name="remark" data-options="label:'备注',prompt:'请输入备注信息'" style="width:100%">
            </div>
            <input type="submit" value="44">
            <div style="text-align:center;margin-top:30px">
                <a href="javascript:void(0);" onclick="subWq();" class="easyui-linkbutton" style="width:100%;height:40px"><span style="font-size:16px">提交</span></a>
            </div>
        </form>
    </div>
</body>
</html>
