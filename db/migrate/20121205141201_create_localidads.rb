class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.integer :region_id
      t.string :codigo_postal
      t.string :nombre

      t.timestamps
    end
  end
end
