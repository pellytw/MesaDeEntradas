class Motivo < ActiveRecord::Base
  attr_accessible :nombre
  has_many :documento
  
  def to_s
    self.nombre
  end
end
