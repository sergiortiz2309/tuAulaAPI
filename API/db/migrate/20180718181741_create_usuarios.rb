class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.integer :idUsuario
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :password
      t.date :fechaDeNacimiento
      t.string :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
