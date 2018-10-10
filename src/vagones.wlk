class VagonPasajeros{
	
	const property largo = 10
	const property ancho = 3
	const property banos = 1
	
	
	method cantidadPasajeros(){
	
		if (ancho < 2.5){
			
			return largo * 8
			
		}else{
			
			return largo * 10
			
		}
		
		
	}
	
	method pesoMaximo() = self.cantidadPasajeros() * 80

	method esLiviano() = self.pesoMaximo() < 2500
	
	method cantBanos() = banos
	
		
}




class VagonCarga{
	
	
	var cargaMaxima = 1000
	
	
	method pesoMaximo() = cargaMaxima + 160
	
	
	method cantidadPasajeros() = 0
	
	method cantBanos() = 0
		
	method esLiviano() = self.pesoMaximo() < 2500
}