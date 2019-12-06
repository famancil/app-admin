class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :rut
      t.string :correo
      t.string :contraseña
      t.string :sucursal
      t.string :filas
      t.boolean :isAdmin

      t.belongs_to :corporacion, index: true

      t.timestamps
    end
  end
end
