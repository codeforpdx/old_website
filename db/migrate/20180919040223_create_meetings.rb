class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :subtitle
      t.text :location
      t.datetime :eventstart
      t.string :timeofevent
      t.text :url
      t.text :body

      t.timestamps
    end
  end
end
