# frozen_string_literal: true

class BuildCommands
  include Interactor

  CAMBRIDGE_DICTIONARY_URL = "https://dictionary.cambridge.org/dictionary/english/%<word>s"
  COMMAND = "open '%<url>s'"

  delegate :words, to: :context

  def call
    context.commands = commands
  end

  private

  def commands
    words.each_with_object([]) do |word, commands|
      url = build_url(word)

      commands << format(COMMAND, url:)
    end
  end

  def build_url(word)
    format(CAMBRIDGE_DICTIONARY_URL, word: word.gsub(" ", "-"))
  end
end
