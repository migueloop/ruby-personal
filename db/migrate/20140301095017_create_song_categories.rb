class CreateSongCategories < ActiveRecord::Migration
  def change
    create_table :song_categories do |t|
      t.string :name
      t.column :song_category_id, :integer 
      t.column :song_id, :integer
      t.timestamps
    end
  end
end
