class Documento < ActiveRecord::Base
  attr_accessible :descripcion, :fecha, :fecha_de_vencimiento, :motivo_id, :nombre, :numero, :numero_de_entrada, :numero_de_oblea, :numero_de_salida, :tipo_de_documento_id, :tramite_preferencial
  belongs_to :tipo_de_documento
  belongs_to :motivo
  has_many :pase_documentos
  has_many :pases, :through => :pase_documentos
  has_many :lugar, :dependent => :destroy
  accepts_nested_attributes_for :lugar  
  
  def to_s
    self.descripcion + " " + self.nombre + " " + self.created_at.to_s
  end 
end
