class RemoveGenreFromWorks < ActiveRecord::Migration[6.0]
  def change
    remove_column :works, :genre, :string
  end
end
