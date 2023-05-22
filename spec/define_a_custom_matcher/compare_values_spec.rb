# compare_values_spec.rb

RSpec::Matchers.define :have_content do |expected|
  match do |actual|
    # The order of arguments is important for values_match?, e.g.
    # especially if your matcher should handle Regexp -objects
    # ( /regex/ ): First comes the `expected` value, second the `actual`
    # one.
    values_match? expected, actual
  end
end

RSpec.describe 'a' do
  it { is_expected.to have_content 'a' }
end

RSpec.describe 'a' do
  it { is_expected.to have_content(/a/) }
end

RSpec.describe 'a' do
  it { is_expected.to have_content a_string_starting_with('a') }
end
