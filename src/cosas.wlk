object castillo {
	var nivelDeDefensa = 150
	
	method altura(){
		return 20
	}
	
	method nivelDeDefensa(){
		return nivelDeDefensa
		}
		
	method recibirAtaque(potencia){
		nivelDeDefensa = 0.max(nivelDeDefensa - potencia)
	}
	
	method recibirTrabajo(){
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	
	method valorOtorgado(){
		return nivelDeDefensa * 0.2
	}
	
}

object aurora {
	var estaViva = true
	method altura()=1
	method estaViva()=estaViva
	method recibirAtaque(potencia){
		estaViva = not(potencia >= 10)
	}
	method recibirTrabajo(){

	}
	method valorOtorgado()= 15

	
}

object tipa {
	var altura = 8
	
	method altura(){
		return altura
	}
	
	method recibirAtaque(potencia){
		
	}
	method recibirTrabajo(){
		altura++
	}
	method valorOtorgado(){
		return altura*2
	}
	
	


}


