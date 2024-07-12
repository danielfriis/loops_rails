# LoopsRails

LoopsRails is a Rails client for the [Loops](https://loops.so) API.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add loops_rails

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install loops_rails

## Usage

1. Sign up for a [Loops](https://loops.so) account.
2. Create an API key in your account settings.
3. Use the API key to authenticate requests to the API.

```ruby
client = LoopsRails::Client.new(api_key: "your_api_key")

client.test_api_key
client.contacts.create(email: "john@example.com")
client.transactional_emails.send(
  email: "john@example.com",
  transactional_id: "your_transactional_id"
)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO

- [X] Add support for the `/api-key` endpoint
- [X] Add support for the `/contacts` endpoint
- [X] Add support for the `/transactional` endpoint
- [X] Add support for the `/lists` endpoint
- [X] Add support for the `/events` endpoint
- [X] Add support for the `/customFields` endpoint

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/danielfriis/loops_rails.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
