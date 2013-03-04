class Lugar < ActiveRecord::Base
  attr_accessible :documento_id, :efectivo, :fecha_desde, :fecha_hasta, :oficina_id, :persona_id, :user_id
  
  belongs_to :oficina
  belongs_to :user
  belongs_to :persona
  belongs_to :documento
  
end
