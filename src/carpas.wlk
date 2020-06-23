import marcas.*
import personas.*

class Carpa {
	var property limite
	var property bandaParaTocar
	var jarras=[]
	var property marca=[]
	var personasEnCarpa=[]
	
	method agregarACarpa(persona){
		personasEnCarpa.add(persona)
	}
	

	method dejaIngresar(persona){
	return personasEnCarpa.count() < self.limite() and not persona.estEbria()
	}
	method leSirva(persona){
		if(personasEnCarpa.contains(persona)){
			//punto 9
		}return "error"
	}
	method ebriosEmpedernidos(){
		return personasEnCarpa.count({cosa=>cosa.jarras().litros()>=1})
	}
	
}
