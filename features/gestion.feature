# language: es
# encoding: utf-8

Característica: Gestionar las parejas almacenadas en la lista

Escenario: Verificar el estado de una lista vacia
    Dado una lista vacía
    Entonces la lista tiene 0 elemento almacenado
    Y si busco la clave "clave" no obtengo ningun valor

Escenario: Agregar un elemento a una lista vacia
    Dado una lista vacía
    Cuando agrego un elemento con clave "clave" y valor "valor"
    Entonces la lista tiene 1 elemento almacenado
    Y si busco la clave "clave" obtengo el valor "valor"

Escenario: Buscar un elemento en una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces la lista tiene 3 elementos almacenados
    Y si busco la clave "claveUno" obtengo el valor "valor1"
    Y si busco la clave "claveDos" obtengo el valor "9"
    Y si busco la clave "claveTres" obtengo el valor "tres"

Escenario: Buscar un elemento inexistente en una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces la lista tiene 3 elementos almacenados
    Y si busco la clave "claveUno" obtengo el valor "valor1"
    Y si busco la clave "Noexiste" no obtengo ningun valor

Escenario: Eliminar un elemento existente en una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces la lista tiene 3 elementos almacenados
    Cuando elimino un elemento con clave "claveDos"
    Entonces la lista tiene 2 elementos almacenados

Escenario: Eliminar un elemento que NO existe en una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces la lista tiene 3 elementos almacenados
    Cuando elimino un elemento con clave "NoEsta"
    Entonces la lista tiene 3 elementos almacenados

Escenario: Actualizo el valor de un elemento de la lista de datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces la lista tiene 3 elementos almacenados
    Cuando agrego un elemento con clave "claveDos" y valor "Actualizo"
    Entonces la lista tiene 3 elementos almacenados
    Y si busco la clave "claveDos" obtengo el valor "Actualizo"

Escenario: Agregar un elemento con clave no valida a una lista vacia
    Dado una lista vacía
    Cuando intento agregar un elemento con clave 14 y valor "valor"
    Entonces la lista tiene 0 elemento almacenado

Escenario: Agregar un elemento con clave no valida a una lista con datos
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces la lista tiene 3 elementos almacenados
    Cuando intento agregar un elemento con clave 14 y valor "valor"
    Entonces la lista tiene 3 elemento almacenados

Escenario: Obtengo lista de claves ordenada alfateticamente
    Dado una lista con los siguientes elementos
    | clave  | valor |
    | claveUno | valor1 |
    | claveDos |   9  |
    | claveTres |   tres  |
    Entonces obtengo las claves ordenadas alfabeticamente "claveDos","claveTres","claveUno"