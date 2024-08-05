let dataTable;
let dataTableIsInitialized = false;

const dataTableOptions = {
    //scrollX: "2000px",
    lengthMenu: [5, 10, 15, 20, 100, 200, 500],
    columnDefs: [
        { className: "centered", targets: [0, 1, 2, 3, 4, 5, 6] },
        { orderable: false, targets: [5, 6] },
        { searchable: false, targets: [1] }
        //{ width: "50%", targets: [0] }
    ],
    pageLength: 3,
    destroy: true,
    language: {
        lengthMenu: "Mostrar _MENU_ registros por página",
        zeroRecords: "Ningún usuario encontrado",
        info: "Mostrando de _START_ a _END_ de un total de _TOTAL_ registros",
        infoEmpty: "Ningún usuario encontrado",
        infoFiltered: "(filtrados desde _MAX_ registros totales)",
        search: "Buscar:",
        loadingRecords: "Cargando...",
        paginate: {
            first: "Primero",
            last: "Último",
            next: "Siguiente",
            previous: "Anterior"
        }
    },
};

const initDataTable = async () => {
    if (dataTableIsInitialized) {
        dataTable.destroy();
    }

    //await listUsers();

    cargarData();

    dataTable = $("#datatable_users").DataTable(dataTableOptions);

    dataTableIsInitialized = true;
};

const listUsers = async () => {
    try {
        const response = await fetch("datatable.json");
        const users = await response.json();

        let content = ``;
        users.forEach((user, index) => {
            content += `
                <tr>
                    <td>${index + 1}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>${user.address.city}</td>
                    <td>${user.phone}</td>
                    <td>${user.pedido}</td>
                    <td><i class="fa-solid fa-check" style="color: green;"></i></td>
                    <td>
                        <button class="btn btn-sm btn-primary"><i class="fa-solid fa-pencil"></i></button>
                        <button class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i></button>
                    </td>
                </tr>`;
        });
        tableBody_users.innerHTML = content;
    } catch (ex) {
        alert(ex);
    }
};

function cargarData() {
    let content = `<tr> <td class="centered" colspan="5">No existen registros</td></tr>`;
    const data = JSON.parse(localStorage.getItem("carrito"));
    if (data.length == 0) {
        tableBody_users.innerHTML = content;
        return;
    }
    content = '';
    //[{"imagen":"http://localhost:8080/taypa_fastfood/IMGS/IMGSTienda/img4.jpg","titulo":"Salchi Royal","precio":"S/. 15","id":"3","cantidad":2}]
    data.forEach((item, index) => {
        content += `
                <tr>
                    <td class="centered">${index + 1}</td>
                    <td class="centered">${item.titulo}</td>
                    <td class="centered">S/. ${item.precio}</td>
                    <td class="centered">${item.cantidad}</td>
                    <td class="centered">
                        <button class="btn btn-sm btn-danger" type="button" onClick="removerItem('${item.id}')"><i class="fa-solid fa-trash-can" type="button" ></i></button>
                    </td>
                </tr>`;
    });
    tableBody_users.innerHTML = content;
}

window.addEventListener("load", async () => {
    await initDataTable();
});


function removerItem(id) {
    if (!id) return;
    
    const data = JSON.parse(localStorage.getItem("carrito"));
    
    if (data.length == 0) return;

    const newData = [];
    
    for (let item of data) {
        if (item.id !== id) {
            newData.push(item);
            console.log(newData)
        }
    }
    localStorage.setItem("carrito", JSON.stringify(newData));
    initDataTable();
}



