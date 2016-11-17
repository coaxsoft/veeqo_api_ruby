RSpec.describe Veeqo::Middleware::HttpException do
  let(:env) do
    Hashie::Mash.new(status: status,
                     body: body,
                     response_headers: {})
  end
  let(:status) { 200 }
  let(:body) { 'Valid' }

  before do
    @e = Veeqo::Middleware::HttpException.new
  end

  it 'should check for an error on all responses' do
    expect(@e).to receive(:throw_http_exception!).with(200, env)
    @e.on_complete env
  end

  context 'when valid response' do
    it 'should return its argument if no errors' do
      expect(@e.on_complete(env)).to eq env
    end
  end

  context 'when invalid response' do
    let(:status) { 404 }
    let(:body) { 'Error' }

    it 'should throw an exception' do
      expect { @e.on_complete env }.to raise_exception(Veeqo::NotFound)
    end
  end
end
