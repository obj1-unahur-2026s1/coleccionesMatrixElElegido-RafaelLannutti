import pasajeros.*

object nave {
    const property pasajeros = [neo,morfeo,triniti] // esto es equivalente a decir new list()
    method subirALaNave(unPasajero) {
      if (self.estaEnLaNave(unPasajero)){
        self.error("El Pasajero ya esta en la nave")
      } 
      pasajeros.add(unPasajero)
    }

    method bajarseDeLaNave(unPasajero) {
        if ( !self.estaEnLaNave(unPasajero)){
            self.error("El pasajero no esta en la Nave")
        }pasajeros.remove(unPasajero)      
    }

    method estaEnLaNave(unPasajero) {
      return pasajeros.contains(unPasajero)
    }

    method cantidadDePasajeros(){
        return pasajeros.size()
    }

    method pasajeroConMayorVitalidad(){
        return pasajeros.max({p => p.vitalidad()})
    }
    method estaElElegido() {
      return pasajeros.any({p => p.estaElElegido()})   
    }

    method chocar() {
      pasajeros.foreach({p =>p.saltar()
                             
                            })
                            pasajeros.clear()
    }
    method removerAlgunos(unaLista){
        pasajeros.removeAll(unaLista)
    }    
}