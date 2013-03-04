class CreateTipoDeDocumentos < ActiveRecord::Migration
  def change
    create_table :tipo_de_documentos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
