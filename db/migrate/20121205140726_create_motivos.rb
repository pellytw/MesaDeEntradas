class CreateMotivos < ActiveRecord::Migration
  def change
    create_table :motivos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
