# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Going to Login page', type: :feature do
  scenario 'success' do
    visit 'member_view/index'
    click_on 'Administrator Login'
    expect(page).to have_content('Username')
  end
end
