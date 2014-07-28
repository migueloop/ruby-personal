class CreateSnippetsCategorization < ActiveRecord::Migration
  def change
    create_table :snippets_categorizations, :id => false do |t|
      t.integer :snippet_id
      t.integer :snippet_category_id
      t.timestamps
    end
  end
end
