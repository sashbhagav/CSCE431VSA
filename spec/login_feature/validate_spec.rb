# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'wrong admin login attempt', type: :feature do
  scenario 'success' do
    visit 'login/index'
    click_on 'Submit'
    sleep(2)
    expect(page).to have_content('Admin Login')
  end
end

RSpec.describe 'correct admin login attempt', type: :feature do
  scenario 'success' do
    visit 'login/index'
    within('form') do
      fill_in 'LoginAttempt_username', with: 'cat'
      fill_in 'LoginAttempt_password', with: 'dog'
    end

    click_on 'Submit'
    sleep(5)
    expect(page).to have_content('VSA Events')

    visit events_path
    click_on 'Logout'
  end
end

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  describe 'Handle 200 members and 15 events' do
    let(:file) { { file: import_households('/files/test1commadelimented2.csv', 'text/csv') } }
    subject { post :create, subscriber_import: file }
  end
end
