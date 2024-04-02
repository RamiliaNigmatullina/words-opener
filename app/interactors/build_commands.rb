class BuildCommands
  include Interactor

  CAMBRIDGE_DICTIONARY_URL = "https://dictionary.cambridge.org/dictionary/english/%{word}"
  COMMAND = "open '%{url}'"

  delegate :words, :dictionary, to: :context

  def call
    context.commands = commands
  end

  private

  def commands
    words.each_with_object([]) do |word, commands|
      url = CAMBRIDGE_DICTIONARY_URL % { word: word }

      commands << COMMAND % { url: url }
    end
  end
end
