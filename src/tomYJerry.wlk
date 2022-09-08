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
		game.addVisualCharacter(tom)
		game.addVisual(jerry)
		game.addVisual(spike)
		game.addVisual(carpincho)
		game.addVisual(sombrero)
	}

	method configurarTeclas() {
		keyboard.alt().onPressDo({tom.cambiarImagen()})
		keyboard.space().onPressDo({tom.hablar()})
		keyboard.control().onPressDo({tom.saltar()})
	}

	method configurarAcciones() {
		game.onTick(5500,"movimiento de jerry", {jerry.moveteAUnLugarRandom()})
		game.onCollideDo(tom, {chocado => chocado.teChocasteConTom()})
	}

}

