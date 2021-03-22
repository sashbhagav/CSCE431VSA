require 'rails_helper'

RSpec.describe 'wrong admin login attempt', type: :feature do
  scenario 'success' do
          visit 'login/index'
          click_on 'submit'
          sleep (2)
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

          click_on 'submit'
          sleep (5)
          expect(page).to have_content('VSA Events')
      end
end
