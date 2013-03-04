class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.integer :tipo_de_documento_agente_id
      t.integer :documento
      t.string :apellidos
      t.string :nombres
      t.integer :localidad_id

      t.timestamps
    end
  end
end
