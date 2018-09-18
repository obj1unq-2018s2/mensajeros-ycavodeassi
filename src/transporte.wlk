
object bicicleta {
	method peso() = 8
}

object camion {
	const pesoPorAcoplado = 500 
	var property cantAcoplados = 0 
	
	method peso() = pesoPorAcoplado * cantAcoplados
}

object avion {
	method peso() = 0
}

