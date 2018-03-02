# I18nTasks

Various Rake tasks for generating templates of local files for Rails applications. See [Available Rake tasks](#available-rake-tasks) for a complete list.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'i18n_tasks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install i18n_tasks

## Available Rake tasks

You can always list all Rake tasks by installing the gem and running `rake -T` in your console.

### `rake i18n_tasks:create_activerecord_locales`

Creates locale files for all ActiveRecord models and attributes as described in the [Rails Guides](http://guides.rubyonrails.org/i18n.html#translations-for-active-record-models) and creates a `template.yml` file in your locales folder. If you do not need some of the entries, just delete them.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/code-fabrik/i18n_tasks. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the I18nTasks project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/code-fabrik/i18n_tasks/blob/master/CODE_OF_CONDUCT.md).
