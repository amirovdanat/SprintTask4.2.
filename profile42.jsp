
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <%@include file="bootstrapLink.jsp"%>
</head>
<body>
<%@include file="head42.jsp"%><br><br>
<%String name=(String) session.getAttribute("fullName");%>
<div  class="text-center">
  <h1>Hello <%=name%></h1>
  <p>This is your profile page</p>
</div>

</body>
</html>
