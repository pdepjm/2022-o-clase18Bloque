import wollok.game.*
import personajes.*
import movimientos.*

object tomYJerry {

	method iniciar() {
		self.configurarJuego()
		self.agregarPersonajes()
		self.configurarTeclas()
		self.configurarAcciones()
		game.start()
	}

	method configurarJuego() {
		game.title("Tom y Jerry")
		game.width(10)
		game.height(10)
	}

	method agregarPersonajes() {
		game.addVisual(tom)
		game.addVisual(jerry)
		game.addVisual(spike)
		game.addVisual(carpincho)
		game.addVisual(sombrero)
	}

	method configurarTeclas() {
		
	}

	method configurarAcciones() {
		
	}

}

