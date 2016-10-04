<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<jsp:include page="inc_bs.jsp"></jsp:include>

<div class="navbar navbar-default" role="navigation">

    <div class="navbar-inner">
        <a class="navbar-brand" href="index.html"> 
        	<img alt="Charisma Logo" src="${pageContext.request.contextPath}/resources/charisma-master/img/logo20.png" class="hidden-xs"/>
           <span>hive</span>
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
