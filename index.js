const fs = require("fs");
const parser = require("./gramatica");

fs.readFile("./entrada.txt", (err, data) => {
    if(err) throw err;
    console.log("Entrada:");
    console.log(data.toString())
    console.log("Códgio de 3 direcciones:")
    parser.parse(data.toString());

})