# error_handling_spec.rb

class CustomClass; end

RSpec::Matchers.define :is_lower_than do |expected|
  match do |actual|
    actual < expected
  rescue ArgumentError
    false
  end
end

RSpec.describe 1 do
  it { is_expected.to is_lower_than 2 }
end

RSpec.describe 1 do
  it { is_expected.not_to is_lower_than 'a' }
end

RSpec.describe CustomClass do
  it { expect { is_expected.no_to is_lower_than 2 }.to raise_error NoMethodError }
end
