//Variables
const carrito = document.getElementById("carrito");
listaPedidos = document.getElementById("lista-pedidos");
botonesAgregar = document.getElementsByClassName("agregar-carrito");
contededorCarrito = document.querySelector('.buy-card .lista_pedidos');
// vaciarCarritoBtn = document.querySelector('#vaciar_carrito');
const verCarrito = document.querySelector("#ver_carrito");

let articulosCarrito = []; //array vacio

registrarEventsListeners()

function registrarEventsListeners() {
    //Cuando se de click a "agregar al carrito de compras"
    //listaPedidos.addEventListener('click', agregarPedido);

    for (var i = 0; i < botonesAgregar.length; i++) {
        var button = botonesAgregar[i];
        button.addEventListener('click', agregarPedido);
    }

    //Eliminar pedido 1x1 del carrito
    carrito.addEventListener('click', eliminarCurso);

    //Muestra los pedidos del carrito
    document.addEventListener("DOMContentLoaded", () => {
        articulosCarrito = JSON.parse(localStorage.getItem("carrito")) || [];

        carritoHTML()

    })

    //Vaciar el carrito
    // vaciarCarritoBtn.addEventListener('click', e => {
    //     articulosCarrito = [];
    //     limpiarHTML()
    // });

    verCarrito.addEventListener("click", event => {
        redirectDatatable();
    });
}
function agregarPedido(e) {
    var button = e.target;
    var item = button.parentElement;
    //if (e.target.classList.contains("agregar-carrito")){
    //    const pedidoSeleccionado = e.target.parentElement.parentElement;
    /*console.log(pedidoSeleccionado); → para saber la clase padre*/
    leerInfo(item)
    //}      
}
//Elimina pedido carrito
function eliminarCurso(e) {
    if (e.target.classList.contains("borrar-curso")) {
        const pedidoId = e.target.getAttribute('data-id');

        //Eliminar del arreglo los articulosCarrito por el data-id
        articulosCarrito = articulosCarrito.filter(pedido => pedido.id !== pedidoId)

        carritoHTML()
    }
}

//Leer el contenido del HTML, click extrae info pedidos
function leerInfo(pedido) {
    let precio = pedido.querySelector('h3').textContent.replace('S/. ','');
    console.log(parseFloat(precio));
    //Crear un objeto conteniendo el pedido actual
    let infoPedido = {
        imagen: pedido.querySelector('img').src,
        titulo: pedido.querySelector('h1').textContent,
        precio: parseFloat(precio),
        id: pedido.querySelector('button').getAttribute('data-id'),
        cantidad: 1,

    }
    console.log('llegas aqui');
    infoPedido.preciototal = infoPedido.cantidad * infoPedido.precio;
    //Revisa si elemento repite en el carrito
    const existe = articulosCarrito.some(pedido => pedido.id === infoPedido.id)

    console.log("articulosCarrito =>" + JSON.stringify(articulosCarrito));

    if (existe) {
        //Actualizar la cantidad (sumar la cantidad)
        articulosCarrito.map(pedido => {
            if (pedido.id === infoPedido.id) {
                pedido.cantidad++;
                pedido.preciototal = pedido.cantidad*pedido.precio;
                return pedido;
            } else {
                return pedido;
            }
        });
        [...articulosCarrito, infoPedido]
    } else {
        // Agregamos elementos al carrito
        articulosCarrito = [...articulosCarrito, infoPedido]
        //console.log()
    }

    carritoHTML()
}
//Muestra info en el carrito HTML
function carritoHTML() {
    limpiarHTML()
    //Recorre el carrito
    articulosCarrito.forEach(pedido => {
        const fila = document.createElement('div');
        fila.innerHTML = `
            <img src="${pedido.imagen}"></img>
            <p>${pedido.titulo}</p>
            <p>${pedido.precio}</p>
            <p>${pedido.cantidad}</p>
            <p><span class="borrar-curso" data-id="${pedido.id}">X</span></p>
        `;

        contededorCarrito.appendChild(fila)
    });

    //Sincronizar con LocalStorage (Refresh de la funcion carritoHTML)
    sincronizarStorage()
}

function sincronizarStorage() {
    localStorage.setItem("carrito", JSON.stringify(articulosCarrito))
}

//Elimina pedidos duplicados
function limpiarHTML() {
    while (contededorCarrito.firstChild) {
        contededorCarrito.removeChild(contededorCarrito.firstChild)
    }
    sincronizarStorage()
}

function redirectDatatable() {
    let url = location.href.replace("tienda", "dataTable");
    location.href = url;
}

