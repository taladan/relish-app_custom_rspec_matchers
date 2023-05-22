# between_spec.rb

RSpec::Matchers.define :be_bigger_than do |first|
  match do |actual|
    (actual > first) && (actual < @second)
  end

  chain :and_smaller_than do |second|
    @second = second
  end
end

RSpec.describe 5 do
  it { is_expected.to be_bigger_than(4).and_smaller_than(6) }
end
