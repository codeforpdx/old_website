class AddFieldsToVolunteers < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :idea, :text
    add_column :volunteers, :details, :text
  end
end
