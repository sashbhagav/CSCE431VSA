# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :points, presence: true
end
