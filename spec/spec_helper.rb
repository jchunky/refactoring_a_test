require "active_support/all"
require "bundler/setup"
require "refactoring_a_test"
require "factory_bot"

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end

  config.after do
    DB.instance.delete_all
  end
end
