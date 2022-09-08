import wollok.game.*
import movimientos.*

object tom {

	var property position = game.at(2, 2)
	var imagen = "tom.png"

	method image() = imagen

	method perdiste() {
		imagen = "TomPerdio.png"
	}
	
	method cambiarImagen(){
		if (imagen == "tom.png"){
		    imagen = "tomAlt.png"
		} else {
			imagen = "tom.png"
		}
	}
	
	method ganaste (){
		imagen = "TomGano.png"
	}
	
	method hablar (){
		game.say(tom, "Soy Tom! Ayudame a atrapar a Jerry")
	}

}

object jerry {

	var movimiento = aleatorio

	method position() = movimiento.posicion()

	method image() = "jerry.png"

	method chocasteConTom() {
		game.say(jerry, "GANASTE!!")
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

	method image() = "carpincho.png"

	method position() = game.at(1, 6)

}

