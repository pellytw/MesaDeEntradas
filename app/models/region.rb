class Region < ActiveRecord::Base
  attr_accessible :nombre
  has_many :localidad
  
  def to_s
    self.nombre
  end
end
