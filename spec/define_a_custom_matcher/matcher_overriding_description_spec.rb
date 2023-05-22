# matcher_overriding_description_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
  description do
    "be multiple of #{expected}"
  end
end

RSpec.describe 9 do
  it { is_expected.to be_a_multiple_of(3) }
end

RSpec.describe 9 do
  it { is_expected.not_to be_a_multiple_of(4) }
end
