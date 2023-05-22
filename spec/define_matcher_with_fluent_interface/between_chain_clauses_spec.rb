# between_chain_clauses_spec.rb

# The default behavior of rspec appears (on my system at least)
# to be to include chain clauses by default.  To see the differences
# in the config values, uncomment the following and comment out the
# code block immediately after

# RSpec.configure do |config|
#   config.expect_with :rspec do |c|
#     c.include_chain_clauses_in_custom_matcher_descriptions = false
#   end
# end

# comment this out if you uncomment the above
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

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
