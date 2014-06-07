RSpec::Matchers.define :render_json do |expected|
  expected = expected.to_json if expected.kind_of? Hash

  match do |response|
    actual = ActiveSupport::JSON.decode(response.body).with_indifferent_access
    match  = ActiveSupport::JSON.decode(expected).with_indifferent_access

    actual.diff(match) == {}
  end

  failure_message do |response|
    "Expected to render JSON: #{expected}\n" +
    "      actually rendered: #{response.body}"
  end
end
