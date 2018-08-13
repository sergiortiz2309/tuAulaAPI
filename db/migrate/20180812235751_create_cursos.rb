class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.integer :costo
      t.boolean :certificado
      t.references :categorium, foreign_key: true
      t.references :modalidad, foreign_key: true

      t.timestamps
    end
  end
end
