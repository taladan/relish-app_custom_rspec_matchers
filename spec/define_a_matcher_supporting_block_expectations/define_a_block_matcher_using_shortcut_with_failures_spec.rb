# define_a_block_matcher_using_shortcut_with_failures_spec.rb

RSpec::Matchers.define :support_blocks_with_errors do
  match(notify_expectation_failures: true) do |actual|
    actual.call
  end

  supports_block_expectations
end

RSpec.describe 'a custom block matcher' do
  specify do
    expect do
      expect(true).to eq false
    end.to support_blocks_with_errors
  end
end
