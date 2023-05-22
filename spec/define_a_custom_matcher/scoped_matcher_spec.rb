# scoped_matcher_spec.rb
#
# Note: At the end this uses a simple expectation to raise an error
# However this will throw a warning when running rspec on this file:
# ```
# WARNING: Using the `raise_error` matcher without providing a specific error or message risks false positives, since `raise_error` will match when Ruby raises a `NoMethodError`, `NameError` or `ArgumentError`, potentially allowing the expectation to pass without even executing the method you are intending to call. Actual error raised was #<RSpec::Expectations::ExpectationNotMetError: expected 5 to respond to `just_like?`>. Instead consider providing a specific error class or message. This message can be suppressed by setting: `RSpec::Expectations.configuration.on_potential_false_positives = :nothing`. Called from /home/taladan/repos/personal/rspec_expectations/spec/scoped_matcher_spec.rb:21:in `block (2 levels) in <top (required)>'.
# ```
#
# I have researched, but haven't been able to find how to catch this error correctly.

require 'rspec/expectations'

module MyHelpers
  extend RSpec::Matchers::DSL

  matcher :be_just_like do |expected|
    match { |actual| actual == expected }
  end
end

RSpec.describe 'group with MyHelpers' do
  include MyHelpers
  it 'has access to the defined matcher' do
    expect(5).to be_just_like(5)
  end
end

RSpec.describe 'group without MyHelpers' do
  it 'does not have access to the defined matcher' do
    expect do
      expect(5).to be_just_like(5)
    end.to raise_error
  end
end
