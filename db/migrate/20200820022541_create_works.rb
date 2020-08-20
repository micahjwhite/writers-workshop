class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.text :content
      t.integer :user_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
