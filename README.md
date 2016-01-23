# RSpec::SuiteInitializer

Initialize instance variables for RSpec on before :suite hook.

## Installation

```ruby
gem 'rspec-suite_initializer'
```

## Usage

```ruby
require 'rspec/suite_initializer'

RSpec::SuiteInitializer.before_suite do |v|
  v[:foo] = 'foo'
  v[:bar] = 'bar'
end

RSpec.describe RSpec::SuiteInitializer do
  context 'When use variable defined at before_suite' do
    subject { [@foo, @bar] }
    it { is_expected.to eq(['foo', 'bar']) }
  end
end
```

When `require rspec/suite_initializer`, defines `RSpec.configuration.suite_initializer`.
