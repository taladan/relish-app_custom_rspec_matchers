# diffable_matcher_spec.rb

RSpec::Matchers.define :be_just_like do |expected|
  match do |actual|
    actual == expected
  end

  diffable
end

RSpec.describe "two\nlines" do
  it { is_expected.to be_just_like("three\nlines)") }
end
