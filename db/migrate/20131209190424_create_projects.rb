class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :shortDesc
      t.text :longDesc
      t.string :imgName

      t.timestamps
    end
  end
end
