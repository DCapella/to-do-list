class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :private
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
