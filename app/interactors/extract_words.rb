class ExtractWords
  include Interactor

  EXTRACT_WORDS_REGEXP = /^(.+?\.\s)?(.*?)\s(-|–|—)|(.+?\.\s)?(.+)$/

  def call
    context.words = words.compact
  end

  private

  def words
    context.user_input.each_with_object([]) do |line, words|
      words << extracted_word(line)
    end
  end

  def extracted_word(line)
    line.strip.gsub(EXTRACT_WORDS_REGEXP, '\2').presence ||
      line.strip.gsub(EXTRACT_WORDS_REGEXP, '\5').presence
  end
end
