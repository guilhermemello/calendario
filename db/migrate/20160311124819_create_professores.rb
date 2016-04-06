class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :matricula
      t.string :celular
      t.string :email
      t.string :foto

      t.timestamps null: false
    end
  end
end
