# frozen_string_literal: true

require 'application_system_test_case'

class HouseholdsTest < ApplicationSystemTestCase
  setup do
    @household = households(:one)
  end

  test 'visiting the index' do
    visit households_url
    assert_selector 'h1', text: 'Households'
  end

  test 'creating a Household' do
    visit households_url
    click_on 'New Household'

    fill_in 'Uin', with: @household.UIN
    fill_in 'Classification', with: @household.classification
    fill_in 'Email', with: @household.email
    fill_in 'Family', with: @household.family
    fill_in 'First', with: @household.first
    fill_in 'Last', with: @household.last
    fill_in 'Major', with: @household.major
    fill_in 'Phonenumber', with: @household.phonenumber
    click_on 'Create Household'

    assert_text 'Household was successfully created'
    click_on 'Back'
  end

  test 'updating a Household' do
    visit households_url
    click_on 'Edit', match: :first

    fill_in 'Uin', with: @household.UIN
    fill_in 'Classification', with: @household.classification
    fill_in 'Email', with: @household.email
    fill_in 'Family', with: @household.family
    fill_in 'First', with: @household.first
    fill_in 'Last', with: @household.last
    fill_in 'Major', with: @household.major
    fill_in 'Phonenumber', with: @household.phonenumber
    click_on 'Update Household'

    assert_text 'Household was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Household' do
    visit households_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Household was successfully destroyed'
  end
end
