# matcher_with_failure_for_message_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
  failure_message_when_negated do |actual|
    "expected that #{actual} would not be a multiple of #{expected}"
  end
end

# fail intentionally to generate expected output
RSpec.describe 9 do
  it { is_expected.not_to be_a_multiple_of(3) }
end
