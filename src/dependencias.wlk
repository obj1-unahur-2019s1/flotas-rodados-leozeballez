import vehiculos.*

//clase de dependencia
class Dependencia {
	var flota = []
	var property empleados
	
	method agregarAFlota(rodado) { flota.add(rodado) }
	method quitarDeFlota(rodado) { flota.remove(rodado) }
	method pesoTotalFlota() { return flota.sum { f => f.peso() } }
	method estaBienEquipada() { return flota.size()>=3 && flota.all{ f => f.velocidadMaxima() >=100 } }
	method capacidadTotalEnColor(color) { return flota.map(color).sum{ f => f.capacidad() } } // FALTA RESOLVER
	method colorDelRodadoMasRapido() { return flota.max { f => f.velocidadMaxima() }.color() }
	method capacidadFaltante() { return empleados - flota.sum { f => f.capacidad() } }
	method esGrande() { return empleados >= 40 && flota.size()>=5 }
	
	
}