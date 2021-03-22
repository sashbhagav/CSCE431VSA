require 'rails_helper'

# Updating an event


RSpec.configure do |config|
  config.include ActionDispatch::TestProcess

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  describe "POST /subscriber_imports" do
    let(:file) { { :file => Household.import('/files/test1commadelimented.csv', 'text/csv') } }
  end
end
