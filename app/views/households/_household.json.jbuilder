# frozen_string_literal: true

json.extract! household, :id, :first, :last, :UIN, :family, :email, :phonenumber, :classification, :major,
              :created_at, :updated_at
json.url household_url(household, format: :json)
