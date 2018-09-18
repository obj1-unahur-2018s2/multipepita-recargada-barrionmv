import comidas.*

class Golondrina {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return self.energia() < 50 }  
	method estaFeliz() { return self.energia().between(500, 1000) }
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)
		} 
	}
}	

object prueba {
	
	var juliana= new Golondrina()
	var enriqueta = new Golondrina()
	var melina = new Golondrina()
	var tatiana = new Golondrina()
	
	method energiaJuliana(){
		return juliana.energia()
	}
	
	method comerJuliana(cosa, gramos){
		juliana.comer(cosa, gramos)
	}
	
	method energiaEnriqueta(){
		return enriqueta.energia()
	}
	
	method comerEnriqueta(cosa, gramos){
		enriqueta.comer(cosa, gramos)
	}
	method energiaMelina(){
		return melina.energia()
	}
	
	method comerMelina(cosa, gramos){
		melina.comer(cosa, gramos)
	}
	
	method energiaTatiana(){
		return tatiana.energia()
	}
	
	method comerTatiana(cosa, gramos){
		tatiana.comer(cosa, gramos)
	}
	
	method volarJuliana(kms){
		return juliana.volar(kms)
	}
	method volarMelina(kms){
		return melina.volar(kms)
	}
	
	method volarTatiana(kms){
		return tatiana.volar(kms)
	}
}		

