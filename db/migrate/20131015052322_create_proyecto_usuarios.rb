class CreateProyectoUsuarios < ActiveRecord::Migration
  def change
    create_table :proyecto_usuarios do |t|
      t.integer :usuario_id
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
