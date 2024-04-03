# frozen_string_literal: true

RSpec.describe Open do
  let(:expected_interactors) do
    [
      ExtractWords,
      BuildCommands
    ]
  end

  it { expect(described_class.organized).to eq(expected_interactors) }
end
