# matcher_with_internal_helper_spec.rb
require 'rspec/expectations'

RSpec::Matchers.define :have_same_elements_as do |sample|
  match do |actual|
    similar?(sample, actual)
  end

  def similar?(a, b)
    a.sort == b.sort
  end
end

RSpec.describe 'these two arrays' do
  specify 'should be similar' do
    expect([1, 2, 3]).to have_same_elements_as([2, 3, 1])
  end
end
