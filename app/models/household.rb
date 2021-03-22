# frozen_string_literal: true

class Household < ApplicationRecord
  def self.import(file)
    file = file.path if file.is_a?(File)
    CSV.foreach(file, headers: true) do |row|
      Household.create row.to_hash
    end
  end
end
