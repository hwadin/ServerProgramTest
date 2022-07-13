<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, utils.*" %>   
<!DOCTYPE html>
<html>
<head>
	<title>방명록 메시지 삭제함</title>
</head>
<body>
<br/>
<!-- 삭제 확인 처리  알림 code 작성-->
	<%
		request.setCharacterEncoding("UTF-8");
		String msg = "";
		String paramID = request.getParameter("id");
		String password = request.getParameter("password");
		
		Connection conn = DBCPUtil.getConnection();
		PreparedStatement pstmt = null;
		
		try{
			int id = Integer.parseInt(paramID);
			String sql = "DELETE FROM test_guestbook1 "
						 + " WHERE id = ? AND password = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, password);
			int result = pstmt.executeUpdate();
			msg = (result > 0) ? "방명록을 삭제하였습니다." : "방명록 삭제 실패하였습니다.";
		}catch(Exception e){
			msg = "삭제 실패";
			e.printStackTrace();
		}finally{
			DBCPUtil.close(pstmt,conn);
		}
	%>
	<h3><%=msg%></h3>
<a href="guestbook_list.jsp">[목록 보기]</a>
</body>
</html>