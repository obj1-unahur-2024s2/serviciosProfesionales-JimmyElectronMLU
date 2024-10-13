import universidad.*
class Profesional {
  var property tipoProfesional 
  const property universidad
  method honorariosXhora() = tipoProfesional.honorarios() 
  method provincias() = tipoProfesional.provincias()
}   


object vinculado {
  const property provincias = #{}

  method honorarios(universidad) {
    return universidad.honorariosRecomendadosPorHora()
  }
  method provincia(universidad) {
    provincias.add(universidad.provincia())
  }

}

object asociadoLitoral {
  const property provincias = #{"Entre Rios", "Santa Fe", "Corrientes"}
  method honorarios() = 3000
}

object libre {
  const property provincias = #{}

  method provincia(listaProv) {
    provincias.addAll(listaProv)
  } 
  method honorarios(propios, universad) {
    return propios + universad.honorariosRecomendadosPorHora()
  }
}