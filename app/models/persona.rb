class Persona < ActiveRecord::Base
  attr_accessible :apellidos, :documento, :localidad_id, :nombres, :tipo_de_documento_agente_id
  
  has_many :lugar
  
  def to_s
    self.apellidos + ", " + self.nombres 
  end
  
end
