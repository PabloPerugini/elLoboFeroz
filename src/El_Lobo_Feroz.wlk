object elLoboFeroz {
    var peso = 10

    method estaSaludable() {
       
        return(peso.between(20, 150))
      
    }

    method comer(cantidad) {

        peso = (cantidad * 0.1) + peso
      
    }
    
     method comerUnaPersona(persona) {

        peso = (persona.pesoActual()) + peso
      
    }

    method correr() {

        peso = peso - 1
      
    }

    method sufrirUnaCrisis() {
        peso = 10
      
    }
    
    method peso() {
    	return(peso)
    }
    
    method soplarUna(casa){
    	peso = casa.resistencia() - peso 
    }

}


object caperucitaRoja {
    var peso = 60
    var cantidadDeManzanasEnLaCanasta = 6
    
   method quitarManzanas(cantidad){
   	if (cantidadDeManzanasEnLaCanasta <= cantidad){
   		cantidadDeManzanasEnLaCanasta = cantidadDeManzanasEnLaCanasta - cantidad
   		peso = peso - (cantidad * 0.2)
   		}
	}
	
	method agregarManzanas(cantidad){
		 cantidadDeManzanasEnLaCanasta = cantidadDeManzanasEnLaCanasta + cantidad
		 peso = peso + (cantidad * 0.2)
	}
    
     method peso() {
    	return(peso)
    }
  
}

object abuela {
    var peso = 50
    
     method peso() {
    	return(peso)
    }
  
}

object cazador {
    var peso = 80

    method rescatarDelLobo() {
        elLoboFeroz.sufrirUnaCrisis()
      
    }
    
     method peso() {
    	return(peso)
    }
    }

/////////////////////////////////////////////////Parte 2 //////////////////////////////////////////////


object chanchito {
  var peso = 40

  method escaparA (aLacasaDe, cantDeChan){
    aLacasaDe.agregarChanchito(cantDeChan)

  }
  
  method peso(){
  	return(peso)
  }
}   
    
object casaDePaja {
  var resistencia = 0
  var cantidadDeChanchitos = 0

  method agregarChanchito(cant){
		cantidadDeChanchitos = cantidadDeChanchitos + cant
    resistencia = resistencia + (cantidadDeChanchitos * chanchito.peso())
	}

  method quitarChanchito(cant){
		cantidadDeChanchitos = cantidadDeChanchitos + cant
    resistencia = resistencia + (cantidadDeChanchitos * chanchito.peso())
	}

  method resistencia(){
    return(resistencia)
	}
}

object casaDeMadera {
  var resistencia = 5
  var cantidadDeChanchitos = 0

 method agregarChanchito(cant){
 	cantidadDeChanchitos = cantidadDeChanchitos + cant
    resistencia = resistencia + (cantidadDeChanchitos * chanchito.peso())
	}

  method quitarChanchito(cant){
  	cantidadDeChanchitos = cantidadDeChanchitos + cant
    resistencia = resistencia + (cantidadDeChanchitos * chanchito.peso())
	}

  method resistencia(){
    return(resistencia)
	}
}

object casaDeLadrillos {
  var cantidadDeLadrillos = 100
  var resistencia = cantidadDeLadrillos * 2
  var cantidadDeChanchitos = 0
  

  method agregarChanchito(cant){
  	cantidadDeChanchitos = cantidadDeChanchitos + cant
    resistencia = resistencia + (cantidadDeChanchitos * chanchito.peso())
	}

  method quitarChanchito(cant){
  	cantidadDeChanchitos = cantidadDeChanchitos + cant
    resistencia = resistencia + (cantidadDeChanchitos * chanchito.peso())
	}

  method resistencia(){
    return(resistencia)
	}

  method agregarLadrillos(cant){
  	cantidadDeLadrillos = cantidadDeLadrillos + cant
	}
  
  method quitarLadrillos(cant){
    if(cant <= cantidadDeLadrillos){
      cantidadDeLadrillos = cantidadDeLadrillos - cant

    }
		
	}
  
}
  
    
    
    
    