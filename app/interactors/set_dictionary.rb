class SetDictionary
  include Interactor

  delegate :input_dictionary, to: :context

  def call
    context.dictionary = dictionary
  end

  private

  def dictionary
    %w[Cambridge cambridge C c].include?(input_dictionary) ? "cambridge" : "macmillan"
  end
end
