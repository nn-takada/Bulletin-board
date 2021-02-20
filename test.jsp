<html>
<head>
<title>mysql  表示</title>
</head>
<body>
<%
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class test {
  public_static_void main(String[] args){
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String url = "jdbc:mysql://localhostgi/Bulletinboard";
    String user = "admin";
    String pass = "admin";

    try {
      con = DriverManager.getConnection(url,user,pass);
      pstmt = con.PreparedStatement("select * from person");
      rs = pstmt.execiteQuery();

      while(rs.next()) {
        System.out.println(rs.getString("name"));
        System.out.println(rs.getInt("age"));
        System.out.println(rs.getString("address"));
      }
    } catch (SQLException e) {
      e.printstackTrence();
    } finally {
      if (rs != null){
        try{
          rs.close();
        } catch(SQLException e) {
          e.printstackTrence();
        }
      }
      if (con != null) {
        try{
          con.close();
        }catch (SQLException e) {
          e.printstackTrence();
        }
      }
    }
  }
}
%>
</body>
</html>

