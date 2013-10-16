class CreatePermisos < ActiveRecord::Migration
  def change
    create_table :permisos do |t|
      t.integer :codigo_permiso

      t.timestamps
    end
  end
end
