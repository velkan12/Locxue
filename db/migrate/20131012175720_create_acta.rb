class CreateActa < ActiveRecord::Migration
  def change
    create_table :acta do |t|
      t.integer :numero_acta
      t.date :fecha
      t.string :lugar
      t.text :desarrollo
      t.text :participantes
      t.text :cncluciones
      t.text :tareas

      t.timestamps
    end
  end
end
