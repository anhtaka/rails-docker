class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :board, foreign_key: true
      t.string :name, nLl: false
      t.text :comment, nLl: false

      t.timestamps
    end
  end
end
