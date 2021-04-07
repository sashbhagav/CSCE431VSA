class CreateNewhouses < ActiveRecord::Migration[6.1]
  def change
    create_table :newhouses do |t|
      t.string :first
      t.string :last
      t.string :UIN
      t.string :family
      t.string :email
      t.string :phonenumber
      t.string :classification
      t.string :major
      t.integer :points

      t.timestamps
    end
  end
end
