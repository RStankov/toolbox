module SpecSupport
  class FakeErrors
    def initialize
      @errors = {}
    end

    def add(name, message, _ = nil)
      @errors[name] ||= []
      @errors[name] << message
    end

    def empty?
      @errors.empty?
    end

    def any?
      @errors.any?
    end

    def [](name)
      @errors[name] || []
    end
  end
end
