class Organismo < ActiveRecord::Base
  attr_accessible :nombre
  has_many :oficina
  
  def to_s
    self.nombre
  end
  
end
