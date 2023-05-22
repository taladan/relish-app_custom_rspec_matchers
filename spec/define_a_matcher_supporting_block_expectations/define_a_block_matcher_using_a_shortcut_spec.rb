# define_a_block_matcher_using_a_shortcut_spec.rb

RSpec::Matchers.define :support_blocks do
  match do |actual|
    actual.is_a? Proc
  end

  supports_block_expectations
end

RSpec.describe 'a custom block matcher' do
  specify { expect {}.to support_blocks }
end
