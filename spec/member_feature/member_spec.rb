# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'visit member view', type: :feature do
  scenario 'success' do
    visit events_path
    expect(page).to have_button('Administrator Login')
  end
end
