# matcher_with_failure_message_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end
end

# Fail intentionally to generate expected output
RSpec.describe 9 do
  it { is_expected.to be_a_multiple_of(4) }
end
