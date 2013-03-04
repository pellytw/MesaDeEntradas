class PaseDocumento < ActiveRecord::Base
  attr_accessible :documento_id, :pase_id
  belongs_to :pase
  belongs_to :documento
end
