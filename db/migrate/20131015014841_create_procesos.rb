class CreateProcesos < ActiveRecord::Migration
  def change
    create_table :procesos do |t|
      t.string :nombre_proceso

      t.timestamps
    end
  end
end
