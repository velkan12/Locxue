class CreateReusuarioproyectos < ActiveRecord::Migration
  def change
    create_table :reusuarioproyectos do |t|
      t.integer :usuario_id
      t.integer :proyecto_id
      t.timestamps
    end
  end
end
