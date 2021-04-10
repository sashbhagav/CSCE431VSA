require 'rails_helper'

RSpec.describe 'Deleting a household ', type: :feature do
    scenario 'success' do
      visit 'login/index'
      sleep (1)
      within('form') do
        fill_in 'LoginAttempt_username', with: 'cat'
        fill_in 'LoginAttempt_password', with: 'dog'
      end
      click_on 'Submit'

        Household.create!(first: 'David', last: 'Ortega', UIN: '326039485', family: 'Goose', email: 'davidortega1212@gmail.com', phonenumber: '9565218292', classification: 'U4', major: 'CECN')
        visit households_path
        expect(page).to have_content('Households')
        click_on 'Destroy'
        sleep (5)
        expect(page).to have_content('Delete')
        click_on 'Delete event'
        sleep (5)
        expect(page).not_to have_content('David')


        visit events_path
        click_on 'Logout'
    end
    scenario 'creating new household' do
      visit 'login/index'
      sleep (1)
      within('form') do
        fill_in 'LoginAttempt_username', with: 'cat'
        fill_in 'LoginAttempt_password', with: 'dog'
      end
      click_on 'Submit'

        visit households_path
        # expect(page).to have_content('David')
        click_on 'New Household'
        sleep (5)
        fill_in 'household[first]', with: 'Goose'
        fill_in 'household[last]', with: 'loose'
        fill_in 'household[UIN]', with: '325687296'
        fill_in 'household[family]', with: 'pond'
        fill_in 'household[email]', with: 'Goose@gmail.com'
        fill_in 'household[phonenumber]', with: '9657483278'
        fill_in 'household[classification]', with: 'U4'
        fill_in 'household[major]', with: 'CECN'
        click_on 'Create Household'
        sleep (5)
        expect(page).to have_content('Goose')
        click_on 'Back'
        sleep (5)
        expect(page).to have_content('Goose')

        click_on 'New Household'
        sleep (5)
        fill_in 'household[first]', with: 'David'
        fill_in 'household[last]', with: 'Ortega'
        fill_in 'household[UIN]', with: '325687296'
        fill_in 'household[family]', with: 'pond'
        fill_in 'household[email]', with: 'Goose@gmail.com'
        fill_in 'household[phonenumber]', with: '9657483278'
        fill_in 'household[classification]', with: 'U4'
        fill_in 'household[major]', with: 'CECN'
        click_on 'Create Household'
        sleep (5)
        expect(page).to have_content('errors')
        click_on 'Back'
        sleep (5)

        visit events_path
        click_on 'Logout'

    end
    scenario 'edit' do

      visit 'login/index'
      sleep (1)
      within('form') do
        fill_in 'LoginAttempt_username', with: 'cat'
        fill_in 'LoginAttempt_password', with: 'dog'
      end
      click_on 'Submit'
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

        click_on 'Edit'
        sleep (5)
        fill_in 'household[UIN]', with: '123456'
        click_on 'Update Household'
        sleep (5)
        expect(page).to have_content('error')
        click_on 'Back'
        sleep (5)

        visit events_path
        click_on 'Logout'

    end
end
