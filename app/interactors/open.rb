class Open
  include Interactor::Organizer

  organize SetDictionary,
    ReadFile,
    ExtractWords,
    BuildCommands,
    ExecuteCommands
end
