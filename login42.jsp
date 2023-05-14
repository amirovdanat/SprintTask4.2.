
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <%@include file="bootstrapLink.jsp"%>
</head>
<body>
<%@include file="head42.jsp"%><br>
<%
   Boolean check = (Boolean) request.getAttribute("check");
   if (check != null && !check) {
%>
<div class="container">
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>Holy guacamole!</strong> You should check in on some of those fields below.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
</div><br>
<%}%>
<div class="container">
  <form action="/aut42" method="post">
    <div class="form-group">
      <label for="formGroupExampleInput">Example label</label>
      <input type="text" name="email" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">
    </div>
    <div class="form-group">
      <label for="formGroupExampleInput2">Another label</label>
      <input type="password" name="password" class="form-control" id="formGroupExampleInput2" placeholder="Another input placeholder">
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
  </form>

</div>

</body>
</html>
