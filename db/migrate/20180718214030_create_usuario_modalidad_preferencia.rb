class CreateUsuarioModalidadPreferencia < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_modalidad_preferencia do |t|
      t.references :modalidad, foreign_key: true
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
