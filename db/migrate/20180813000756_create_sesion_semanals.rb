class CreateSesionSemanals < ActiveRecord::Migration[5.2]
  def change
    create_table :sesion_semanals do |t|
      t.time :horaInicial
      t.integer :duracionEnHoras
      t.references :clase, foreign_key: true

      t.timestamps
    end
  end
end
