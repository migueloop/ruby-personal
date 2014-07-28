class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :project_id
      t.integer :tag_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
