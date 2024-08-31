import elementos.*
import armas.*

object floki {
    var arma = ballesta
    method encontrar(elemento) {
        if (arma.estaCarga()) {
            elemento.recibirAtaque(arma.potenciaDeAtaque())
            arma.registrarUso()
        }
    }

    method arma() {
        return arma
    }
    
    method arma(unArma) {
        arma = unArma
    }

}

object mario {
    var valorRecoletado = 0
    var ultimoElemento = aurora

    method encontrar(elemento){
         valorRecoletado = valorRecoletado + elemento.otorgarValor()
         elemento.recibirTrabajo()   
         ultimoElemento = elemento
    }

    method esFeliz() {
        return valorRecoletado >= 50 or ultimoElemento.altura() >= 10
    }
}

