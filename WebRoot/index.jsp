<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
 	<title>社区管理平台</title>
	<jsp:include page="view/common/inc.jsp" />
  </head>
  <body class="easyui-layout">
		<div data-options="region:'north',href:'${path}/layout/north'" style="height: 60px;overflow: hidden;" class="logo"></div>
		<div data-options="region:'west',title:'功能导航',href:'${path}/layout/west'" style="width: 200px;overflow: hidden;"></div>
		<div data-options="region:'center',href:'${path}/layout/center'" style="overflow: hidden;"></div>
		<div data-options="region:'south',href:'${path}/layout/south'" style="height: 27px;overflow: hidden;"></div>
   </body>
</html>
