require_relative './line.rb'

class LoadFile
  attr_reader :file, :lines

  def initialize(file)
    @file = file
    @lines = []
    file_content
  end

  def file_content
    content = File.open(file)

    all_lines = content.readlines.map(&:chomp)
    init_lines = lambda { |val, index|
      line = Line.new(index + 1, val, @file)
      @lines << line
    }
    all_lines.each_with_index(&init_lines)
  end
end
