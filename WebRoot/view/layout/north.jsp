<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" charset="utf-8">
	function logout(){
		top.location.href='${pageContext.request.contextPath}/security/logout';
	}
	
	function edit_currenUser_fn() {
		$('<div/>').dialog({
			href : '${pageContext.request.contextPath}/security/editUser.action?id=${userId}',
			width : 300,
			height : 200,
			modal : true,
			title : '个人信息',
			buttons : [ {
				text : '确定',
				iconCls : 'icon-edit',
				handler : function() {
					var d = $(this).closest('.window-body');
					$('#edit_currentUser_form').form('submit', {
						url : '${pageContext.request.contextPath}/security/updateUser.action',
						success : function(result) {
							try {
								var r = $.parseJSON(result);
								if (r.status) {
									d.dialog('destroy');
								}
								$.messager.show({
									title : '提示',
									msg : r.msg
								});
							} catch (e) {
								$.messager.alert('提示', result);
							}
						}
					});
				}
			} ],
			onClose : function() {
				$(this).dialog('destroy');
			}
		});
	}
	
	//===========================================================================
	
	function edit_currentUser_password_fn() {
		$('<div/>').dialog({
			href : '${pageContext.request.contextPath}/security/editPassword.action?id=${userId}',
			width : 300,
			height : 230,
			modal : true,
			title : '修改密码',
			buttons : [ {
				text : '确定',
				iconCls : 'icon-edit',
				handler : function() {
					var d = $(this).closest('.window-body');
					$('#edit_currentUser_password_form').form('submit', {
						url : '${pageContext.request.contextPath}/security/updatePassword.action',
						success : function(result) {
							try {
								var r = $.parseJSON(result);
								if (r.status) {
									d.dialog('destroy');
								}
								$.messager.show({
									title : '提示',
									msg : r.msg
								});
							} catch (e) {
								$.messager.alert('提示', result);
							}
						}
					});
				}
			} ],
			onClose : function() {
				$(this).dialog('destroy');
			}
		});
	}
	
	
	
function formatDate(){
		var  t = new Date();
		var m = t.getMonth()+1;
		var d =(t.getDate()<10)?("0"+t.getDate()):t.getDate();
		var hour = (t.getHours()<10)?("0"+t.getHours()):t.getHours();
		var min = (t.getMinutes()<10)?("0"+t.getMinutes()):t.getMinutes();
		var sec = (t.getSeconds()<10)?("0"+t.getSeconds()):t.getSeconds();
		var currentTime = t.getFullYear()+"-"+m+"-"+d+" "+hour+":"+min+":"+sec;
		return currentTime;
}
</script>
<div style="position: absolute;left: 0px;top:0px;background: url('${pageContext.request.contextPath}/resources/images/index/banner_bg.png') repeat-x;width:100%;height:59px;"></div>

<div style="position: absolute;right: 5px;top:10px;">
<!-- 	<a href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#layout_north_kzmbMenu',iconCls:'icon-help'">控制面板</a> -->
	<a href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#layout_north_zxMenu',iconCls:'icon-back'">注销</a>
</div>

<div id="layout_north_kzmbMenu" style="width: 100px; display: none;">
	<div onclick="edit_currenUser_fn();">个人信息</div>
	<div class="menu-sep"></div>
	<div onclick="edit_currentUser_password_fn();">修改密码</div>
</div>
<div id="layout_north_zxMenu" style="width: 100px; display: none;">
	<div onclick="logout();">退出系统</div>
</div>
 
<div id="sessionInfoDiv" style="position: absolute;right: 0px; bottom: 2px;">
	<c:if test="${user.id != null}">
		[<strong>${user.fullname}</strong>]，欢迎你！此次登录时间[<strong><fmt:formatDate value="${loginTime}" pattern="yyyy-MM-dd HH:mm:ss"/></strong>]
	</c:if>
</div>

<div id="user_login_loginDialog" style="width:300px;height:170px;padding:10px;display: none;">
	<div align="center">
		<form method="post" id="user_login_loginInputForm">
			<table class="tableForm">
				<tr>
					<th>用户</th>
					<td>
						<input name="username" class="easyui-validatebox" data-options="required:true" value="${authInfo.username}" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<th>密码</th>
					<td>
						<input type="password" name="password" class="easyui-validatebox" data-options="required:true" style="width: 150px;" value="" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>

