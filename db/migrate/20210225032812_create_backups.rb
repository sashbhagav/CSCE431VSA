# frozen_string_literal: true

class CreateBackups < ActiveRecord::Migration[6.1]
  def change
    create_table :backups do |t|
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
