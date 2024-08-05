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

@WebServlet("/registrarCliente")
public class RegistrarClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String contrasena = request.getParameter("contrasena");
        String confirmarContrasena = request.getParameter("confirmarContrasena");

        // Validación de contraseñas
        if (!contrasena.equals(confirmarContrasena)) {
            request.setAttribute("errorMessage", "Las contraseñas no coinciden");
            request.getRequestDispatcher("jsp/registrarse.jsp").forward(request, response);
            return;
        }

        // Crear el objeto Usuario
        Usuario usuario = new Usuario(nombres, email, telefono, direccion, contrasena);

        // Guardar el usuario utilizando el servicio de usuario
        UsuarioService usuarioService = new UsuarioService();
        boolean registroExitoso = usuarioService.registrarUsuario(usuario);

        if (registroExitoso) {
            response.sendRedirect("jsp/index.jsp");
        } else {
            request.setAttribute("errorMessage", "Hubo un error al registrar el cliente");
            request.getRequestDispatcher("jsp/registrarse.jsp").forward(request, response);
        }
    }

}
