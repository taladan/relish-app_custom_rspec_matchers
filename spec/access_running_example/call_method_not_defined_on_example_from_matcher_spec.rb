# call_method_not_defined_on_example_from_matcher_spec.rb
#
# This should result in the output containing:
# "1 example, 1 failure"
# "undefined.*method"
# containing "RSpec::Matchers::DSL::Matcher"
# should NOT contain "ExampleGroup"

RSpec::Matchers.define :bar do
  match do |_|
    foo == 'foo'
  end
end

RSpec.describe 'something' do
  it 'does something' do
    expect('foo').to bar
  end
end
