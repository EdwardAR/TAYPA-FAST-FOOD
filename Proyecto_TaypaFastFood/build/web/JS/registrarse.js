const nombresField = document.querySelector("[name=nombres]");
const emailField = document.querySelector("[name=email]");
const telefonoField = document.querySelector("[name=telefono]");
const direccionField = document.querySelector("[name=direccion]");
//const mensajeField = document.querySelector("[name=mensaje]");
//const checkField = document.querySelector("[name=check]");

const setErrors = (message, field, isError = true) => {
  if (isError) {
    field.classList.add("invalid");
    field.nextElementSibling.classList.add("error");
    field.nextElementSibling.innerText = message;
  } else {
    field.classList.remove("invalid");
    field.nextElementSibling.classList.remove("error");
    field.nextElementSibling.innerText = "";
  }
}

const validateEmptyField = (message, e) => {
  const field = e.target;
  const fieldValue = e.target.value;
  if (fieldValue.trim().length === 0) {
    setErrors(message, field);
  } else {
    setErrors("", field, false);
  }
}

const validateEmailFormat = e => {
  const field = e.target;
  const fieldValue = e.target.value;
  const regex = new RegExp(/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/);
  if (fieldValue.trim().length > 5 && !regex.test(fieldValue)) {
    setErrors("Please enter a valid email", field);
  } else {
    setErrors("", field, false);
  }
}

nombresField.addEventListener("blur", (e) => validateEmptyField("Completa tus nombres completos", e));
emailField.addEventListener("blur", (e) => validateEmptyField("Completa con un correo valido", e));
emailField.addEventListener("input", validateEmailFormat);
telefonoField.addEventListener("blur", (e) => validateEmptyField("Añade tu telefono", e));
direccionField.addEventListener("blur", (e) => validateEmptyField("Añade tu dirección", e));
//mensajeField.addEventListener("blur", (e) => validateEmptyField("No te olvides de tus sugerencias", e));
//checkField.addEventListener("blur", (e) => validateEmptyField("No te olvides", e));


