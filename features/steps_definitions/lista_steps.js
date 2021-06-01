    /**
 *  - En una lista vacía hay cero elementos.
 *  - Cuando se agrega 1 elemento a una lista vacía hay un elemento.
 *  - En una lista vacía no se encuentra ninguna clave.
 *  - Cuando se agrega un elemento a una lista vacía se puede recuperar el valor a partir de la clave.
 * 
 *  - Cuando se agrega 1 elemento a una lista que ya tiene N elementos hay N+1 elementos.
 *  - Cuando se agrega una clave que ya está en la lista se actualiza el valor correspondiente a esa clave.
 *  - Cuando se agrega 1 elemento a una lista con N elementos se puede recuperar el valor a partir de la clave.
 * 
 *  - En una lista con N elementos se puede conocer el valor de N.
 *  - En una lista con N elementos se puede recuperar una lista ordenada de las claves almacenadas en la lista.
 * 
 *  - Cuando se agrega 1 elemento la clave puede contener solamente cadenas de texto. En esto se incluyen
 * las claves vacias.
 * 
 *  - En una lista de N elementos se puede borrar 1 elemento indicado por su clave.
 *  - En una lista de N elementos se intenta borrar 1 elemento que no existe.
  */

const { Before, Given, When, Then } = require('@cucumber/cucumber')
const expect = require("chai").expect;
const Lista = require("../../src/lista.js");

let contexto = {};

Given('una lista vacía', function () {
    contexto.lista = new Lista();
});

Given('una lista con los siguientes elementos', function (vector) {
    vector = vector.rawTable;
    contexto.lista = new Lista();
    for (var indice = 1; indice < vector.length; indice++) {
        contexto.lista.add(vector[indice][0],vector[indice][1]);
    }
});

When('agrego un elemento con clave {string} y valor {string}',function (clave,valor) {
    contexto.lista.add(clave,valor);
});

When('intento agregar un elemento con clave {int} y valor {string}',function (clave,valor) {
    contexto.lista.add(clave,valor);
});

When('elimino un elemento con clave {string}',function (clave) {
    contexto.lista.delete(clave);
});

Then('obtengo las claves ordenadas alfabeticamente {string},{string},{string}',function (a,b,c) {
    expect(contexto.lista.claves()).to.be.eql([a,b,c]);
});

Then('la lista tiene {int} elemento(s) almacenado(s)', function (int) {
    expect(contexto.lista.count()).to.be.equal(int);
});

Then('si busco la clave {string} no obtengo ningun valor', function (clave) {
    expect(contexto.lista.find(clave)).to.be.NaN;
});

Then('si busco la clave {string} obtengo el valor {string}', function (clave,valor) {
    expect(contexto.lista.find(clave)).to.be.equal(valor);
});