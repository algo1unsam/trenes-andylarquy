import formaciones.*

class FormacionCorta inherits Formacion{

	method estaBienArmada() = self.puedeMoverse() && !self.esCompleja()
	
	
	override method velMaxLegal() = 60
	
}