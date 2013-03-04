class CreateTipoDeDocumentoAgentes < ActiveRecord::Migration
  def change
    create_table :tipo_de_documento_agentes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
