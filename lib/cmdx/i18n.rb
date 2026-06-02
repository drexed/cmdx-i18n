# frozen_string_literal: true

require "cmdx"

require_relative "i18n/version"

# Register the gem's bundled locale directory with CMDx::I18nProxy so that
# the no-`i18n`-gem fallback path can resolve non-en translations.
CMDx::I18nProxy.register(File.expand_path("../locales", __dir__))

# Conditionally load Rails components if Rails is available
require_relative "../generators/cmdx/i18n/locale_generator" if defined?(Rails::Generators)

# Load the Railtie last after everything else is required so we don't
# need to load any CMDx::I18n components when we use this Railtie.
require_relative "i18n/railtie" if defined?(Rails::Railtie)
