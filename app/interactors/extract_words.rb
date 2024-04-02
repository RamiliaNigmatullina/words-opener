class ExtractWords
  include Interactor

  EXTRACT_WORDS_REGEXP = /^(.+?\.\s)?(.+?)\s(-|—|—).*$/

  delegate :file_text, to: :context

  def call
    context.words = words.compact
  end

  private

  def words
    [].tap do |words|
      split_text.each do |line|
        words << extracted_word(line)
      end
    end
  end

  def split_text
    user_input_provided? ? context.user_input : file_text.split("\n")
  end

  def user_input_provided?
    context.user_input.map { |s| s.gsub("\n", "") }.any?(&:present?)
  end

  def extracted_word(line)
    line.strip.gsub(EXTRACT_WORDS_REGEXP, '\2')
  end
end
