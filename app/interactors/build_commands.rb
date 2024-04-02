class BuildCommands
  include Interactor

  CAMBRIDGE_DICTIONARY_URL = "https://dictionary.cambridge.org/dictionary/english/%{word}"
  MACMILLAN_DICTIONARY_URL = "https://www.macmillandictionary.com/dictionary/british/%{word}"
  COMMAND = "open '%{url}'"

  delegate :words, :dictionary, to: :context

  def call
    context.commands = commands
  end

  private

  def commands
    words.each_with_object([]) do |word, commands|
      url = url_const % { word: word }

      commands << COMMAND % { url: url }
    end
  end

  def url_const
    Kernel.const_get("BuildCommands::#{dictionary.upcase}_DICTIONARY_URL")
  end
end
