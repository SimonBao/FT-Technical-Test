require 'rspec'
require 'capybara'
require 'capybara/rspec'
require './app'
require 'database_cleaner'
Capybara.app = App

def create_rating(score)
  visit '/rating/new'
  fill_in :score, with: score
  click_button 'Submit'
end

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
    DatabaseCleaner.clean_with(:truncation)
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
