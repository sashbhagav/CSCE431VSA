# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  describe 'POST /subscriber_imports' do
    let(:file) { { file: import_households('/files/test1commadelimented.csv', 'text/csv') } }
    subject { post :create, subscriber_import: file }
  end
end
