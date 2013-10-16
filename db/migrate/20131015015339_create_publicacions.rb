class CreatePublicacions < ActiveRecord::Migration
  def change
    create_table :publicacions do |t|
      t.string :titulo_publicacion
      t.text :descripcion_publicacion
      t.date :fecha_publicacion
      t.integer :codigo_usuario
      t.integer :codigo_categoria

      t.timestamps
    end
  end
end
