<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple JSP Web App</title>
</head>
<body>
    <h1>Welcome to the Simple JSP Web App!</h1>
    
    <!-- Input text field and submit button -->
    <form action="index.jsp" method="post">
        <label for="name">Enter your name:</label>
        <input type="text" id="name" name="name">
        <button type="submit">Greet Me</button>
    </form>

    <br>

    <!-- Display greeting message if name is entered -->
    <%
        String name = request.getParameter("name");
        if (name != null && !name.trim().isEmpty()) {
            out.println("<h2>Hello, " + name + "!</h2>");
        }
    %>

    <br>

    <!-- Link to redirect -->
    <a href="index.jsp">Go to the same page</a>

</body>
</html>
