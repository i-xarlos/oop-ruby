require "./ProfesorTCompleto"
require "./ProfesorTParcial"

class Administrador

    attr_accessor :profesores

    def initialize

        @profesores = Array.new

    end

    def agregar_profesor(profesor)


        profesores.push(profesor)


    end


    def imprimir_planilla
        for profesor in profesores

            puts "-------------------------------"
            puts 'Nombre: ' + profesor.nombre
            puts 'DNI: ' + profesor.dni.to_s
            puts 'sueldo: ' + profesor.sueldo.to_s

        end
    end

     def mayor_sueldo
        max = 0
        for profesor in profesores
            if profesor.sueldo > max
                max = profesor.sueldo
                nombre = profesor.nombre
                sueldo = profesor.sueldo.to_s
            end
        end

         puts "-----------Mayor sueldo-------------"
         puts 'Nombre: ' + nombre
         puts 'Profesor: ' + sueldo
    end

    def buscar_dni(dni)
        puts "\n====== para el dni #{dni} ========="
        for profesor in profesores
            if profesor.dni == dni

                resp = 'El dni ya está registrados a nombre de ' + profesor.nombre


            else
                resp =  'No se ha encontrado ningún registro'
            end

        end

        puts resp

    end
end



p1 = ProfesorTCompleto.new('Carlos Gil' , 985845585 , 0.05 , 10 , 25)
p2 = ProfesorTCompleto.new('Jorge Gomez' , 123456789 , 0.05 , 20 , 23)
p3 = ProfesorTParcial.new('Mario Guerra' , 565465646 , 0.05 , 1500)
p4 = ProfesorTParcial.new('Roberto García' , 333465646 , 0.08 , 3500)
p5 = ProfesorTCompleto.new('Gino Calmet' , 54656789 , 0.05 , 21 , 43)

adm = Administrador.new
adm.agregar_profesor(p1)
adm.agregar_profesor(p2)
adm.agregar_profesor(p3)
adm.agregar_profesor(p4)
adm.agregar_profesor(p5)

adm.imprimir_planilla
adm.mayor_sueldo
adm.buscar_dni(54656789)
adm.buscar_dni(985888)


