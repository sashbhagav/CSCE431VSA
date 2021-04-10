require 'rails_helper'

RSpec.describe 'Deleting an event', type: :feature do
    scenario 'success' do


        visit 'login/index'
#         sleep (5)
        within('form') do
          fill_in 'LoginAttempt_username', with: 'cat'
          fill_in 'LoginAttempt_password', with: 'dog'
        end

        click_on 'Submit'
#         sleep (5)
        expect(page).to have_content('VSA Events')


        event = Event.create!(name: 'Test Event', description: 'Test description', location: 'Houston', time: '3:30 PM', points: '10', date: '20 June 1996', link: 'http://tamu.zoom.us/')
        visit events_path
        page.driver.browser.manage.window.maximize
#         expect(page).to have_content('Test Event')
        visit delete_event_path(id: event.id)
#         sleep (5)
        click_on 'Delete event'
        expect(page).not_to have_content('Test Event')
        
        visit events_path
        click_on 'Logout'

    end
end
