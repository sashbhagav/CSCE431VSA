class Newhouse < ApplicationRecord
  self.table_name = "households"
  validates :first, :last, :UIN, :family, :email, :phonenumber, :classification, :major, :presence => true
  validates :UIN, :length => { :minimum => 9}
  validates :UIN, :length => { :maximum => 9}
  validates :phonenumber, :length => { :minimum => 10}
  validates :phonenumber, :length => { :maximum => 10}
  validates :classification, :length => { :minimum => 2}
  validates :classification, :length => { :maximum => 2}
  validates :major, :length => { :minimum => 4}
  validates :major, :length => { :maximum => 4}
  validates :UIN, :uniqueness => true
  validates :email, :uniqueness => true
  validates :phonenumber, :uniqueness => true
end
