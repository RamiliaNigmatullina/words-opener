# frozen_string_literal: true

class ExecuteCommands
  include Interactor

  delegate :commands, to: :context

  def call
    commands.each { |command| system command }
  end
end
