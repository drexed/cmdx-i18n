<div align="center">
  <img src="./src/cmdx-light-logo.png#gh-light-mode-only" width="200" alt="CMDx Logo">
  <img src="./src/cmdx-dark-logo.png#gh-dark-mode-only" width="200" alt="CMDx Logo">

  ---

  I18n localization files for the CMDx framework.

  [Changelog](./CHANGELOG.md) · [Report Bug](https://github.com/drexed/cmdx-i18n/issues) · [Request Feature](https://github.com/drexed/cmdx-i18n/issues)

  <img alt="Version" src="https://img.shields.io/gem/v/cmdx-i18n">
  <img alt="Build" src="https://github.com/drexed/cmdx-i18n/actions/workflows/ci.yml/badge.svg">
  <img alt="License" src="https://img.shields.io/github/license/drexed/cmdx-i18n">
</div>

# CMDx::I18n

Centralization of locales for [CMDx](https://github.com/drexed/cmdx).

> [!NOTE]
> The contents of this gem have been integrated in the [CMDx](https://github.com/drexed/cmdx) itself and is meant for backwards compatibility between versions `1.5.0` and `1.6.2`. This gem will only receive bug and security patches.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cmdx-i18n'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cmdx-i18n

## Configuration

If the `I18n` gem is installed in a Rails app, `cmdx-i18n` locales are automatically loaded and are managed through the `I18n.available_locales` option.

## Local Version

Execute the following command to copy any locale to the Rails applications `config/locales` directory:

```bash
rails generate cmdx:i18n:locale [LOCALE]

# Eg: generate french locale
rails generate cmdx:i18n:locale fr
```

## Locales

- af - Afrikaans
- ar - Arabic
- az - Azerbaijani
- be - Belarusian
- bg - Bulgarian
- bn - Bengali
- bs - Bosnian
- ca - Catalan
- cnr - Montenegrin
- cs - Czech
- cy - Welsh
- da - Danish
- de - German
- dz - Dzongkha
- el - Greek
- en - English
- eo - Esperanto
- es - Spanish
- et - Estonian
- eu - Basque
- fa - Persian
- fi - Finnish
- fr - French
- fy - Western Frisian
- gd - Scottish Gaelic
- gl - Galician
- he - Hebrew
- hi - Hindi
- hr - Croatian
- hu - Hungarian
- hy - Armenian
- id - Indonesian
- is - Icelandic
- it - Italian
- ja - Japanese
- ka - Georgian
- kk - Kazakh
- km - Khmer
- kn - Kannada
- ko - Korean
- lb - Luxembourgish
- lo - Lao
- lt - Lithuanian
- lv - Latvian
- mg - Malagasy
- mk - Macedonian
- ml - Malayalam
- mn - Mongolian
- mr-IN - Marathi (India)
- ms - Malay
- nb - Norwegian Bokmål
- ne - Nepali
- nl - Dutch
- nn - Norwegian Nynorsk
- oc - Occitan
- or - Odia
- pa - Punjabi
- pl - Polish
- pt - Portuguese
- rm - Romansh
- ro - Romanian
- ru - Russian
- sc - Sardinian
- sk - Slovak
- sl - Slovenian
- sq - Albanian
- sr - Serbian
- st - Southern Sotho
- sv - Swedish
- sw - Swahili
- ta - Tamil
- te - Telugu
- th - Thai
- tl - Tagalog
- tr - Turkish
- tt - Tatar
- ug - Uyghur
- uk - Ukrainian
- ur - Urdu
- uz - Uzbek
- vi - Vietnamese
- wo - Wolof
- zh-CN - Chinese (Simplified)
- zh-HK - Chinese (Hong Kong)
- zh-TW - Chinese (Traditional)
- zh-YUE - Chinese (Yue)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/drexed/cmdx-i18n. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/drexed/cmdx-i18n/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cmdx::I18n project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/drexed/cmdx-i18n/blob/master/CODE_OF_CONDUCT.md).
