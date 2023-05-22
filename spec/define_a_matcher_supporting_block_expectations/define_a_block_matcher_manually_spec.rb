# define_a_block_matcher_manually_spec.rb

RSpec::Matchers.define :support_blocks do
  match do |actual|
    actual.is_a? Proc
  end

  def supports_block_expectations?
    true # or some logic
  end
end

RSpec.describe 'a custom block matcher' do
  specify { expect {}.to support_blocks }
end
