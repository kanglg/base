<%--
  Created by IntelliJ IDEA.
  User: kanglg
  Date: 16/3/12
  Time: 下午4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglibs.jsp" %>
<c:url value="/login" var="loginUrl"/>
<!DOCTYPE html>
<!--
Beyond Admin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3
Version: 1.0.0
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<!--Head-->
<head>
  <meta charset="utf-8"/>
  <title>Login Page</title>

  <meta name="description" content="login page"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link rel="shortcut icon" href="${ctx}/assets/img/favicon.png" type="image/x-icon">

  <!--Basic Styles-->
  <link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <link id="bootstrap-rtl-link" href="" rel="stylesheet"/>
  <link href="${ctx}/assets/css/font-awesome.min.css" rel="stylesheet"/>

  <!--Fonts-->
  <link href="http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
        rel="stylesheet" type="text/css">

  <!--Beyond styles-->
  <link id="beyond-link" href="${ctx}/assets/css/beyond.min.css" rel="stylesheet"/>
  <link href="${ctx}/assets/css/demo.min.css" rel="stylesheet"/>
  <link href="${ctx}/assets/css/animate.min.css" rel="stylesheet"/>
  <link id="skin-link" href="" rel="stylesheet" type="text/css"/>

  <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
  <script src="${ctx}/assets/js/skins.min.js"></script>
</head>
<!--Head Ends-->
<!--Body-->
<body>
<form action="${loginUrl}" method="post">

  <div class="login-container animated fadeInDown">
    <div class="loginbox bg-white">
      <div class="loginbox-title">登陆</div>
      <div class="loginbox-textbox">
        <input type="text" class="form-control" placeholder="账号" name="username"/>
      </div>
      <div class="loginbox-textbox">
        <input type="password" class="form-control" placeholder="密码" name="password"/>
      </div>
      <div class="loginbox-submit">
        <input type="submit" class="btn btn-primary btn-block" value="登陆">
      </div>
    </div>
  </div>
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<!--Basic Scripts-->
<script src="${ctx}/assets/js/jquery-2.0.3.min.js"></script>
<script src="${ctx}/assets/js/bootstrap.min.js"></script>

<!--Beyond Scripts-->
<script src="${ctx}/assets/js/beyond.js"></script>

</body>
<!--Body Ends-->
</html>
