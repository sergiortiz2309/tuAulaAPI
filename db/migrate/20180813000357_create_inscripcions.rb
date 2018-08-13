class CreateInscripcions < ActiveRecord::Migration[5.2]
  def change
    create_table :inscripcions do |t|
      t.references :clase, foreign_key: true
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
