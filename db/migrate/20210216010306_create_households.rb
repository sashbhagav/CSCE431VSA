# frozen_string_literal: true

class CreateHouseholds < ActiveRecord::Migration[6.1]
  def change
    create_table :households do |t|
      t.string :first
      t.string :last
      t.string :UIN
      t.string :family
      t.string :email
      t.string :phonenumber
      t.string :classification
      t.string :major

      t.timestamps
    end
  end
end
