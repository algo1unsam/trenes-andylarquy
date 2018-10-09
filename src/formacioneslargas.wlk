import formaciones.*

class FormacionLarga inherits Formacion{
	
	const origen = null
	const destino = null
	
	method estaBienArmada() = self.tieneSuficBanos()
	
	method tieneSuficBanos() = self.cantDeBanos() >= self.totalPasajeros()/50
		
	
	method totalPasajeros() = vagones.sum{vagon => vagon.cantidadPasajeros()}
		
	method cantDeBanos() = vagones.sum{vagon => vagon.cantBanos()}
		
	method viajeCiudadesGrandes() = origen.esGrande() && destino.esGrande()
	
	override method velMaxLegal() = if(self.viajeCiudadesGrandes()) 200 else 150

}