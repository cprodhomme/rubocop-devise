# Rubocop::Devise

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-devise', require: false, github: 'cprodhomme/rubocop-devise'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rubocop-devise

## Usage

You need to tell RuboCop to load the RSpec extension. There are three
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```yaml
require: rubocop-devise
```

Alternatively, use the following array notation when specifying multiple extensions.

```yaml
require:
  - rubocop-other-extension
  - rubocop-devise
```

Now you can run `rubocop` and it will automatically load the RuboCop RSpec
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-devise
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-devise'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rubocop-devise.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
