class CreateLekis < ActiveRecord::Migration[5.0]
  def change
    create_table :lekis do |t|
      t.string :nazwa
      t.integer :cena

      t.timestamps
    end
  end
end
