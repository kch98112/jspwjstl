<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection	conn=DriverManager.getConnection(url,user,pw);
//접속성공
String sql="select * from board order by to_number(bno) desc";


//실행
Statement st=conn.createStatement();
//결과값 가져오기
ResultSet rs=st.executeQuery(sql);



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>board</h3>

<table width="600" border="1">
	<tr>
	<td>번호</td>
	<td>주제</td>
	<td>작성자</td>
	<td>메모</td>
	<td>작성일</td>
	<td>조화수</td>
	</tr>
<%
	while(rs.next()){
		%>
		<tr>
	<td><%=rs.getString("bno") %></td>
	<td><a href="boardDetail.jsp?c=<%=rs.getString("bno") %>"><%=rs.getString("bsubj") %></a></td>
	<td><%=rs.getString("bwritter") %></td>
	<td><%=rs.getString("bmemo") %></td>
	<td><%=rs.getDate("bdate") %></td>
	<td><%=rs.getInt("bcnt") %></td>
	</tr>
	
<% 
		
	}


%>
	



</table>
<a href="boardReg.jsp">write</a>

</body>
</html>


<%
rs.close();
st.close();
conn.close();
%>



