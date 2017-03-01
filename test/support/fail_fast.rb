module FailFast
  class FailFastException < StandardError; end

  module Reporter
    def record(test)
      super

      raise FailFastException if test.failures.any?
    end
  end

  module Runnable
    def run(_reporter, _options)
      super
    rescue FailFastException
      puts ANSI::Code.red("Aborting after failure")
    end
  end
end

metaklass = class << Minitest::Runnable; self; end
metaklass.prepend(FailFast::Runnable)
