class CreatePaseDocumentos < ActiveRecord::Migration
  def change
    create_table :pase_documentos do |t|
      t.integer :pase_id
      t.integer :documento_id

      t.timestamps
    end
  end
end
