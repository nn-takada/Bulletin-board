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
        Statement stmt = null;
        ResultSet rs = null;

        String sqlStr = null;
        String url = "jdbc:mysql://localhost/bulletinboard";
        String user = "admin";
        String pass = "admin";

        try {
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          con = DriverManager.getConnection(url,user,pass);
          stmt = con.createStatement();
          sqlStr = "SELECT * FROM user";
          rs = pstmt.execiteQuery(sqlStr);

          while(result.next()){
            String name = rs.getString("name");
            String age = rs.getString("age");
            String address = rs.getString("address");
            System.out.println(name + "," + age + "," + address);
        }
          rs.close();

          pstmt.close();

          con.close();
        }
        catch(SQLException e){
          System.out.println("Connection Failed. :" + e.toString());
          throw new Exception();
        }
        catch(ClassNotFoundException e){
          System.out.println("読み込めませんでした"+ e);
        }
        finally{
          try{
            if(con != null){
              con.close();
            }
          }
          catch(Exception e){
            System.out.println("Exception2! :" + e.toString() );

            throw new Exception();
          }
        }
      }
    }
  %>
  </body>
</html>

