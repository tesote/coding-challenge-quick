# frozen_string_literal: true

require_relative '../lib/person_repo'
require_relative '../lib/person'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.order = :random
  Kernel.srand config.seed

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
