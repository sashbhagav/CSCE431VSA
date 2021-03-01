require 'rails_helper'

RSpec.describe 'Edit a household ', type: :feature do
    scenario 'success' do
        Household.create!(first: 'David', last: 'Ortega', UIN: '326039485', family: 'Goose', email: 'davidortega1212@gmail.com', phonenumber: '9565218292', classification: 'U4', major: 'CECN')
        visit households_path
        expect(page).to have_content('David')
        click_on 'Edit'
        sleep (5)
        fill_in 'household[first]', with: 'Goose'
        click_on 'Update Household'
        sleep (5)
        expect(page).to have_content('Goose')
        click_on 'Back'
        sleep (5)
        expect(page).to have_content('Households')
    end
end
