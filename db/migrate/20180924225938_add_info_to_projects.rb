class AddInfoToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :leadcontact, :string
    add_column :projects, :github_url, :text
    add_column :projects, :technical_lead, :string
    add_column :projects, :content_lead, :string
  end
end
