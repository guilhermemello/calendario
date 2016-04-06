class CreateDisciplinasProfessores < ActiveRecord::Migration
  def change
    create_table :disciplinas_Professores do |t|

      t.timestamps null: false
    end
  end
end
