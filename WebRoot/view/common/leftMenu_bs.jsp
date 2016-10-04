<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="com.hive.common.vo.MenuVo"%>
<%@page import="java.util.List"%>
<jsp:include page="inc_bs.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>菜单区</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
</head>

<body>
<div class="ch-container">
    <div class="row">
        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2" style="width: 100%;">
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
		                            <a href="#"><i class="glyphicon <%=mv.getIconCls()%>"></i><span> <%=mv.getText()%></span></a>
		                            <ul class="nav nav-pills nav-stacked">
		                            <% List<MenuVo> sonlist = (List<MenuVo>)mv.getChildren();
		                               for(MenuVo smv : sonlist){
		                               %><li><a href="${pageContext.request.contextPath}/<%=smv.getUrl()%>"><i class="glyphicon <%=smv.getIconCls()%>"></i><span> <%=smv.getText()%></span></a></li><%
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
</div><!--/.fluid-container-->
</body>
</html>