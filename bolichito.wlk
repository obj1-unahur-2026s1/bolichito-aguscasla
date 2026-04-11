// --- COLORES --- 
object rojo {
    method esColorFuerte() = true
}
object verde {
    method esColorFuerte() = true 
}
object celeste {
    method esColorFuerte() = false 
}
object pardo {
    method esColorFuerte() = false 
}
object naranja {
    method esColorFuerte() = true 
}

// --- MATERIALES ---
object cobre {
    method esColorBrillante() = true
}
object vidrio {
    method esColorBrillante() = true
}
object madera {
    method esColorBrillante() = false
}
object lino {
    method esColorBrillante() = false
}
object cuero {
    method esColorBrillante() = false
}

// --- OBJETOS ---
object remera {
    method color() = rojo
    method material() = lino
    method peso() = 800  
}
object pelota {
    method color() = pardo
    method material() = cuero
    method peso() = 1300  
}
object biblioteca {
    method color() = verde
    method material() = madera
    method peso() = 8000  
}
object mugneco {
    var peso = 200

    method color() = celeste
    method material() = vidrio
    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    }
    method peso() = peso 
}
object placa {
    var color = rojo
    var peso = 1700 

    method material() = cobre
    
    method cambiarColor(nuevoColor) {
        color = nuevoColor
    }

    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    }
    method peso() = peso 
    method color() = color 
}

// --- PERSONAS ---
object rosa {
    method leGusta(objeto) {
        return objeto.peso() <= 2000
    }
}
object estefania {
    method leGusta(objeto) {
        return objeto.color().esColorFuerte()
    }
}
object luisa {
    method leGusta(objeto) {
        return objeto.material().esColorBrillante()
    }
}
object juan {
    method leGusta(objeto) {
        return (not(objeto.color().esColorFuerte())) && (1200 <= objeto.peso() &&  objeto.peso() <= 1800)
    }
}
object arito {
    method color() = celeste
    method material() = madera 
    method peso() = 180
}
object banquito {
    var color = naranja 

    method material() = madera 
    method peso() = 1700

    method cambiarColor(nuevoColor) {
        color = nuevoColor
    }

    method color() = color
}
object cajita {
    var objetoDentro = remera
    method color() = rojo
    method material() = cobre

    method guardarNuevoObjeto(nuevoObjeto) {
        objetoDentro = nuevoObjeto
    }

    method objetoDentro() = objetoDentro
    method peso() = 400 + objetoDentro.peso()
}