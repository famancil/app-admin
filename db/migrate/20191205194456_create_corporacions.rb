class CreateCorporacions < ActiveRecord::Migration[5.2]
  def change
    create_table :corporacions do |t|
      t.string :nombre
      t.string :rut
      t.string :contraseña
      t.string :sucursal
      t.string :filas

      t.timestamps
    end
  end
end
