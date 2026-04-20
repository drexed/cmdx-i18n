# frozen_string_literal: true

require "spec_helper"

RSpec.describe CMDx::I18n do
  let(:task) do
    Class.new(CMDx::Task) do
      input :amount, numeric: { max: 10 }

      def work = nil
    end
  end

  let(:result) { task.execute(amount: 11) }

  context "when translating" do
    context "when using default locale" do
      it "returns reason in :en" do
        expect(result.reason).to eq("amount must be at most 10")
      end
    end

    context "when using custom locale" do
      it "returns reason in :fr" do
        I18n.with_locale(:fr) do
          expect(result.reason).to eq("amount doit être au plus 10")
        end
      end
    end

    context "when the I18n gem is not available" do
      it "registers the gem's locales dir with CMDx::I18nProxy" do
        expected = File.expand_path("../../lib/locales", __dir__)
        expect(CMDx::I18nProxy.locale_paths).to include(expected)
      end

      it "resolves non-en translations via the proxy fallback path" do
        hide_const("I18n")
        CMDx.configuration.default_locale = "fr"

        proxy = CMDx::I18nProxy.new
        expect(
          proxy.translate("cmdx.validators.numeric.max", max: 10)
        ).to eq("doit être au plus 10")
      end
    end
  end
end
