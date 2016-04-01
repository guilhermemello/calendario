class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :nome
      t.string :endereco

      t.timestamps null: false
    end
  end
end
