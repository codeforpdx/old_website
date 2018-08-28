class AddOmniauthToTeammates < ActiveRecord::Migration[5.1]
  def change
    add_column :teammates, :provider, :string
    add_column :teammates, :uid, :string
    add_column :teammates, :image, :text
  end
end
