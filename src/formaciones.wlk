import vagones.*

class Formacion{
	
	var vagones = []
	var locomotoras = []
	
	
	method agregarVagon(vagon){
	
		vagones.add(vagon)
	
	}
	
	
	method quitarVagon(vagon){
		
		vagones.remove(vagon)
		
	}


	method agregarLocomotora(locom){
		
		locomotoras.add(locom)
		
	}
	
	method quitarLocomotora(locom){
		
		locomotoras.remove(locom)
		
	}
	
	
	method capacidadPasajeros(){
		
		return vagones.sum{vagon => vagon.cantidadPasajeros()}
		
	}
	
	method vagonesLivianos(){
		
		return vagones.count{vagon => vagon.pesoMaximo() < 2500}
		
	}
	
	
	method velMax(){
		
		return locomotoras.min{locom => locom.velMax()}.velMax()
		
	}
	
	
	method esEficiente(){
		
		return locomotoras.all{ locom => ( locom.arrastreUtil() >= (locom.pesoMaximo() * 5) ) }	
		
	}
	
	
	
	method puedeMoverse(){
		
		return locomotoras.sum{locom => locom.arrastreUtil()} >= vagones.sum{vagon => vagon.pesoMaximo()}
		
	}
	
	
	
	method cuantoEmpujeFalta(){
		
		if(self.puedeMoverse()){
			
			return 0
			
		}else{
			
			return vagones.sum{vagon => vagon.pesoMaximo()} - locomotoras.sum{locom => locom.arrastreUtil()}
			
		}
		
	}
	
	
	method esCompleja(){
		
		return ( (vagones.size() + locomotoras.size()) > 20 ) ||(  ( vagones.sum{vagon => vagon.pesoMaximo()} + locomotoras.sum{locom => locom.peso()} ) > 10000  )
		
	}
	
	

	
}