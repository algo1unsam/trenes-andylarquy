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
	
	
	method capacidadPasajeros() = vagones.sum{vagon => vagon.cantidadPasajeros()}
	
	method vagonesLivianos() = vagones.count{vagon => vagon.pesoMaximo() < 2500}
	
	
	
	method esEficiente() = locomotoras.all{ locom => ( locom.arrastreUtil() >= (locom.peso() * 5) ) }	
	
	
	
	method puedeMoverse() = locomotoras.sum{locom => locom.arrastreUtil()} >= vagones.sum{vagon => vagon.pesoMaximo()}
	
	
	
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
	
	
	method velMaxLocom() = locomotoras.min{locom => locom.velMax()}.velMax()
		
	
	
	method velMax() = self.velMaxLocom().min(self.velMaxLegal())
		
		
	method velMaxLegal()
	
	

	
}