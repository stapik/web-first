<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Users list!</title>
</head>
<body>
<!-- header -->
<div>
    <h1>Users list!</h1>
</div>

<div>       <!-- content -->
    <div>    <!-- buttons holder -->
        Users list
    </div>
    <div>
        <%
            List<String> list = (List<String>) request.getAttribute("list");
            if (list != null && !list.isEmpty()) {
                out.println("<ul>");
                for (String str : list) {
                    out.println("<li>" + str + "</li>");
                }
                out.println("</ul>");
            } else out.println("<p>There are no users yet!</p>");
        %>
    </div>
</div>
</body>
</html>