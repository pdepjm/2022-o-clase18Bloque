import wollok.game.*
import personajes.tom

object aleatorio {

	method nuevaPosicion() {
		// calculo coordenadas aleatorias dentro la pantalla
		const x = 0.randomUpTo(game.width())
		const y = 0.randomUpTo(game.height())
		// cambio a nueva posicion
		return game.at(x, y)
	}

}


