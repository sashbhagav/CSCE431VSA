# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'new', type: :feature do
  scenario 'success event ' do
    visit new_event_path
    expect(page).to have_button('Administrator Login')
  end

  scenario 'success household' do
    visit new_household_path
    expect(page).to have_button('Administrator Login')
  end
end
