<%@ page language="java" import="java.util.Map;" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	session.setAttribute("path", request.getContextPath());
%>

<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<meta http-equiv="pragma" content="no-cache"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>  
<!-- easyui控件 -->
<link rel="stylesheet" href="${path}/resources/js/jquery-easyui-1.4.5/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="${path}/resources/js/jquery-easyui-1.4.5/themes/icon.css" type="text/css"></link>
<script type="text/javascript" src="${path}/resources/js/jquery-easyui-1.4.5/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-easyui-1.4.5/jquery.easyui.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
<script type="text/javascript" src="${path}/resources/js/common/util.js" charset="utf-8"></script>
