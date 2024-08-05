package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ContactanosServlet")
public class ContactanosServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recuperar parámetros del formulario
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String direccion = request.getParameter("direccion");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");
        
        // Podrías procesar los datos aquí, almacenarlos en una base de datos, enviar un correo electrónico, etc.
        
        // Establecer el mensaje de confirmación en un atributo de la solicitud
        request.setAttribute("mensajeConfirmacion", "¡Gracias por enviar tu pedido! Nos pondremos en contacto contigo pronto.");
        
        // Reenviar la solicitud a la página contactanos.jsp
        request.getRequestDispatcher("/CONTACTANOS.jsp").forward(request, response);
    }
}
