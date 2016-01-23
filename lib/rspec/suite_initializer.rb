require "rspec/suite_initializer/version"

RSpec.configure do |c|
  c.add_setting :suite_initializer
  c.suite_initializer = {}
  c.before :all do
    RSpec.configuration.suite_initializer.each do |k, v|
      k = ('@' + k.to_s).to_sym
      instance_variable_set k, v unless instance_variable_defined? k
    end
  end
end

module RSpec
  module SuiteInitializer
    def before_suite(&block)
      RSpec.configure do |c|
        c.before :suite do
          block.call(c.suite_initializer)
        end
      end
    end

    module_function :before_suite
  end
end
