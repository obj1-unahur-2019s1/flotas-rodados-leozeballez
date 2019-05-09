
class Rodado {
	var  capacidad = 0
	var peso = 0
	var velocidadMaxima = 0
	var property color
	var property tieneGas = false
	var tanqueAdicional = false
	
	method tanqueAdicional() = return tanqueAdicional
	method tanqueAdicional(valor){
		tanqueAdicional = valor
	}
	
	method capacidad(){
		if(tanqueAdicional){
			return capacidad - 1
		}
		return capacidad
	}
	method capacidad(valor) { capacidad = valor }
	
	method velocidadMaxima(){
		if(tanqueAdicional){
			return velocidadMaxima - 10
		}
		return velocidadMaxima
	}
	method velocidadMaxima(valor) { velocidadMaxima = valor }
	
	method peso(){
		if(tanqueAdicional) {
			return peso + 150
		}
		return peso
	}
	method peso(valor) { peso = valor }
}

object trafic {
	var color = "blanco"
	/*var motor = pulenta
	var interior = comodo*/
	
	var property interior
	var property motor
	
	method capacidad() = return interior.capacidad()
	method velocidadMaxima() = return motor.velocidadMaxima()
	method peso(){ return 4000 + interior.peso() + motor.peso() }
}

/*
//interiores
object comodo {
	var property capacidad = 5
	var property peso = 700
}

object popular {
	var property capacidad = 12
	var property peso = 1000
}

//motores
object pulenta {
	var property peso = 800
	var property velocidadMaxima = 130
}

object bataton {
	var property peso = 500
	var property velocidadMaxima = 80
}*/



//clase de interior
class Interior {
	var property capacidad
	var property peso
}

//clase de motor
class Motor {
	var property peso
	var property velocidadMaxima
}
