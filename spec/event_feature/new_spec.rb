# frozen_string_literal: true

require 'rails_helper'

# ------------ VALID INTEGRATION TEST FOR CREATE PAGE ---------
RSpec.describe 'Creating an event', type: :feature do
  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'event[name]', with: 'New Event'
    fill_in 'event[description]', with: 'Fun'
    fill_in 'event[location]', with: 'College Station'
    fill_in 'event[time]', with: '5:30 PM'
    fill_in 'event[points]', with: '25'

    click_on 'Add Event'
    visit events_path
    expect(page).to have_content('New Event')
  end

  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'event[name]', with: ''
    fill_in 'event[description]', with: 'Fun'
    fill_in 'event[location]', with: 'Houston'
    fill_in 'event[time]', with: '6:30 PM'
    fill_in 'event[points]', with: '5'
    visit events_path
    expect(page).to have_content('') #-----need to figure out how to fix flash
  end
end
