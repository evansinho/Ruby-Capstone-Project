class LoadFile
  attr_reader :file

  def initialize
    @file = file
  end

  def file_content(file)
    content = File.open(file)

    all_lines = content.readlines.map(&:chomp)
    init_lines = lambda { |line, i|
      puts "#{i + 1}: #{line}"
    }

    all_lines.each_with_index(&init_lines)
    content.close
  end
end
