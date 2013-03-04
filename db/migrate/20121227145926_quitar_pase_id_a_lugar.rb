class QuitarPaseIdALugar < ActiveRecord::Migration
  def up
    remove_column :lugars, :pase_id
  end

  def down
    add_column :lugars, :pase_id, :integer
  end
end
