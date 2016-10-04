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
    <!-- The styles -->
    <link id="bs-css" href="${pageContext.request.contextPath}/resources/charisma-master/css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/charisma-master/css/charisma-app.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/resources/charisma-master/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/jquery.noty.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/noty_theme_default.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/elfinder.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/elfinder.theme.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/uploadify.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/charisma-master/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/charisma-master/bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/charisma-master/img/favicon.ico">
    
    
<!-- external javascript -->

<script src="${pageContext.request.contextPath}/resources/charisma-master/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='${pageContext.request.contextPath}/resources/charisma-master/bower_components/moment/min/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/charisma-master/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${pageContext.request.contextPath}/resources/charisma-master/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${pageContext.request.contextPath}/resources/charisma-master/js/charisma.js"></script>

