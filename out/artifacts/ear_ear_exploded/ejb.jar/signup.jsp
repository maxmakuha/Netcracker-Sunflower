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
    <title>Sign up</title>
</head>
<body>

  <h1>Sign up</h1>

  <font color="red"><h2> ${requestScope.error}</h2></font>
  <form method="post" action="signup">
    <p>
      E-mail<br/>
      <input type="text" name="login" value="${requestScope.login}">
      <font color="red"> ${requestScope.login_error} </font>
    </p>

    <p>
      Name<br/>
      <input type="text" name="name" value="${requestScope.name}">
      <font color="red"> ${requestScope.name_error} </font>
    </p>

    <p>
      Password<br/>
      <input type="password" name="password" value="">
      <font color="red"> ${requestScope.password_error} </font>
    </p>

    <p>
      Repeat password<br/>
      <input type="password" name="repeat_password" value="">
    </p>

    <input  type="hidden" name="check" value="">

    <p class="submit"><input type="submit" name="commit" value="Sign up!"></p>
  </form>
</body>
</html>