class CreateOficinas < ActiveRecord::Migration
  def change
    create_table :oficinas do |t|
      t.integer :organismo_id
      t.integer :localidad_id
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
