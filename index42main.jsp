<%@ page import="java.util.ArrayList" %>
<%@ page import="SprintTask42.ModelItems42" %>
<%@ page import="SprintTask42.DBConnector42" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="bootstrapLink.jsp"%>

</head>
<body>
<%@include file="head42.jsp"%><br>

<div  class="text-center">
    <h1>Welcome to BITLAB SHOPE</h1>
    <p>Electronic device with high quality</p>
</div>



<div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
            <% ArrayList<ModelItems42> items= DBConnector42.getItems();
                for (ModelItems42 item: items) {
            %>
                <div class="shadow p-3 mb-5 bg-body rounded; card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title"><%=item.getName()%></h5>
                        <h3 class="card-price"><%=item.getPrice()%></h3>
                        <p class="card-text"><%=item.getDescription()%></p>
                        <a href="#" class="btn btn-primary">Buy</a>
                    </div>
                </div>
            </div>
            <% } %>
    </div>
</div>


</body>
</html>
