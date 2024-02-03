class SetDictionary
  include Interactor

  delegate :input_dictionary, to: :context

  def call
    context.dictionary = dictionary
  end

  private

  def dictionary
    %w[Macmillan macmillan M m].include?(input_dictionary) ? "macmillan" : "cambridge"
  end
end
