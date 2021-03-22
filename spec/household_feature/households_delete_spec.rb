require 'rails_helper'

RSpec.describe 'Deleting a household ', type: :feature do
    scenario 'success' do
        Household.create!(first: 'David', last: 'Ortega', UIN: '326039485', family: 'Goose', email: 'davidortega1212@gmail.com', phonenumber: '9565218292', classification: 'U4', major: 'CECN')
        visit households_path
        expect(page).to have_content('Households')
        click_on 'Destroy'
        sleep (5)
        expect(page).to have_content('Delete')
        click_on 'Delete event'
        sleep (5)
        expect(page).not_to have_content('David')
    end
end
