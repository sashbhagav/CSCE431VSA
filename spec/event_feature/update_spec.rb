# frozen_string_literal: true

require 'rails_helper'

# Updating an event
RSpec.describe 'Updating a event', type: :feature do
  scenario 'valid inputs' do
    event = Event.create!(name: 'Test Event', description: 'Test description', location: 'Houston', time: '3:30 PM', points: '10')
    visit edit_event_path(id: event.id)
    fill_in 'event[name]', with: 'New Party'
    fill_in 'event[description]', with: 'Fun'
    fill_in 'event[location]', with: 'College Station'
    fill_in 'event[time]', with: '6:30 PM'
    fill_in 'event[points]', with: '5'
    click_on 'Update Event'
    visit events_path
    expect(page).to have_content('New Party')
  end
  scenario 'valid inputs' do
    event = Event.create!(name: 'Party', description: 'Test description', location: 'Houston', time: '3:30 PM', points: '10')
    visit edit_event_path(id: event.id)
    fill_in 'event[name]', with: ''
    fill_in 'event[description]', with: 'Test'
    fill_in 'event[location]', with: 'College Station'
    fill_in 'event[time]', with: '9:30 AM'
    fill_in 'event[points]', with: '20'
    click_on 'Update Event'
    visit events_path
    expect(page).to have_content('')
  end
end
