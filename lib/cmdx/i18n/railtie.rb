# frozen_string_literal: true

module CMDx
  module I18n
    # Integrates CMDx::I18n locale files into the Rails I18n load path.
    #
    # Automatically loads bundled locale YAML files for each locale listed
    # in +config.i18n.available_locales+ during Rails initialization.
    #
    # @see Cmdx::I18n::LocaleGenerator
    class Railtie < Rails::Railtie

      railtie_name :cmdx_i18n

      initializer("cmdx_i18n.configure_rails") do |app|
        available_locales = app.config.i18n.available_locales.join(",")
        locale_path = File.expand_path("../locales/{#{available_locales}}.yml", __dir__)
        ::I18n.load_path += Dir[locale_path]
      end

    end
  end
end
