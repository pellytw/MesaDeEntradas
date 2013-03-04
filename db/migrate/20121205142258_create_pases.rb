class CreatePases < ActiveRecord::Migration
  def change
    create_table :pases do |t|
      t.datetime :fecha
      t.integer :user_id
      t.boolean :recibido

      t.timestamps
    end
  end
end
