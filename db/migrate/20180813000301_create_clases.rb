class CreateClases < ActiveRecord::Migration[5.2]
  def change
    create_table :clases do |t|
      t.string :ubicacion
      t.date :fechaInicial
      t.date :fechaFinal
      t.references :curso, foreign_key: true
      t.references :upz, foreign_key: true

      t.timestamps
    end
  end
end
