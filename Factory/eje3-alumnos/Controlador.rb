require "./Administrador"
require "./Impresora"

class Controlador

    attr_accessor :administrador , :impresora

    def initialize(administrador )
        @administrador = administrador

    end

    def capturar_alumno(tipo , datos)
        administrador.agregar_alumno(tipo, datos)
    end

    def imprimir_alumno
        imp = Impresora.instance
        imp.imprimir_alumnos(administrador)
    end


end


