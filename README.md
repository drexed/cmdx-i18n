<div align="center">
  <img src="./src/cmdx-light-logo.png#gh-light-mode-only" width="200" alt="CMDx Logo">
  <img src="./src/cmdx-dark-logo.png#gh-dark-mode-only" width="200" alt="CMDx Logo">

  ---

  Bundled locale files for the [CMDx](https://github.com/drexed/cmdx) framework.

  [Changelog](./CHANGELOG.md) · [Report Bug](https://github.com/drexed/cmdx-i18n/issues) · [Request Feature](https://github.com/drexed/cmdx-i18n/issues)

  <img alt="Version" src="https://img.shields.io/gem/v/cmdx-i18n">
  <img alt="Build" src="https://github.com/drexed/cmdx-i18n/actions/workflows/ci.yml/badge.svg">
  <img alt="License" src="https://img.shields.io/github/license/drexed/cmdx-i18n">
</div>

# CMDx::I18n

Translations for CMDx's built-in coercion, validator, and fault messages across 86 locales.

## Requirements

- Ruby: MRI 3.3+ or a compatible JRuby/TruffleRuby release
- CMDx 2.0+

## Installation

```sh
gem install cmdx-i18n
# - or -
bundle add cmdx-i18n
```

## Usage

### Rails

On boot, the bundled Railtie loads every file under `lib/locales/` that matches `config.i18n.available_locales` into `I18n.load_path`. No configuration is required — set `config.i18n.available_locales` as you normally would and CMDx messages will resolve in the active locale.

### Non-Rails

Requiring the gem registers its locale directory with `CMDx::I18nProxy`, so CMDx's internal fallback translator can resolve any bundled locale even without the `i18n` gem:

```ruby
require "cmdx/i18n"

CMDx.configure { |c| c.default_locale = "fr" }
```

If the `i18n` gem *is* loaded, `CMDx::I18nProxy` delegates to `I18n.translate` and honors `I18n.locale` / `I18n.with_locale`.

## Copying Locales

To vendor a locale into a Rails app's `config/locales/` for customization:

```bash
rails generate cmdx:i18n:locale [LOCALE]

# Copies en.yml by default
rails generate cmdx:i18n:locale

# Copies fr.yml
rails generate cmdx:i18n:locale fr
```

## Supported Locales

<details>
<summary>86 locales</summary>

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

</details>

## Development

Run `bin/setup` to install dependencies, then `rake spec` to run the tests. Use `bin/console` for an interactive prompt.

Release flow: bump `lib/cmdx/i18n/version.rb`, then `bundle exec rake release` to tag, push, and publish to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome at <https://github.com/drexed/cmdx-i18n>. Contributors are expected to follow the [code of conduct](https://github.com/drexed/cmdx-i18n/blob/master/CODE_OF_CONDUCT.md).

## License

Released under the [MIT License](https://opensource.org/licenses/MIT).
