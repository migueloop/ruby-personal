class CreateSnippetCategories < ActiveRecord::Migration
  def change
    create_table :snippet_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
