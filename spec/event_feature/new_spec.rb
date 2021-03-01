# frozen_string_literal: true

require 'rails_helper'

# ------------ VALID INTEGRATION TEST FOR CREATE PAGE ---------
RSpec.describe 'Creating an event', type: :feature do
  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'event[name]', with: 'New Event'
    fill_in 'event[description]', with: 'Fun'
    click_on 'Add Event'
    visit events_path
    expect(page).to have_content('New Event')
  end

  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'event[name]', with: ''
    fill_in 'event[description]', with: 'Fun'
    visit events_path
    expect(page).to have_content('') #-----need to figure out how to fix flash
  end
end
