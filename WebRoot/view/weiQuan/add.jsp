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
    <div class="easyui-navpanel" style="position:relative;padding:20px">
        <header>
            <div class="m-toolbar">
                <div class="m-title">维权起诉报名</div>
                <div class="m-right">
                    <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" outline="true" onclick="$('#ff').form('reset')" style="width:60px">Reset</a>
                </div>
            </div>
        </header>
        <form id="ff">
            <div style="margin-bottom:10px">
                <input class="easyui-textbox" label="Full name:" prompt="Full name" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-datebox" label="Birthday:" prompt="Birthday" data-options="editable:false,panelWidth:220,panelHeight:240,iconWidth:30" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-passwordbox" label="Password:" prompt="Password" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input class="easyui-numberbox" label="Number:" prompt="Number" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <label class="textbox-label">Switch:</label><!--
                --><input class="easyui-switchbutton">
            </div>
        </form>
    </div>
</body>
</html>
