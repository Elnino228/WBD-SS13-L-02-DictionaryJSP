<%--
  Created by IntelliJ IDEA.
  User: elnino228
  Date: 19/06/2019
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String,String> dic=new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search=request.getParameter("search");
    String result=dic.get(search);
    if (result!=null) {
        out.println("Word: "+search);
    } else {
        out.println("Result: "+result);
    }
%>
</body>
</html>
