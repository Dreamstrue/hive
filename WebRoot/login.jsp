<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>社区管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login/login.js"></script>
    <script type="text/javascript">
    $(function () {
    $(".content .con_right .left").click(function (e) {
        $(this).css({ "color": "#333333", "border-bottom": "2px solid #2e558e" });
        $(".content .con_right .right").css({ "color": "#999999", "border-bottom": "2px solid #dedede" });
        $(".content .con_right ul .con_r_left").css("display", "block");
        $(".content .con_right ul .con_r_right").css("display", "none");
        if (fluCodeInterval == null || fluCheckCodeInterval == null) {
            show();
            flushQRCode();
            checkQRCodeStatus();
        }
    });
    $(".content .con_right .right").click(function (e) {
        $(this).css({ "color": "#333333", "border-bottom": "2px solid #2e558e" });
        $(".content .con_right .left").css({ "color": "#999999", "border-bottom": "2px solid #dedede" });
        $(".content .con_right ul .con_r_right").css("display", "block");
        $(".content .con_right ul .con_r_left").css("display", "none");
    });

  

    $('#btn_Login').click(function () {
        if ($.trim($('#userid').val()) == '') {
            alert('请输入您的用户名');
            return false;
        } else if ($.trim($('#pwd').val()) == '') {
            alert('请输入密码');
            return false;
        } else {
            return true;
        }
    });

})
    </script>

</head>
<body style="overflow:hidden">
    <div class="pagewrap">
        <div class="main">
            <div class="header"></div>
            <div class="content">
<!--             <div class="con_left"></div> -->
                <div class="con_right">
                    <div class="con_r_top">
                    <a href="javascript:;" class="right" style="color: rgb(51, 51, 51); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(46, 85, 142);">登录管理</a>
                    <a href="javascript:;" class="left" style="color: rgb(153, 153, 153); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 222, 222);">关注我们</a> 
                    </div>
                    <ul>
                        <li class="con_r_left" style="display: none;">
                            <div class="erweima">
                                <div class="qrcode">
                                    <div id="output" style="width: 100%; position: relative">
                                        <img src="${pageContext.request.contextPath}/resources/images/login/2weima.jpg" style="width: 174px; height: 174px"></div>                                    
                                </div>
                             </div>
                            <div style="height: 70px">
                                <p>微信扫码 安全便捷</p>
                            </div>
                        </li>
						
						
                        <li class="con_r_right" style="display: block;">
                        <form name="form1" method="post" action="${pageContext.request.contextPath}/security/login" autocomplete="off">
		                 	<div class="user">
		                        <div><span class="user-icon"></span>
		                            <input type="text" id="userid" name="userid" placeholder="　输入账号" value="${account }">
							    </div>
		
		                        <div><span class="mima-icon"></span>
		                            <input type="password" id="pwd" name="pwd" placeholder="　输入密码" value="${password }">
							    </div>
								
								                        <div><span class="yzmz-icon"></span>
		                            <input id="vdcode" type="text" name="validate" placeholder="　验证码" value="" style=" width:150px;">　　
									<!--   这里是验证码的相关路径，各位站长自行更换   -->
									
									<img style="cursor: pointer; margin-top:8px;" alt="看不清？点击更换" src="${pageContext.request.contextPath}/resources/images/login/yanzhengma.jpg">
									
									
									
		                        </div>						
								                                
		                   </div><br>
		                   	${msg }
		                   <br>
                        	<button id="btn_Login" type="submit">登 录</button>
						</form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


</body></html>