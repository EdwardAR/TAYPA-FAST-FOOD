/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlets;

/**
 *
 * @author ALAN
 */
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/iniciar-sesion")
public class IniciarSesionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        // Validar las credenciales del usuario (este es un ejemplo simple)
        if ("admin".equals(usuario) && "password".equals(clave)) {
            // Iniciar sesión exitosa, redirigir al usuario a la página principal
            response.sendRedirect("jsp/IndexUsers.jsp");
        } else {
            // Credenciales incorrectas, mostrar un mensaje de error
            request.setAttribute("errorMessage", "Usuario o contraseña incorrectos");
            request.getRequestDispatcher("jsp/Ingresar.jsp").forward(request, response);
        }
    }
}
