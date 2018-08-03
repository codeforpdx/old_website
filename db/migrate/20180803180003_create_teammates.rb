class CreateTeammates < ActiveRecord::Migration[5.1]
  def change
    create_table :teammates do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :github
      t.text :bio
      t.text :img
      
      t.timestamps
    end
  end
end
