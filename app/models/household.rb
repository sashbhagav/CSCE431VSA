# frozen_string_literal: true

class Household < ApplicationRecord
  validates :first, :last, :UIN, :family, :email, :phonenumber, :classification, :major,
            presence: true
  validates :UIN, length: { minimum: 9 }
  validates :UIN, length: { maximum: 9 }
  validates :phonenumber, length: { minimum: 10 }
  validates :phonenumber, length: { maximum: 10 }
  validates :classification, length: { minimum: 2 }
  validates :classification, length: { maximum: 2 }
  validates :major, length: { minimum: 4 }
  validates :major, length: { maximum: 4 }
  validates :UIN, uniqueness: true
  validates :email, uniqueness: true
  validates :phonenumber, uniqueness: true
  def self.import(file)
    file = file.path if file.is_a?(File)
    CSV.foreach(file, headers: true) do |row|
      Household.create row.to_hash
    end
  end

  def self.import2(file)
    file = file.path if file.is_a?(File)
    CSV.foreach(file, headers: true) do |row|
      row_hash = row.to_hash
      point = row_hash['points'].to_i
      household = Household.find(row_hash['id'])
      household.update(points: point)
      household.save!
    end
  end
end
