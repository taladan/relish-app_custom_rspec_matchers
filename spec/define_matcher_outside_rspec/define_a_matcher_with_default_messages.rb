# define_a_matcher_with_default_messages_spec.rb
require 'minitest/autorun'
require 'rspec/expectations/minitest_integration'

# this file is NOT a spec file.  It should be run as:
# `ruby define_a_matcher_with_default_messages.rb`

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
end

class TestMultiples < Minitest::Test
  def test_9_should_be_a_multiple_of_3
    expect(9).to be_a_multiple_of(3)
  end

  # Deliberate failure
  def test_9_should_be_a_multiple_of_4
    expect(9).to be_a_multiple_of(4)
  end
end
