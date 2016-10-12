class CreateKardashians < ActiveRecord::Migration[5.0]
  def change
    create_table :kardashians do |t|
      t.string :name
      t.text :quote
      t.string :photo

      t.timestamps
    end
  end
end

