class VagonPasajeros{
	
	var largo = 10
	var ancho = 3
	
	
	method cantidadPasajeros(){
	
		if (ancho < 2.5){
			
			return largo * 8
			
		}else{
			
			return largo * 10
			
		}
		
		
	}
	
	method pesoMaximo(){
		
		return self.cantidadPasajeros() * 80
		
		
	}
	
	
	
}


class VagonCarga{
	
	var cargaMaxima = 1000
	
	
	method pesoMaximo(){
		
		return cargaMaxima + 160
		
	}
	
	
	method cantidadPasajeros(){
		
		return 0
		
	}
	
	
	
}