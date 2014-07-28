class CreateSongCategorizations < ActiveRecord::Migration
  def change
    create_table :song_categorizations do |t|
      t.integer :song_id
      t.integer :song_category_id

      t.timestamps
    end
  end
end
