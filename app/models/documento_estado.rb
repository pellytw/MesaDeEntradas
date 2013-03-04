class DocumentoEstado < ActiveRecord::Base
  attr_accessible :documento_id, :estado_id, :fecha
end
