class CreateLugars < ActiveRecord::Migration
  def change
    create_table :lugars do |t|
      t.integer :documento_id
      t.datetime :fecha_desde
      t.datetime :fecha_hasta
      t.integer :pase_id
      t.integer :persona_id
      t.integer :oficina_id
      t.integer :user_id
      t.boolean :efectivo

      t.timestamps
    end
  end
end
