# include_module_spec.rb

module MatcherHelpers
  def is_multiple?(actual, expected)
    actual % expected == 0
  end
end

RSpec::Matchers.define :be_a_multiple_of do |expected|
  include MatcherHelpers
  match { |actual| is_multiple?(actual, expected) }
end

RSpec.describe 9 do
  it { is_expected.to be_a_multiple_of(3) }
  it { is_expected.not_to be_a_multiple_of(4) }

  # Deliberate failures
  it { is_expected.to be_a_multiple_of(2) }
  it { is_expected.not_to be_a_multiple_of(3) }
end
