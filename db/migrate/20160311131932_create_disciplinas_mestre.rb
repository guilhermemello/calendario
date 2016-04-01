class CreateDisciplinasMestre < ActiveRecord::Migration
  def change
    create_table :disciplinas_mestre do |t|

      t.timestamps null: false
    end
  end
end
