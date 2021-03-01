require 'rails_helper'  
    
RSpec.describe 'Going to Login page', type: :feature do
    scenario 'success' do
        visit events_path
        click_on 'Administrator Login'
        sleep (5)
        expect(page).to have_content('username')
    end
end