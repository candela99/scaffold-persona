class CreatePersonas < ActiveRecord::Migration[7.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_de_nacimiento
      t.integer :nro_dni

      t.timestamps
    end
  end
end
