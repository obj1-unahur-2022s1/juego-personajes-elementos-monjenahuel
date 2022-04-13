import cosas.*
import armas.*

object luisa {
	var jugadorActivo = null
	
	method jugadorActivo(unJugador){
		jugadorActivo = unJugador
		
	}
	
	method jugadorActivo()= jugadorActivo
	
}


object floki {
	var arma = ballesta
	
	method encontrar(elemento){
		if(arma.estaCargada()){
		elemento.recibirAtaque(arma.nivelDePotencia())
		arma.usar()
		}
		
	}
	
	method cambiarArma(unArma){
		arma = unArma
	}



}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado = null
	
	
	method valorRecolectado()= valorRecolectado

	
	method encontrar(elemento){
		ultimoElementoEncontrado = elemento
		valorRecolectado += elemento.valorOtorgado()
		elemento.recibirTrabajo()
	}
	
	method estaFeliz(){
		return 	valorRecolectado >= 50 or 
				ultimoElementoEncontrado.altura() >= 10
	}

}