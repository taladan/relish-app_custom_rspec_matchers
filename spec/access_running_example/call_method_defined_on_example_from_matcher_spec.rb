# example_spec.rb

RSpec::Matchers.define :bar do
  match do |_|
    foo == 'foo'
  end
end

RSpec.describe 'something' do
  def foo
    'foo'
  end

  it 'does something' do
    expect('foo').to bar
  end
end
