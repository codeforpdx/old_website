class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :text
      t.text :img
      
      t.timestamps
    end
  end
end
