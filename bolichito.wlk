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