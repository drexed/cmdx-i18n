# frozen_string_literal: true

module Cmdx
  module I18n
    # Rails generator that copies CMDx::I18n locale files into the host
    # application's +config/locales/+ directory.
    #
    # Provides manual locale installation as an alternative to the
    # automatic load-path injection performed by {CMDx::I18n::Railtie}.
    #
    # @see CMDx::I18n::Railtie
    class LocaleGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../locales", __dir__)

      desc "Copies CMDx::I18n locale files into app"

      argument :locale, type: :string, default: "en", banner: "Locale to copy"

      # Copies the requested locale YAML file into +config/locales/+.
      #
      # @return [void]
      def copy_locale_files
        copy_file("#{locale}.yml", "config/locales/#{locale}.yml")
      end

    end
  end
end
