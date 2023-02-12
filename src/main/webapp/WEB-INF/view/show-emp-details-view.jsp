<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<h2> Dear Employee, you are welcome!!!</h2>
<br>
<br>
<%--если параметр передается прямо из формы <input type="text" name="employeeName", то мы
можем использовать параметр напрямую через ${param., без обработки в контроллере:--%>
<%--<p>Your name: ${param.employeeName}</p>--%>

<%--если параметр передается прямо из контроллера: model.addAttribute("employeeName", empName);
то используем:--%>
<%--<p>Your name: ${employeeName}</p>--%>

<%--если параметр передается из модели, то используем:--%>
<p>Your name: ${employee.name}</p>
<p>Your surname: ${employee.surname}</p>
<p>Your salary: ${employee.salary}</p> <%--Здесь срабатывают геттеры--%>
<p>Your Department: ${employee.department}</p>
<p>Your car: ${employee.carBrand}</p>
<p>Languages:
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>
<p>Your phoneNumber: ${employee.phoneNumber}</p>
<p>Email: ${employee.email}</p>

</body>
</html>