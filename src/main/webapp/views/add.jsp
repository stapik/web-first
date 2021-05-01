<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add new user!</title>
</head>
<body>
<!-- header -->
<div>
    <h1>Add new user!</h1>
    <%
        String userName = (String) request.getAttribute("userName");
        if (userName != null) {
            out.println("<i>User:" + userName + " added!</i>");
        }
    %>
</div>

<form method="post">
    <label>Name:
        <input type="text" name="name"><br/>
    </label>

    <label>Password:
        <input type="password" name="pass"><br/>
    </label>
    <button type="submit">Submit</button>
</form>
<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>