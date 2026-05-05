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

    method estaElElegido() {
      return pasajeros.any({p => p.estaElElegido()})   
    }

    method saltan(unaLista){
        unaLista.foreach({ p =>p.saltar()})
    }

    method chocarFacil() {
      pasajeros.foreach({ p =>p.saltar()})
      pasajeros.clear()
    }

    method chocar() {
      pasajeros.foreach({p =>p.saltar()
                         p.bajarseDeLaNave()    
                            })
                            pasajeros.clear()
    }
    method removerAlgunos(unaLista){
        pasajeros.removeAll(unaLista)
    }


    method estaEquilibrado() {
        return
        self.pasajeroConMayorVitalidad().vitalidad() <=
        self.pasajeroConMenorVitalidad().vitalidad() * 2
      
    }
    method pasajeroConMayorVitalidad(){
        return pasajeros.max({p => p.vitalidad()})
    }
    method pasajeroConMenorVitalidad(){
        return pasajeros.mix({p => p.vitalidad()})
    }

    method acelerar(){
        self.saltan(self.noElegidos())
    }

    method noElegidos(){
      return pasajeros.filter({ p => not p.esElElegido()})
    }

    method vitalidadesDePasajeros(){
        return pasajeros.map ({p => p.vitalidad()})
    }

    method ordernarDeMenorVitalidadAMayor() {
      pasajeros.sortBy({
        p1,p2 => 
        p1.vitalidad () < p2.vitalidad()
      })
    }
}