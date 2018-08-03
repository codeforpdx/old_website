class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :github
      t.text :bio
      
      t.timestamps
    end
  end
end
