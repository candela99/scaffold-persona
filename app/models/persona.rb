class Persona < ApplicationRecord
  def edad
    Date.today.year - self.fecha_de_nacimiento.year
  end

  def self.ordenar(lista_personas)
    lista_personas.sort_by {|persona| persona.fecha_de_nacimiento.month}
  end

  def self.edad_promedio(lista_personas)
    lista_personas.sum {|persona| persona.edad} / self.cantidad_de_personas(lista_personas)
  end

  def self.cantidad_de_personas(lista_personas)
     lista_personas.count {|persona| persona}
  end
end
