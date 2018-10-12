class AddMoreinfoToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :color, :string
    add_column :projects, :trello, :text
    add_column :projects, :slack, :text
    add_column :projects, :slides, :text
  end
end
