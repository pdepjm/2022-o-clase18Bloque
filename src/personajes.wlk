import wollok.game.*
import movimientos.*

object tom {

	var property position = game.at(2, 2)
	var imagen = "tom2.png"

	method image() = imagen

	method perdiste() {
		imagen = "TomPerdio.png"
	}
	
	method cambiarImagen(){
		if (imagen == "tom2.png"){
		    imagen = "tomAlt.png"
		} else {
			imagen = "tom2.png"
		}
	}
	
	method ganaste (){
		imagen = "TomGano.png"
	}
	
	method hablar (){
		game.say(self, "Soy Tom! Ayudame a atrapar a Jerry")
	}
	
	method saltar (){
		game.schedule(1000, { self.subir() })
		game.schedule(1500, { self.bajar() })
		//CUIDADO CON LOS TIEMPOS!
	}
	
	method subir(){
		position = self.position().up(1)
	}
	
	method bajar(){
		position = self.position().down(1)
	}

}

object jerry {

	var movimiento = aleatorio

	method position() = movimiento.posicion()

	method image() = "jerry.png"

	method chocasteConTom() {
		game.say(self, "GANASTE!")
		tom.ganaste()
		movimiento = cazado
		game.schedule(3000, { game.stop()})
	}

}

object spike {

	method image() = "spike.png"

	method position() = game.at(7, 5)

	method chocasteConTom() {
//		terminar el juego
		game.say(jerry, "jaja perdiste gil")
		tom.perdiste()
		game.schedule(3000, { game.stop()})
	}

}

object carpincho {

	var property position = game.at(1, 6)

	method image() = "carpincho.png"
	
	method chocasteConTom() {
		3.times({n=>self.moverse()})
	}

	method moverse(){
		position = self.position().down(1)
	}
	
}

object sombrero {

	method position() = tom.position().up(1)

	method image() = "Sombrero.png"

}
