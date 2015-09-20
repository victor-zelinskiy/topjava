<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Meal List</title>
    <style>
        .normal {
            color: green
        }

        .exceed {
            color: red
        }
    </style>
</head>
<body>
<h2>Meal List:</h2>
<c:forEach items="${requestScope.mealList}" var="meal">
    <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.UserMealWithExceed"/>
    <h4 class="${meal.exceed ? "exceed" : "normal"}">
        <c:out value="${meal}"/>
    </h4>
</c:forEach>

</body>
</html>
