# frozen_string_literal: true

class Open
  include Interactor::Organizer

  organize ExtractWords,
    BuildCommands,
    ExecuteCommands
end
