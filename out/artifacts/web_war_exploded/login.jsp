<%--
  Created by IntelliJ IDEA.
  User: Andriy
  Date: 11/18/2014
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="includes.jsp"%>
  <title>Login page</title>
</head>

<body>

<div id="container">
  <%@include file="header.jsp"%>

  <div id="body">
    <div class="row voffset-25">
      <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
          <div class="panel-heading">
            <img src="http://s11.postimg.org/7kzgji28v/logo_sm_2_mr_1.png" class="img-responsive center-block" alt="Sunflower"/>
          </div>
          <div class="panel-body">
            <form accept-charset="UTF-8" role="form" class="form-signin" action="login" method="post">
              <%if(request.getAttribute("error") != null && !((String) request.getAttribute("error")).isEmpty()){%>
              <div class="alert alert-danger" role="alert">${requestScope.error}</div>
              <%}%>
              <fieldset>
                <label class="panel-login">
                  <div class="login_result"></div>
                </label>
                <input class="form-control" placeholder="Email" value="${requestScope.login}" name="login" type="text">
                <br/>
                <input class="form-control" placeholder="Password" name="password" type="password">
                <br/>

                <div class="col-xs-6 col-sm-6 col-md-6">
                  <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                  <a href="signup" class="btn btn-lg btn-primary btn-block">Sign Up</a>
                </div>

                <input  type="hidden" name="check" value="">
              </fieldset>
              <br/>
              <div>
                <p>Forgot your password? <a href="reset">Click here to reset it</a>.</p>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <%@include file="footer.jsp"%>
  </div>
</body>
</html>
