class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :titulo
      t.text :descripcion
      t.text :integrantes
      t.string :etapa

      t.timestamps
    end
  end
end
