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
		imagen = "tomAlt.png"
	}
	
	method ganaste (){
		imagen = "TomGano.png"
	}
	
	method hablar (){
		game.say(self, "Soy Tom! Ayudame a atrapar a Jerry")
	}
	
	method saltar (){
		position = position.up(1)
		position = position.down(1)
		//CUIDADO CON LOS TIEMPOS!
	}

}

object jerry {

	var property position = game.at(8, 8)

	method nuevaPosition(posicion) {
		position = posicion
	} 

	method image() = "jerry.png"

	method chocasteConTom() {
		game.say(self, "GANASTE!")
		tom.ganaste()
		self.nuevaPosition(game.at(1,1))
		game.stop()
	}

}

object spike {

	method image() = "spike.png"

	method position() = game.at(7, 5)

	method chocasteConTom() {
//		terminar el juego
		game.say(jerry, "jaja perdiste gil")
		tom.perdiste()
		jerry.nuevaPosition(game.at(1,1))
		game.stop()
	}

}

object carpincho {

	var property position = game.at(1, 6)

	method image() = "carpincho.png"
	
	method chocasteConTom() {
		position = position.down(1)
		position = position.down(1)
		position = position.down(1)
	}

}

object sombrero {

	method position() = tom.position().up(1)

	method image() = "Sombrero.png"

}
