require 'rails_helper'

# ------------ VALID INTEGRATION TEST FOR CREATE PAGE ---------
RSpec.describe 'Creating a household', type: :feature do
  scenario 'valid inputs' do
    visit households_path
    # fill_in 'first', with: 'John'
    # visit households_path
    # expect(page).to have_content('John')
  end

  # scenario 'valid inputs' do
  #   visit new_event_path
  #   fill_in 'event[name]', with: ''
  #   fill_in 'event[description]', with: 'Fun'
  #   visit events_path
  #   expect(page).to have_content('') #-----need to figure out how to fix flash
  # end
end
