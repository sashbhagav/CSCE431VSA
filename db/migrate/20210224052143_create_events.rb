
# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :time
      t.string :points
      t.timestamp :date

      t.float :event_id

      t.timestamps
    end
  end
end
