# VeeqoApiRuby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'veeqo_api_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install veeqo_api_ruby

## Usage

For full examples of using the API client, please see the [examples folder](examples) and refer to Veeqo [developer documentation](https://developers.veeqo.com/docs/versions/1-0-0-beta).

Example:

```rb
# Configure the client to talk to a given store
Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# Make an API request for a given resource
Veeqo::Company.info
=> #<Veeqo::Company id=1234>
```
### Thread Safety

The `Veeqo.configure` method is NOT thread-safe. This mechanism is designed for applications or CLI's (command-line interfaces) where thread safety is not a concern. If you need to guarantee thread safety, we support this alternative mechanism to make thread-safe API requests:

Rather then setting up a single `connection` for all API requests, you would construct a new connection for each thread. If you can ensure that each of these connections is stored in a thread-safe manner, you can pass the `connection` as you query the resource.

```rb
connection = Veeqo::Connection.build(
  Veeqo::Config.new(
    api_key: ENV['VEEQO_API_KEY']
  )
)
=> #<Faraday::Connection:0x007fbf95068978 ... >>

Veeqo::Company.info(connection: connection)
=> #<Veeqo::Company id=1234>
```

### Nested Attributes

To use nested attibutes you need add root key.

```rb
Veeqo::Customer.create(customer: { email: 'customer@example.com', billing_address_attributes: { first_name: 'Phil', last_name: 'Reynolds' }})
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/veeqo_api_ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

