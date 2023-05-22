# define_method_spec.rb

RSpec::Matchers.define :be_a_multiple_of do |expected|
  define_method :is_multiple? do |actual|
    actual % expected == 0
  end
  match { |actual| is_multiple?(actual) }
end

RSpec.describe 9 do
  it { is_expected.to be_a_multiple_of(3) }
  it { is_expected.not_to be_a_multiple_of(4) }

  # deliberate failures
  it { is_expected.to be_a_multiple_of(2) }
  it { is_expected.not_to be_a_multiple_of(3) }
end
