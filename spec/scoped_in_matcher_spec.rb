# scoped_in_matcher_spec.rb
require 'rspec/expectations'

RSpec.describe 'group with matcher' do
  matcher :be_just_like do |expected|
    match { |actual| actual == expected }
  end

  it 'has access to the defined matcher' do
    expect(5).to be_just_like(5)
  end

  describe 'nested group' do
    it 'has access to the defined matcher' do
      expect(5).to be_just_like(5)
    end
  end
end

RSpec.describe 'group without matcher' do
  it 'does not have access to the defined matcher' do
    expect do
      expect(5).to be_just_like(5)
    end.to raise_exception
  end
end
