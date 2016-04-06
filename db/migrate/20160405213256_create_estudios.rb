class CreateEstudios < ActiveRecord::Migration
  def change
    create_table :estudios do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps null: false
    end
  end
end
