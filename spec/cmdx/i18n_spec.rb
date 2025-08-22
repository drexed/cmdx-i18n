# frozen_string_literal: true

require "spec_helper"

RSpec.describe CMDx::I18n do
  let(:task) do
    Class.new(CMDx::Task) do
      attribute :amount, numeric: { max: 10 }

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
  end
end
