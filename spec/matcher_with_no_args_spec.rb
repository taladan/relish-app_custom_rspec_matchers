# matcher_with_no_args_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :have_7_fingers do
  match do |thing|
    thing.fingers.length == 7
  end
end

class Thing
  def fingers
    (1..7).collect { 'finger' }
  end
end

RSpec.describe Thing do
  it { is_expected.to have_7_fingers }
end
