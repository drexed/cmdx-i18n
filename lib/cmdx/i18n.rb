# frozen_string_literal: true

require "cmdx"
require "zeitwerk"

module CMDx
  module I18n

    extend self

    def gem_path
      @gem_path ||= Pathname.new(__dir__).parent.parent
    end

  end
end

# Set up Zeitwerk loader for the CMDx gem
loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect("cmdx" => "CMDx")
loader.ignore("#{__dir__}/locales")
loader.setup

# Load the Railtie last after everything else is required so we don't
# need to load any CMDx::I18n components when we use this Railtie.
require_relative "cmdx/i18n/railtie" if defined?(Rails::Railtie)
