class ExtractWords
  include Interactor

  delegate :file_text, to: :context

  def call
    context.words = words
  end

  private

  def words
    [].tap do |words|
      split_text.each do |line|
        words << line.split(" —").first.split(". ").last.gsub(" ", "-")
      end
    end
  end

  def split_text
    file_text.split("\n")
  end
end
