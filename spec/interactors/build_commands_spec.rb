# frozen_string_literal: true

RSpec.describe BuildCommands do
  subject(:build_commands) { described_class.call(words:) }

  let(:words) { ["prominence", "emergent", "call a spade a spade"] }
  let(:expected_commands) do
    [
      "open 'https://dictionary.cambridge.org/dictionary/english/prominence'",
      "open 'https://dictionary.cambridge.org/dictionary/english/emergent'",
      "open 'https://dictionary.cambridge.org/dictionary/english/call-a-spade-a-spade'"
    ]
  end

  it { expect(build_commands.commands).to eq(expected_commands) }

  context "when words are empty" do
    let(:words) { [] }

    it { expect(build_commands.commands).to eq([]) }
  end
end
