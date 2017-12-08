RSpec.describe Veeqo::Middleware::Auth do
  it 'should set the correct headers' do
    app = double
    options = {
      api_key: 'api_key'
    }
    @api = Veeqo::Middleware::Auth.new(app, options)
    expect(app).to receive(:call).with(
      request_headers: { 'x-api-key' => 'api_key', 'x-api-request' => 'true' }
    )
    @api.call(request_headers: {})
  end
end
