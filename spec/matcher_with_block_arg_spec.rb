# matcher_with_block_arg_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :be_lazily_equal_to do
  match do |obj|
    obj == block_arg.call
  end

  description { "be lazily equal to #{block_arg.call}" }
end

RSpec.describe 10 do
  it { is_expected.to be_lazily_equal_to { 10 } }
end
