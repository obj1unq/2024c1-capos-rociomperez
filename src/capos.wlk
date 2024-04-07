import artefactos.*
import castillo.*

object rolando {

	var capacidad = 2
	const property artefactos = #{}
	var hogar = castilloDePiedra
	const property historialDeArtefactos = []

	method agarrar(artefacto) {
		if (self.puedeAgarrar()) {
			artefactos.add(artefacto)
		}
	}

	method puedeAgarrar() {
		return artefactos.size() < capacidad
	}

	method irAlHogar() {
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
	}

	method guardarArtefactosEnHogar() {
		hogar.guardarTodosLosArtefactos(artefactos)
	}

	method liberarEspacio() {
		artefactos.clear()
	}

	method posee(artefacto) {
		return self.todasLasPosesiones().contains(artefacto)
	}

	method todasLasPosesiones() {
		return artefactos.union(hogar.baul())
	}

}

