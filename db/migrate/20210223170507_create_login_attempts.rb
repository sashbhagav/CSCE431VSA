# frozen_string_literal: true

class CreateLoginAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :login_attempts do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
