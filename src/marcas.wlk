import personas.*
class Marca {
	var property lupulo
	var property pais
	var property graduacion
	const reglamentaria= 6.4
	

}

class Corona inherits Marca{
		 method calcularGraduacion(){
			 graduacion/=100
		}
	
}
class Guiness inherits Marca{
	 method calcularGraduacion(){
		graduacion= (reglamentaria.min(lupulo*2))/100
	}
}
class Hofbrau inherits Marca{
	  method calcularGraduacion(){
		 graduacion= ((reglamentaria.min(lupulo*2))*1.25)/100 
	}

	
	
}

class Jarra {
	var property litros
	var property marca
	
	
	method contenidoDeAlcohol(){
			
	return marca.graduacion()*self.litros()
		
	}
}
