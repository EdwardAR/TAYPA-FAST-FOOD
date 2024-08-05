<%page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Conectando a la base de datos:
                Connection con;
                String url= "jdbc:mysql://localhost:3306/bd_taypafastfood";
                String Driver= "com.mysql.jdbc.Driver";
                String user= "root";
                String clave="12345678"
                Class.forName(Driver);
                con=DriverManager.getConnection(url,user.clave);
                //Empezamos listando los datos de la tabla usuario
                PrepareStatement ps;
                ResultSet rs;
                ps=con.prepareStatement("select * from usuarios");
                rs=ps.executeQuery();
        %>
        <h1>Hello World!</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>NOMBRES</th>
                <th>USUARIOS</th>
            </tr>
            <% 
                while(rs.next()){
            %>
            <tr>
                <td><% rs.get.Int("id")%></td>
                <td><% rs.get.Int("nombres")%></td>
                <td><% rs.get.Int("usuarios")%></td>
                <td>
                    <<a>Editar</a>
                    <a>Eliminar</a>
                </td>
            </tr>
        </table>
    </body>
</html>
