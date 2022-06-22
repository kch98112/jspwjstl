
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    request.setCharacterEncoding("utf-8");
//    String title=request.getParameter("title");
 //   String content=request.getParameter("content");
 //   String seq=request.getParameter("c");
    %>
    <% 
    
    
 //   Notice n=new Notice();
 //  n.setTitle(title);
 //   n.setContent(content);
  //  n.setSeq(seq);
    
//    NoticeDao dao=new NoticeDao();
//  int cnt=dao.update(n);
  
 // if(cnt>0)
//	  response.sendRedirect("noticeDetail.jsp?c="+seq);
//  else
//	  out.write("수정오류");
    
   /*  
   String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="hr";
	String pw="123456";
	
	Class.forName(driver);
 Connection	conn=DriverManager.getConnection(url,user,pw);
	//접속성공
// String sql="select * from notices where seq="+seq; 
String sql="update notices set title=?,content=? where seq=?";

	// Statement st=conn.createStatement(); 
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, seq);
//	ResultSet rs=st.executeQuery(sql);//stmtm형식 실행   select 실행
int cnt=pstmt.executeUpdate();//pstmt형식 실행

*/
//response.sendRedirect("noticeDetail.jsp?c="+seq);    
    
    %>
