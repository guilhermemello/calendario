class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.integer :disciplina_id
      t.integer :professor_id
      t.integer :estudio_id
      t.date :data
      t.time :hora_inicial
      t.time :hora_final

      t.timestamps null: false
    end
  end
end
