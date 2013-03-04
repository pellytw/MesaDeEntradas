class Pase < ActiveRecord::Base
  attr_accessible :fecha, :recibido, :user_id
  has_many :pase_documentos
  #Try 'has_many :documentos, :through => :pase_documento, :source => <name>'. Is it one of :pase_id or :documento_id?
  has_many :documentos, :through => :pase_documentos 
  def to_s
    self.fecha.to_s
  end
end
