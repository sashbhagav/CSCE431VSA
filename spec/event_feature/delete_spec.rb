require 'rails_helper'  
    
RSpec.describe 'Deleting an event', type: :feature do
    scenario 'success' do
        event = Event.create!(name: 'Test Event', description: 'Test description', location: 'Houston', time: '3:30 PM', points: '10', date: '20 June 1996')
        visit events_path
        expect(page).to have_content('Test Event')
        visit delete_event_path(id: event.id)
        sleep (5)
        click_on 'Delete event'
        expect(page).not_to have_content('Test Event')
    end
end
