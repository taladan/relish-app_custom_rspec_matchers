# alias_spec.rb

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
end

RSpec::Matchers.alias_matcher :be_n_of, :be_a_multiple_of

RSpec.describe 9 do
  it { is_expected.to be_n_of(3) }
end
