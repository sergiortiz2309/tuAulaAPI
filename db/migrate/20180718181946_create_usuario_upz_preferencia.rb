class CreateUsuarioUpzPreferencia < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_upz_preferencia do |t|
      t.references :usuario, foreign_key: true
      t.references :upz, foreign_key: true

      t.timestamps
    end
  end
end
