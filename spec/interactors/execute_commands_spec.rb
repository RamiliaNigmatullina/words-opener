RSpec.describe ExecuteCommands do
  subject(:extract_words) { described_class.call(commands: commands) }

  let(:commands) do
    [
      "open 'https://dictionary.cambridge.org/dictionary/english/prominence'",
      "open 'https://dictionary.cambridge.org/dictionary/english/emergent'",
      "open 'https://dictionary.cambridge.org/dictionary/english/call-a-spade-a-spade'"
    ]
  end

  it "executes commands" do
    expect_any_instance_of(ExecuteCommands).to receive(:system).exactly(3).times

    extract_words
  end
end
