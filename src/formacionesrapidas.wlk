import formaciones.*

class FormacionRapida inherits Formacion{

	method estaBienArmada() = (self.velMax() >= 250) && (self.vagonesLivianos())
	
	override method velMaxLegal() = 400
}