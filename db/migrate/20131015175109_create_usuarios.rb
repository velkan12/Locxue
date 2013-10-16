class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :apellido2
      t.text :perfil
      t.string :correo
      t.string :twitter
      t.string :nickname
      t.string :pass

      t.timestamps
    end
  end
end
