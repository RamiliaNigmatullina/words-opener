class BuildCommands
  include Interactor

  CAMBRIDGE_DICTIONARY_URL = "https://dictionary.cambridge.org/dictionary/english/%{word}".freeze
  MACMILLAN_DICTIONARY_URL = "https://www.macmillandictionary.com/dictionary/british/%{word}".freeze
  COMMAND = "open '%{url}'"

  delegate :words, :dictionary, to: :context

  def call
    context.commands = commands
  end

  private

  def commands
    [].tap do |commands|
      words.each do |word|
        url = url_const % { word: word }
        command = COMMAND % { url: url }

        commands << command
      end
    end
  end

  def url_const
    Kernel.const_get("BuildCommands::#{dictionary.upcase}_DICTIONARY_URL")
  end
end
