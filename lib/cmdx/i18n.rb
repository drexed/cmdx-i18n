# frozen_string_literal: true

require "cmdx"

require_relative "i18n/version"

module CMDx
  module I18n

    extend self

    def gem_path
      @gem_path ||= Pathname.new(__dir__).parent.parent
    end

  end
end

# Conditionally load Rails components if Rails is available
require_relative "generators/cmdx/i18n/copy_generator" if defined?(Rails::Generators)

# Load the Railtie last after everything else is required so we don't
# need to load any CMDx::I18n components when we use this Railtie.
require_relative "i18n/railtie" if defined?(Rails::Railtie)
