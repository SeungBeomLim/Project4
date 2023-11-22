<%--
  Created by IntelliJ IDEA.
  User: 임승범
  Date: 2023-11-22
  Time: 오전 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.crud.member.MemberVO, com.crud.member.MemberDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    MemberDAO memberDAO = new MemberDAO();
    String id = request.getParameter("id");
    /*MemberVO u = memberDAO.getOne(Integer.parseInt(id));*/
%>
</body>
</html>
