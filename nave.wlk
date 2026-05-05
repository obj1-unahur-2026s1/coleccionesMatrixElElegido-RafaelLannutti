import pasajeros.*

object nave {
    const pasajeros = [neo,morfeo,triniti] // esto es equivalente a decir new list()
    method subirALaNave(unPasajero) {
      if (pasajeros.contains(unPasajero)){
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
}