class AddGooglemapurlToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :googlemapurl, :text
  end
end
