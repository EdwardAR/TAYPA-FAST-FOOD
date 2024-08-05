window.onload = function() {
    document.getElementById("enviar").onclick = function() {
      console.clear();
      var telef = new RegExp("^(\\+51|0051|51)?[6789]\\d{8}$");
      var valortelef = document.getElementById("phone").value;
      if (telef.test(valortelef)) {
        console.log("valor correcto");
      } else {
        console.log("INTRODUCE OTRO VALOR. EJ: 999999999");
      }
   }
};


