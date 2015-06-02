module Routes
  class << self
    include Rails.application.routes.url_helpers
    include Routes::CustomPaths
  end

  include Rails.application.routes.url_helpers
  include Routes::CustomPaths

  def default_url_options
    Rails.application.routes.default_url_options
  end
end
