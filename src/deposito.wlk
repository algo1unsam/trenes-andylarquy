import formaciones.*
import vagones.*
import locomotoras.*

class Deposito{
	
	var formaciones = []
	
	var locomotorasSueltas = []
	
	
	method agregarFormacion(form){
		
		formaciones.add(form)
		
	}
	
	
	method quitarForamcion(form){
		
		formaciones.remove(form)
		
	}
	
	
	
	method vagonesMasPesados(){
		
		formaciones.filter{form => form.max{vagon => vagon.pesoMaximo()}}
		
		
	}
	
	
	method conductorExperimentado(){
		
		return formaciones.any{form => form.esCompleja()}
		
	}
	
	method agregarLocomAFormacion(formacion){
		
		
		if(!formacion.puedeMoverse()){
			
			if( locomotorasSueltas.any{locom => locom.arrastreUtil() >= formacion.cuantoEmpujeFalta() } ){
			
			//Aca hay codigo redundante, trate de mejorarlo usando un metodo pero tuve muchos errores y no me salió
			
				formacion.agregarLocomotora(locomotorasSueltas.find{locom => locom.arrastreUtil() >= formacion.cuantoEmpujeFalta() })
				
			
			}
		}
		
	}
	
	
	method agregarLocomSuelta(locom){
		
		locomotorasSueltas.add(locom)
		
	}
	
	method quitarLocomSuelta(locom){
		
		locomotorasSueltas.add(locom)
		
	}
	
}
