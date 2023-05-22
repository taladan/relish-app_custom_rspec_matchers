# matcher_with_multiple_args_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :be_the_sum_of do |a, b, c, d|
  match do |sum|
    a + b + c + d == sum
  end
end

RSpec.describe 10 do
  it { is_expected.to be_the_sum_of(1, 2, 3, 4) }
end
