class AddPositionToTeammates < ActiveRecord::Migration[5.1]
  def change
    add_column :teammates, :position, :string
  end
end
