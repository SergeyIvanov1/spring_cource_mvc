<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<h2>Dear Employee, please enter your details</h2>
<br>
<br>

<%--<form action="showDetails" method="get">--%>
<%--  <input type="text" name="employeeName"--%>
<%--  placeholder="write your name">--%>
<%--  <input type="submit">--%>
<%--</form>--%>


<%--Эта форма заполняется в зависимости от объекта, который содержится в модели
 Если переданный в модель объект пустой, то при открытии формы на странице, в поля формы будут переданы значение налл
 а если переданный объект не пустой, то передаются актуальные значения. Т.е. срабатывает геттер.
 Когда мы нажимаем кнопку Ок, то полям объекта в модели сетятся новые значения из формы.--%>
<form:form action="showDetails" modelAttribute="employee">

    <p>Name <form:input path="name"/> <form:errors path="name"/></p>

    <p>Surname <form:input path="surname"/> <form:errors path="surname"/></p>
    <p>Salary <form:input path="salary"/> <form:errors path="salary"/></p>


    <%--    Если мы хардкорно хотим указать все элементы <form:select, то можем выбрать: --%>
    <%--    Department <form:select path="department">--%>
    <%--    <form:option value="Information Tehnology" label="IT"/>--%>
    <%--    <form:option value="Human Resourses" label="HR"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
    <%--    </form:select>--%>

    <br>
    <%--    Также мы можем передать в <form:select коллекцию МАР--%>
    Department
    <form:select path="department">
        <form:options items="${employee.departments}"/>
    </form:select>

    <br>
    <p>Which car do you want?</p>

    <%--    Если мы хардкорно хотим указать все элементы--%>
    <%--    BMW <form:radiobutton path="carBrand" value="BMW" />--%>
    <%--    Audi <form:radiobutton path="carBrand" value="Audi" />--%>
    <%--    MB <form:radiobutton path="carBrand" value="Mersedes-Benz" />--%>

    <%--    Также мы можем передать коллекцию МАР--%>
    <p><form:radiobuttons path="carBrand" items="${employee.carBrands}"/></p>

    <p>Foreign language(s):</p>

    <%--    Если мы хардкорно хотим указать все элементы--%>
    <%--    <p>EN <form:checkbox path="languages" value="English"/></p>--%>
    <%--    <p>DE <form:checkbox path="languages" value="Deutch"/></p>--%>
    <%--    <p>FR <form:checkbox path="languages" value="French"/></p>--%>

    <%--    Также мы можем передать коллекцию МАР--%>
    <p><form:checkboxes path="languages" items="${employee.languageMap}"/></p>

    <p>Phone number <form:input path="phoneNumber"/> <form:errors path="phoneNumber"/></p>
    <p>Email <form:input path="email"/> <form:errors path="email"/></p>

    <input type="submit" value="Ok">

</form:form>

</body>

</html>
