# frozen_string_literal: true

require 'test_helper'

class HouseholdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @household = households(:one)
  end

  test 'should get index' do
    get households_url
    assert_response :success
  end

  test 'should get new' do
    get new_household_url
    assert_response :success
  end

  test 'should create household' do
    assert_difference('Household.count') do
      post households_url,
           params: { household: { UIN: @household.UIN, classification: @household.classification, email: @household.email,
                                  family: @household.family, first: @household.first, last: @household.last, major: @household.major, phonenumber: @household.phonenumber } }
    end

    assert_redirected_to household_url(Household.last)
  end

  test 'should show household' do
    get household_url(@household)
    assert_response :success
  end

  test 'should get edit' do
    get edit_household_url(@household)
    assert_response :success
  end

  test 'should update household' do
    patch household_url(@household),
          params: { household: { UIN: @household.UIN, classification: @household.classification, email: @household.email,
                                 family: @household.family, first: @household.first, last: @household.last, major: @household.major, phonenumber: @household.phonenumber } }
    assert_redirected_to household_url(@household)
  end

  test 'should destroy household' do
    assert_difference('Household.count', -1) do
      delete household_url(@household)
    end

    assert_redirected_to households_url
  end
end
