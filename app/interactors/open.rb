class Open
  include Interactor::Organizer

  organize ExtractWords,
    BuildCommands,
    ExecuteCommands
end
