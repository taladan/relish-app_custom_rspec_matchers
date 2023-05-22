# matcher_with_separate_should_not_logic_spec.rb
RSpec::Matchers.define :contain do |*expected|
  match do |actual|
    expected.all? { |e| actual.include?(e) }
  end

  match_when_negated do |actual|
    expected.none? { |e| actual.include?(e) }
  end
end

RSpec.describe [1, 2, 3] do
  it { is_expected.to contain(1, 2) }
  it { is_expected.not_to contain(4, 5, 6) }

  # deliberate failures
  it { is_expected.to contain(1, 4) }
  it { is_expected.not_to contain(1, 4) }
end
