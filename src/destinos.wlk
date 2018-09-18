import mensajeros.*

/*
- Puente de Brooklyn: deja pasar a todo lo que pese hasta una tonelada.
- La Matrix: deja entrar a quien pueda hacer una llamada.
*/

object puenteBrooklyn {
	method puedePasar(mensajero) = mensajero.peso() <= 1000  
}

object matrix {
	method puedePasar(mensajero) = mensajero.puedeLlamar()
}
