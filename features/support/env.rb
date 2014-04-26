require 'cucumber/rails'
require 'cucumber/rspec/doubles'

Capybara.default_selector = :css

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Before "@photos" do
  Photo.stub(album_photos: ["http://image_example.com/image"])
end
