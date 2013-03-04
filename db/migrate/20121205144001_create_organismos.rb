class CreateOrganismos < ActiveRecord::Migration
  def change
    create_table :organismos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
