
class Rodado {
	var  capacidad = 0
	var peso = 0
	var velocidadMaxima = 0
	var property color
	var property tieneGas = false
	var tanqueAdicional = false
	
	method tanqueAdicional() = return tanqueAdicional
	method tanqueAdicional(valor){
		tieneGas = valor
		tanqueAdicional = valor
		if(tanqueAdicional){
			capacidad--
			velocidadMaxima -= 10
			peso += 150
		}
	}
	
	method capacidad() = return capacidad
	method capacidad(valor){
		capacidad = valor
		if(tanqueAdicional){
			capacidad--
		}
	}
	
	method velocidadMaxima() = return velocidadMaxima
	method velocidadMaxima(valor){
		velocidadMaxima = valor
		if(tanqueAdicional){
			velocidadMaxima-=10
		}
	}
	
	method peso() = return peso
	method peso(valor){
		peso = valor
		if(tanqueAdicional){
			peso+=150
		}
	}
}
