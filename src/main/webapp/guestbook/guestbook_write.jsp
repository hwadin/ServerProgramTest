<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="utils.DBCPUtil" %>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = "";
%>
<jsp:useBean id="guestBook" class="vo.TestGuestBookVO"/>
<jsp:setProperty name="guestBook" property="*" />
<%
	Connection conn = DBCPUtil.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(
		"INSERT INTO test_guestbook1 VALUES(null,?,?,?)"
	);
	pstmt.setString(1,guestBook.getGuestName());
	pstmt.setString(2,guestBook.getPassword());
	pstmt.setString(3,guestBook.getMessage());
	msg = (pstmt.executeUpdate() > 0) ? "방명록 등록 성공" : "방명록 등록 실패";
	DBCPUtil.close(pstmt,conn);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>방명록 메시지 작성 확인</title>
</head>
<body>
<!-- 방명록 작성 후 처리 결과 출력 code 작성 -->
<h3><%=msg%></h3>
<h4>방명록에 메세지를 남겼습니다.</h4>
<!-- 방명록 작성 후 처리 결과 출력 code 작성 end-->
<a href="guestbook_list.jsp">[목록 보기]</a>
</body>
</html>