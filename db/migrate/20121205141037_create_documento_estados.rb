class CreateDocumentoEstados < ActiveRecord::Migration
  def change
    create_table :documento_estados do |t|
      t.integer :documento_id
      t.integer :estado_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
