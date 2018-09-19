class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :email
      t.text :location
      t.datetime :starttime
      t.string :duration
      t.text :url
      t.text :body

      t.timestamps
    end
  end
end
