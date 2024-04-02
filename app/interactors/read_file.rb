class ReadFile
  include Interactor

  def call
    context.file_text = file.read
  end

  private

  def initial_file
    "./in.txt"
  end

  def file
    File.open(initial_file, "r")
  end
end
