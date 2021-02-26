require 'factory_girl'
# https://github.com/rails/rails/issues/14664#issuecomment-40183326
require 'active_support'
require 'active_support/core_ext'

FactoryGirl.find_definitions

PROJECT_ROOT = File.expand_path("../..", __FILE__)

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).each do |file|
  require file
end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
