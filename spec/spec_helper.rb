require "bundler/setup"
require "refactoring_a_test"
require "factory_bot"

RSpec.configure do |config|
  config.before(:suite) do
    FactoryBot.find_definitions
  end

  config.after do
    expect(DB.instance.all).to be_empty, "The test fixture was not properly cleaned up. This could lead to transient tests"
  end
end
