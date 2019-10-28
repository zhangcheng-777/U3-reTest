<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<c:if test="${projects==null}">
    <jsp:forward page="/project.do"></jsp:forward>
</c:if>
<form action="/showAdd.do" method="post">
    <table border="1" cellspacing="0" cellpadding="5" width="800" align="center">
        <tr>
            <td colspan="2" align="center">
                <h1>企业工单管理系统</h1>
            </td>
        </tr>
        <tr>
            <td bgcolor="#DDA0DD">
                <h3>选择项目</h3>
            </td>
            <td>
                <select name="pro">
                    <c:forEach items="${projects}" var="project">
                        <option value="${project.id}">${project.projectname}</option>
                    </c:forEach>
                </select>&nbsp;
                <input type="submit" value="确定">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
