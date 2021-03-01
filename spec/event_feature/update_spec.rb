# frozen_string_literal: true

require 'rails_helper'

# Updating an event
RSpec.describe 'Updating a event', type: :feature do
  scenario 'valid inputs' do
    event = Event.create!(name: 'Party')
    visit edit_event_path(id: event.id)
    fill_in 'event[name]', with: 'New Party'
    click_on 'Update Event'
    visit events_path
    expect(page).to have_content('New Party')
  end
  scenario 'valid inputs' do
    event = Event.create!(name: 'Party')
    visit edit_event_path(id: event.id)
    fill_in 'event[name]', with: ''
    click_on 'Update Event'
    visit events_path
    expect(page).to have_content('')
  end
end
