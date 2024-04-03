# frozen_string_literal: true

RSpec.describe ExtractWords do
  subject(:extract_words) { described_class.call(user_input:) }

  let(:user_input) do
    [
      "n. prominence - fame, outstanding position \n",
      "adj. emergent – coming into notice\n",
      "idi. call a spade a spade — to say the truth about something, even if it is not polite or pleasant",
      "\n",
      ""
    ]
  end

  it { expect(extract_words.words).to eq(["prominence", "emergent", "call a spade a spade"]) }

  context "when words are without specifying the part of speech" do
    let(:user_input) do
      [
        "prominence — fame, outstanding position \n",
        "emergent — coming into notice\n",
        "call a spade a spade — to say the truth about something, even if it is not polite or pleasant"
      ]
    end

    it { expect(extract_words.words).to eq(["prominence", "emergent", "call a spade a spade"]) }
  end

  context "when words are without definition" do
    let(:user_input) do
      ["n. prominence \n", "adj. emergent\n", "idi. call a spade a spade"]
    end

    it { expect(extract_words.words).to eq(["prominence", "emergent", "call a spade a spade"]) }

    context "when words are without specifying the part of speech" do
      let(:user_input) { ["prominence \n", "emergent\n", "call a spade a spade"] }

      it { expect(extract_words.words).to eq(["prominence", "emergent", "call a spade a spade"]) }
    end
  end

  context "when user_input is empty" do
    let(:user_input) { ["\n"] }

    it { expect(extract_words.words).to eq([]) }
  end
end
