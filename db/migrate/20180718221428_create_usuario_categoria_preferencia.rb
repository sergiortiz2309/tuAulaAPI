class CreateUsuarioCategoriaPreferencia < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_categoria_preferencia do |t|
      t.references :categoria, foreign_key: true
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
