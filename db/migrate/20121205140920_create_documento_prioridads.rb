class CreateDocumentoPrioridads < ActiveRecord::Migration
  def change
    create_table :documento_prioridads do |t|
      t.integer :documento_id
      t.integer :prioridad_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
