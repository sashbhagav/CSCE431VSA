# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Delete event', type: :feature do
  scenario 'success' do
    event = Event.create!(name: 'Test Event', description: 'Test description', location: 'Houston',
                          time: '3:30 PM', points: '10', date: '20 June 1996', link: 'http://tamu.zoom.us/')
    visit delete_event_path(id: event.id)
    expect(page).to have_button('Administrator Login')
  end
  scenario 'success household' do
    house = Household.create!(first: 'David', last: 'Ortega', UIN: '326039485', family: 'Goose',
                      email: 'davidortega1212@gmail.com', phonenumber: '9565218292', classification: 'U4', major: 'CECN')

    visit delete_household_path(id: house.id)
    expect(page).to have_button('Administrator Login')
  end
end
