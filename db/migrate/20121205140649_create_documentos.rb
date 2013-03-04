class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.integer :tipo_de_documento_id
      t.date :fecha
      t.integer :numero
      t.string :nombre
      t.integer :motivo_id
      t.string :numero_de_oblea
      t.string :numero_de_entrada
      t.string :numero_de_salida
      t.date :fecha_de_vencimiento
      t.boolean :tramite_preferencial
      t.text :descripcion

      t.timestamps
    end
  end
end
