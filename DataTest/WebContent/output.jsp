<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*,db.JdbcUtil" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width:500px;
		margin:auto;
		padding:auto;
		margin-top: 30px;
		text-align: center;
		border-spacing: 0;
		border: 1px solid gray;
	}
	td{
		border: 1px solid gray;
	}
	
</style>
</head>
<body>
<form action="inputReg.jsp" method="post" name="input">
<%
	request.setCharacterEncoding("UTF-8");
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		con = JdbcUtil.getConnection();
		con.setAutoCommit(false);
%>
<%--	String sql_s = "select a.id, name, tel, addr, hobby from mem a, mem_hobby b "
				+ "where a.id = b.id order by num";								 --%>
<%		
		String sql_s = "select mem.id, name, tel, addr, hobby from mem left join mem_hobby "
						+ " on mem.id = mem_hobby.id order by num";
		pstmt = con.prepareStatement(sql_s);
		rs = pstmt.executeQuery();
		if(rs.next()){
			String mem_id_last="";
%>
		<table>
			<tr>
				<td>회원 ID</td>
				<td>이름</td>
				<td>전화</td>
				<td>주소</td>
				<td>취미
			
	<%do{ %>
		<%	if(!mem_id_last.equals(rs.getString(1))){ %>
			</td></tr>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %>
		<% mem_id_last = rs.getString(1); %>
		<%}else {%>
				, <%=rs.getString(5) %>
		
		<%} %>
	<%}while(rs.next());%>
</table>
<%--
	<table>
		<tr>
			<td>회원 ID</td>
			<td>이름</td>
			<td>전화</td>
			<td>주소</td>
			<td>취미</td>
		</tr>
	<%while(rs.next()){%>
		<tr>
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("tel") %></td>
			<td><%=rs.getString("addr") %></td>
			<td><%=rs.getString("hobby") %></td>
		</tr>
	<%} %>
	</table>
 --%>
</form>
<%	}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
}
%>
</body>
</html>