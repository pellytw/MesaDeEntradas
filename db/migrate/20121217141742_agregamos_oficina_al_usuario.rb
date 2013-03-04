class AgregamosOficinaAlUsuario < ActiveRecord::Migration
  def up
    add_column :users, :oficina_id, :integer
  end

  def down
    remove_column :users, :oficina_id, :integer
  end
end
