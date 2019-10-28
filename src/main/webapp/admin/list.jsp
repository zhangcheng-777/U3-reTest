<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${workorders==null}">
    <jsp:forward page="/list.do"></jsp:forward>
</c:if>
<table border="1" cellspacing="0" cellpadding="5" align="center" width="800">
    <tr>
        <td colspan="6" align="center">
            <h1>企业工单列表</h1>
        </td>
    </tr>
    <tr bgcolor="#808080">
        <td>工单编号</td>
        <td>项目名称</td>
        <td>执行人</td>
        <td>任务描述</td>
        <td>级别</td>
        <td>创建时间</td>
    </tr>
    <c:forEach items="${workorders}" var="w" varStatus="vs">
        <tr <c:if test="${vs.index%2==0}">bgcolor="#DDA0DD"</c:if>>
            <td>${w.id}</td>
            <td>${w.projectName}</td>
            <td>${w.executor}</td>
            <td>${w.description}</td>
            <td>${w.orderlevel}级</td>
            <td><fmt:formatDate value="${w.createdate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="6" align="center">
            <font color="red">${msg}</font>
        </td>
    </tr>
</table>
</body>
</html>
