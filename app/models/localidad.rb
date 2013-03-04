class Localidad < ActiveRecord::Base
  attr_accessible :codigo_postal, :nombre, :region_id
  belongs_to :region
  has_many :oficina
  
  def to_s
    self.nombre
  end
  
end
