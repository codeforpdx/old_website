class AddDescriptionToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :proposal, :text
    add_column :projects, :problem, :text
    add_column :projects, :goal, :text
    add_column :projects, :scope, :text
  end
end
