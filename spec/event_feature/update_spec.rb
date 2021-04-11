# frozen_string_literal: true

require 'rails_helper'

# Updating an event
RSpec.describe 'Updating a event', type: :feature do
  scenario 'valid inputs' do
    visit 'login/index'
    within('form') do
      fill_in 'LoginAttempt_username', with: 'cat'
      fill_in 'LoginAttempt_password', with: 'dog'
    end

    click_on 'Submit'
    # sleep(5)
    expect(page).to have_content('VSA Events')

    event = Event.create!(name: 'Test Event', description: 'Test description', location: 'Houston', time: '3:30 PM',
                          points: '10', date: '13 March 2000', link: 'tamu.zoom.us')
    visit edit_event_path(id: event.id)
    fill_in 'event[name]', with: 'New Party'
    fill_in 'event[description]', with: 'Fun'
    fill_in 'event[location]', with: 'College Station'
    fill_in 'event[time]', with: '6:30 PM'
    fill_in 'event[points]', with: '5'
    select '1998', from: 'event_date_1i'
    select 'April', from: 'event_date_2i'
    select '5', from: 'event_date_3i'
    click_on 'Update Event'
    #     visit events_path
    expect(page).to have_content('New Party')

    visit events_path
    click_on 'Logout'
  end
  scenario 'valid inputs' do
    visit 'login/index'
    within('form') do
      fill_in 'LoginAttempt_username', with: 'cat'
      fill_in 'LoginAttempt_password', with: 'dog'
    end

    click_on 'Submit'
    # sleep(5)
    expect(page).to have_content('VSA Events')

    event = Event.create!(name: 'Party', description: 'Test description', location: 'Houston', time: '3:30 PM',
                          points: '10', date: '15 May 1997', link: 'tamu.zoom.us')
    visit edit_event_path(id: event.id)
    fill_in 'event[name]', with: ''
    fill_in 'event[description]', with: 'Test'
    fill_in 'event[location]', with: 'College Station'
    fill_in 'event[time]', with: '9:30 AM'
    fill_in 'event[points]', with: '20'
    select '1999', from: 'event_date_1i'
    select 'June', from: 'event_date_2i'
    select '10', from: 'event_date_3i'
    click_on 'Update Event'
    #     visit events_path
    expect(page).to have_content('')

    visit events_path
    click_on 'Logout'
  end
end
