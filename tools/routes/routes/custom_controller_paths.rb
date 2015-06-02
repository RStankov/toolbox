module Routes
  module CustomControllerPaths
    include CustomPaths

    def self.included(base)
      return unless base.respond_to? :helper_method

      instance_methods.each do |helper_method_name|
        base.helper_method helper_method_name.to_s
      end
    end
  end
end
