import formacioneslargas.*

class FormacionRapida inherits FormacionLarga{

	override method estaBienArmada() = super() && (self.velMax() >= 250) && (self.todosLivianos())
	
	override method velMaxLegal() = 400
}