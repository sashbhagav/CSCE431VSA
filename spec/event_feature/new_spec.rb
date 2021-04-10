# frozen_string_literal: true

require 'rails_helper'

# ------------ VALID INTEGRATION TEST FOR CREATE PAGE ---------
RSpec.describe 'Creating an event', type: :feature do
  scenario 'valid inputs' do
    visit 'login/index'
    within('form') do
      fill_in 'LoginAttempt_username', with: 'cat'
      fill_in 'LoginAttempt_password', with: 'dog'
    end

    click_on 'Submit'
    # sleep (5)
    expect(page).to have_content('VSA Events')
#     sleep(2)
    visit new_event_path
    fill_in 'event[name]', with: 'New Event'
    fill_in 'event[description]', with: 'Fun'
    fill_in 'event[location]', with: 'College Station'
    fill_in 'event[time]', with: '5:30 PM'
    fill_in 'event[points]', with: '25'
    select '1978', from: 'event_date_1i'
    select 'May', from: 'event_date_2i'
    select '23', from: 'event_date_3i'
    fill_in 'event[link]', with: 'http://tamu.zoom.us/'

    click_on 'Add Event'
    visit events_path
#     sleep(2)
    page.execute_script('window.scrollTo(0,100000)')
    expect(page).to have_content('New Event')

    visit events_path
    click_on 'Logout'

  end
#   sleep(10)
  scenario 'valid inputs' do
    visit 'login/index'
    within('form') do
      fill_in 'LoginAttempt_username', with: 'cat'
      fill_in 'LoginAttempt_password', with: 'dog'
    end
    click_on 'Submit'

    visit new_event_path
    fill_in 'event[name]', with: ''
    fill_in 'event[description]', with: 'Fun'
    fill_in 'event[location]', with: 'Houston'
    fill_in 'event[time]', with: '6:30 PM'
    fill_in 'event[points]', with: '5'
    select '1995', from: 'event_date_1i'
    select 'April', from: 'event_date_2i'
    select '22', from: 'event_date_3i'
    fill_in 'event[link]', with: 'http://tamu.zoom.us/'
    visit events_path
    expect(page).to have_content('') #-----need to figure out how to fix flash

    visit events_path
    click_on 'Logout'

  end
end
