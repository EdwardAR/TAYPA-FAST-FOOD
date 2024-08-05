/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlets;

/**
 *
 * @author ALAN
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UsuarioService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/tu_base_de_datos";
    private String jdbcUsername = "tu_usuario";
    private String jdbcPassword = "tu_contraseña";

    public boolean registrarUsuario(Usuario usuario) {
        String INSERT_USERS_SQL = "INSERT INTO usuarios (nombres, email, telefono, direccion, contrasena) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, usuario.getNombres());
            preparedStatement.setString(2, usuario.getEmail());
            preparedStatement.setString(3, usuario.getTelefono());
            preparedStatement.setString(4, usuario.getDireccion());
            preparedStatement.setString(5, usuario.getContrasena());

            int result = preparedStatement.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}