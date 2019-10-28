<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-1.12.4.js"></script>
    <script>
        $(function () {
            $("#btn").submit(function () {
                if ($("#name").val()===null || $("#name").val()===""){
                    alert("执行人不能为空!")
                    return false;
                }
                if($("#des").val()===null || $("#des").val()===""){
                    alert("任务描述不能为空!")
                    return false;
                }
                return true;
            })
        })
    </script>
</head>
<body>
<form action="/add.do" method="post" id="btn">
    <input type="hidden" name="projectId" value="${projectId}">
    <table border="1" cellpadding="5" cellspacing="0" align="center">
        <tr>
            <td colspan="2" align="center">
                <h1>添加工单</h1>
            </td>
        </tr>
        <tr>
            <td bgcolor="#DDA0DD">执行人(*)</td>
            <td><input type="text" name="executor" id="name"></td>
        </tr>
        <tr>
            <td bgcolor="#DDA0DD">任务描述(*)</td>
            <td>
                <textarea name="description" cols="30" rows="10" id="des"></textarea>
            </td>
        </tr>
        <tr>
            <td bgcolor="#DDA0DD">级别</td>
            <td>
                <select name="orderLevel">
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
