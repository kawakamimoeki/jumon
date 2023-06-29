# Jumon

The Prompt testing tool for LLM that allows comparing patterns of prompts.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add jumon

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install jumon

## Usage

`prompt.yaml`:

```yaml
config:
  model: gpt-3.5-turbo-16k
  temperature: 0.7
system:
  subject: Your personality is {{personality}}, your purpose is to {{purpose}}
  variables:
    - name: personality
      patterns:
        - extroverted
        - introverted
    - name: purpose
      patterns:
        - help the user
        - rebel against the user
user:
  subject: I want to drink delicious coffee
```

set `OPENAI_API_KEY` variable environment.

```bash
bundle exec jumon prompt.yaml
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jumon. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/jumon/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jumon project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/jumon/blob/main/CODE_OF_CONDUCT.md).
