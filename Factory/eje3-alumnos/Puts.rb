require "./Controlador"

adm = Administrador.new("Carlos")
adm2 = Administrador.new("Carlos Gil")
#imp = Impresora.instance


control = Controlador.new(adm )
control.capturar_alumno('becado' , [001 , "Carlos" , "Gil Carrillo"])
control.capturar_alumno('regular' , [002 , "Jorge" , "Magento"])
control.capturar_alumno('traslado' , [003 , "Miguel" , "Gomez"])
control.capturar_alumno('becado' , [004 , "Roberto" , "Fernandez Carrillo"])
control.imprimir_alumno
puts "-------------"
control2 = Controlador.new(adm2 )
control2.capturar_alumno('becado' , [001 , "Carlos" , "Gil Carrillo"])
control2.capturar_alumno('regular' , [002 , "Jorge" , "Magento"])
control2.capturar_alumno('traslado' , [003 , "Miguel" , "Gomez"])
control2.capturar_alumno('becado' , [004 , "Roberto" , "Fernandez Carrillo"])
control2.imprimir_alumno