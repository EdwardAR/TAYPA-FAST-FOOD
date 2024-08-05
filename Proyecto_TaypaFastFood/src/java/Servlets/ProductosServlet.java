package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author ALAN
 */

public class ProductosServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Simulamos la obtención de una lista de productos desde alguna fuente de datos
        ArrayList<Producto> productos = obtenerListaProductos();

        // Establecemos la lista de productos como atributo de solicitud
        request.setAttribute("productos", productos);

        // Redireccionamos al archivo JSP para mostrar la lista de productos
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }

    private ArrayList<Producto> obtenerListaProductos() {

        ArrayList<Producto> productos = new ArrayList<>();
        productos.add(new Producto("Hamburguesa Doble Carne", "•Queso\n •Hamburguesa artesanal(x2)\n •Huevo frito\n •Papas al hilo\n •Pan", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/HAMBURGUESA DOBLE CARNE.jpg"));
        productos.add(new Producto("Club Sandwich", "•Palta\n •Papas fritas\n •Chorizo\n •Pan\n •Queso\n •Pollo desilachado\n •Tomate\n •Huevo frito", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/CLUB SANDWICH.jpg"));
        productos.add(new Producto("Salchi Royal", "•Queso\n •papa frita •Salchicha Nacional\n •Huevo frito\n •Ensalada de lechuga fresca\n •Salsas caceras", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/SALCHI ROYAL.jpg"));
        productos.add(new Producto("Salchi Taypa", "•Queso\n •Chorizo\n •Papas fritas\n Salchicha nacional\n •Huevo frito\n •Ensalada de lechuga fresca\n •Trozos de carne\n •Tocino\n •Salsas caceras", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/SALCHI TAYPA.jpg"));
        productos.add(new Producto("Bisteck a lo pobre", "•Bisteck de carne a la plancha\n •Papas fritas\n •Huevo frito\n •Arroz\n •Platano frito\n •Salsas caceras", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/BISTECK A LO POBRE.jpg"));
        productos.add(new Producto("Mostrito", "•Crujiente y jugosa alita de pollo broaster\n •Papas fritas\n •Huevo frito\n •Arroz chaufa\n •Ensalada de lechuga fresa\n •Salsas caceras", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/MOSTRITO.jpg"));
        productos.add(new Producto("Tallarín Saltado", "•Deliciosos y jugosos tallarines saltados acompañados de trozos de carne o pollo\n •Tomate\n •Cebollita china.", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/TALLARIN SALTADO.jpg"));
        productos.add(new Producto("Alitas BBQ", "•Jugosas y deliciosas piezas de pollo bañadas en salsa BBQ\n •Papas fritas\n •Ensalada de lechuga fresca\n •Salsas caceras", "IMGS/IMGS TAYPA FASTFOOD PROYECTO/ALITAS BBQ.jpg"));
        
        return productos;
    }
}

class Producto {

    private String nombre;
    private String descripcion;
    private String imagen;

    public Producto(String nombre, String descripcion, String imagen) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagen = imagen;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getImagen() {
        return imagen;
    }
}
