<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="com.hive.common.vo.MenuVo"%>
<%@page import="java.util.List"%>
<jsp:include page="view/common/inc_bs.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>哈哈</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <script type="text/javascript">
    function jumpMenu(url){
    	$("#mainFrame").attr("src",url);
    }
    </script>
</head>
<body>
<div class="navbar navbar-default" role="navigation">
    <div class="navbar-inner">
        <a class="navbar-brand" href="index.html" style="padding: 0 0 0 0;"> 
        	<img alt="Charisma Logo" src="${pageContext.request.contextPath}/resources/charisma-master/img/ft3.png" class="hidden-xs" style="width: 172px;height: 46px;margin-left: 20px;"/>
       </a>
       <div class="btn-group pull-right">
           <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
               <i class="glyphicon glyphicon-user"></i>
               <span class="hidden-sm hidden-xs">管理员</span>
               <span class="caret"></span>
           </button>
           <ul class="dropdown-menu">
               <li><a href="#">Profile</a></li>
               <li class="divider"></li>
               <li><a href="login.html">注销</a></li>
           </ul>
       </div>

    </div>
</div>
<div class="ch-container">
    <div class="row">
        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">
                    </div>
                    <ul id="mainMenu" class="nav nav-pills nav-stacked main-menu">
                        <li id="homeli"><a class="ajax-link" href="${pageContext.request.contextPath}/layout"><i class="glyphicon glyphicon-home"></i><span> 主页</span></a>
                        </li>
                        <% List<MenuVo> list = (List<MenuVo>)session.getAttribute("menuList"); 
                        	for(MenuVo mv : list){
                        		if(mv.getUrl()!=""){
                        		%><li><a class="ajax-link" href="${pageContext.request.contextPath}/<%=mv.getUrl()%>"><i class="glyphicon <%=mv.getIconCls()%>"></i><span> <%=mv.getText()%></span></a></li><%
                        		}else{%>
                        		<li class="accordion">
		                            <a href="javascript:void(0);"><i class="glyphicon <%=mv.getIconCls()%>"></i><span> <%=mv.getText()%></span></a>
		                            <ul class="nav nav-pills nav-stacked">
		                            <% List<MenuVo> sonlist = (List<MenuVo>)mv.getChildren();
		                               for(MenuVo smv : sonlist){
		                               %><li><a href="javascript:void(0);" onclick="jumpMenu('${pageContext.request.contextPath}/<%=smv.getUrl()%>');"><i class="glyphicon <%=smv.getIconCls()%>"></i><span> <%=smv.getText()%></span></a></li><%
		                               }
		                            %>
		                            </ul>
		                        </li>
                        		<%}
                        	
                        	}
                        
                        %>
                </div>
            </div>
        </div>
        <!--/span-->
        <!-- left menu ends -->
    
    <div id="content" class="col-lg-10 col-sm-10">
    <!-- content starts -->
	    <div>
	    <ul class="breadcrumb" style="margin: 0 0 0 0;">
	        <li>
	            <a href="#">Home</a>
	        </li>
	        <li>
	            <a href="#">Dashboard</a>
	        </li>
	    </ul>
		</div>
	    <div class=" row">
	    	<iframe id="mainFrame" frameborder="0" scrolling="no"  src="${path}/view/common/content_bs.jsp"   width="100%" height="100%"></iframe>
    <!-- content ends -->
    </div>
</div>
</body>
</html>
