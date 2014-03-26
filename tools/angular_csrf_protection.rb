module AngularCsrfProtection
  extend ActiveSupport::Concern

  included do
    after_action :set_csrf_cookie
  end

  private

  def set_csrf_cookie
    cookies['XSRF-TOKEN'] = form_authenticity_token
  end

  def verified_request?
    super || form_authenticity_token == cookies['XSRF-TOKEN']
  end
end
