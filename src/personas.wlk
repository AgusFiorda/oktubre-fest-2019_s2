import marcas.*
import carpas.*
class Personas {
	var property peso
	var jarras=[]
	var property escuchaMusica
	var property nivelDeAguante
	var property pais
	
	method estaEbria(){
		
		return jarras.sum({cosas=>cosas.contenidoDeAlcohol()})*self.peso() > self.nivelDeAguante()
		
	}
	method compro(jarra){
		jarras.add(jarra)
	}

	method totalAlcohol(){
		return jarras.sum({jarra=>jarra.contenidoDeAlcohol()})
	}
	method leGusta(marca){
		if(pais=="belgica"){
			return marca.lupulo()>4
		}
		if(pais=="checo"){
			marca.graduacion()>0.08
		}
		return true
	}
	method quiereEntrar(carpa){
		if(self.pais()=="alemania"){
		if(carpa.personasEnCarpa().count()/2==0){
			return self.leGusta(carpa.marca()) and self.escuchaMusica() ==carpa.bandaParaTocar()
		}
		}
		return self.leGusta(carpa.marca()) and self.escuchaMusica() ==carpa.bandaParaTocar()
			
	}
	
	method puedeEntrar(carpa){
		return self.quiereEntrar(carpa) and carpa.dejaIngresar(self)
	}
	method entrar(carpa){
		if(self.quiereEntrar(carpa) and carpa.dejaIngresar(self)){
			carpa.agregarACarpa(self)
		}return "error"
	}
	method esPatriota(){
		return jarras.count({cosa=>cosa.pais()==self.pais()})
	}
	
}
