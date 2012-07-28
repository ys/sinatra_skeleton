require File.join( File.dirname(__FILE__), '..', 'spec_helper')
describe Person do
  context 'Testing factory' do
    let(:subject) { build(:person) }
    its(:name) { should_not be_empty }
  end
end
