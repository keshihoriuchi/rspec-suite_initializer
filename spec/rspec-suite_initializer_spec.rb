require 'rspec/suite_initializer'

RSpec::SuiteInitializer.before_suite do |v|
  v[:foo] = 'foo'
end
RSpec::SuiteInitializer.before_suite do |v|
  v[:bar] = 'bar'
end

RSpec.describe RSpec::SuiteInitializer do
  context 'When use variable defined at before_suite' do
    subject { [@foo, @bar] }
    it { is_expected.to eq(%w(foo bar)) }
  end
  context 'When the instance variable is assigned a value on another before hook' do
    before :all do
      @foo = nil
    end
    context 'dummy' do
      subject { @foo }
      it { is_expected.to be_nil }
    end
  end
end
