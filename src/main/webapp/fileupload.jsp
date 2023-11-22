<%--
  Created by IntelliJ IDEA.
  User: 임승범
  Date: 2023-11-21
  Time: 오후 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<%
    String filename = ""; // 업로드 되는 파일이름 저장용
    int sizeLimit = 15 * 1024 * 1024; // 파일 크기 (15MB)

    // 실제로 서버에 저장되는 path를 upload로 정한다.
    String realPath = request.getServletContext().getRealPath("upload");

    // 혹시 저장될 경로가 없으면 생성한다.
    File dir = new File(realPath);
    if (!dir.exists()) dir.mkdirs();

    // 파일 업로드 처리하는 과정
    // 파라미터 : request, 파일저장경로, 최대용량, 인코딩, 중복파일명에 대한 정책
    // DefaultFilenamePolicy() - 중복된 이름이 존재할 경우의 처리방법 - 뒤에 숫자붙임
    MultipartRequest multpartRequest = null;
    multpartRequest = new MultipartRequest(request, realPath,
            sizeLimit, "utf-8",new DefaultFileRenamePolicy());

    // "photo" 라는 이름으로 전송되어 업로드된 파일 이름을 가져옴
    filename = multpartRequest.getFilesystemName("photo");
%>

파일명: <%=filename%><br/>
<img src="${pageContext.request.contextPath }/upload/<%=filename%>">
</body>
</html>