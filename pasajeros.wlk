import nave.*


object neo {    
 var energia = 100
 
 method esElElegido() {
   return  true
 }
 method saltar(){
    energia = energia / 2
 }
 method vitalidad(){
    return energia / 10
 }
 method subirseALaNave() {
   nave.subirALaNave(self)
 }

 method bajarseDeLaNave() {
   nave.bajarseDeLaNave(self)
 }

}


object morfeo {
    var vitalidad = 8
    var estaCansado = false
  method esElElegido (){
    return false
  }
  method saltar(){
     vitalidad = 0.max(vitalidad - 1 )
     estaCansado = !estaCansado 
  }
  method vitalidad() {
    return vitalidad
  }

 method subirseALaNave() {
   nave.subirALaNave(self)
 }

 method bajarseDeLaNave() {
   nave.bajarseDeLaNave(self)
 }
}

object triniti {

  method vitalidad() {
    return 0
  }
  method esElElegido() {
    return false
  }
  method saltar(){ }

 method subirseALaNave() {
   nave.subirALaNave(self)
 }
 method bajarseDeLaNave() {
   nave.bajarseDeLaNave(self)
 }

}