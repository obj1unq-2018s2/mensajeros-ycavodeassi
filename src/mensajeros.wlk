import transporte.*
import destinos.*
/*
Desarrollar y probar un programa que me permita saber si mi paquete puede ser entregado por un mensajero. 
Del paquete conocemos su destino y si está pago o no. Puede entregarse cuando el mensajero puede llegar al destino indicado y además el paquete está pago.
*/
object mensajeria {
	const mensajeros = []
	
	method mensajeros() = mensajeros
	method contratar(alguien) { mensajeros.add(alguien) }
}

object paquete {
	var estaPago = false
	var destino
	
	method pagar() { estaPago = true }
	method estaPago() = estaPago
	method destino(unDestino) { destino = unDestino }
	method puedeSerEnviadoPor(alguien) = destino.puedePasar(alguien)
}

/*
- Roberto: viaja en bicicleta ó camión y debemos contar tanto su peso como el del transporte. La bicicleta pesa 8kg, 
mientras que el camión pesa media tonelada por cada acoplado. Roberto no tiene un mango, gracias que tiene cubiertas, y no puede llamar a nadie.
- Chuck Norris: pesa 900 kg y puede llamar a cualquier persona del universo con sólo llevarse el pulgar al oído y el meñique a la boca.
- Neo: vuela, así que no pesa nada. Y anda con celular, el muy canchero. El tema es que a veces no tiene crédito.
 */
object roberto {
	var property peso
	var medioDeTransporte
	
	method transporte(viajaEn) { medioDeTransporte = viajaEn }
	method peso() = if (medioDeTransporte==null) self.error("*Roberto* no tiene asignado ningun medio de transporte") else medioDeTransporte.peso()
	method puedeLlamar() = false
}

object checkNorris {
	
	method peso() = 900
	method puedeLlamar() = true
}

object neo {
	var tieneCredito
	
	method peso() = avion.peso()
	method tieneCredito(unBooleano) { tieneCredito = unBooleano }
	method puedeLlamar() = if (tieneCredito==null) self.error("*Neo* necesita saber si tiene o no credito") else tieneCredito
	
}