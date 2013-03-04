class Oficina < ActiveRecord::Base
  attr_accessible :descripcion, :localidad_id, :nombre, :organismo_id
  
  has_many :user
  has_many :lugar
  
   belongs_to :organismo
  belongs_to :localidad
  
  def to_s
    self.nombre
  end
  
end
