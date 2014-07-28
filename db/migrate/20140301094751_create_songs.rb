class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :url
      t.integer :visits
      t.integer :added_by

      t.timestamps
    end
  end
end
