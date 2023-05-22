# redefine_actual_matcher_spec.rb

RSpec::Matchers.define :have_content do |expected|
  match do |actual|
    @actual = File.read(actual).chomp

    # Order matters on `values_match?`.  `expected` comes first
    # then `actual`
    values_match? expected, @actual
  end

  diffable
end

RSpec.describe 'Compare files' do
  context 'when content is equal' do
    it { expect('data.txt').to have_content 'Data' }
  end

  context 'when files are different' do
    it { expect('data.txt').to have_content "No\nData\nhere" }
  end
end
