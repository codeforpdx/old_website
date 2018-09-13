class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :email
      t.string :project
      t.string :role

      t.timestamps
    end
  end
end
