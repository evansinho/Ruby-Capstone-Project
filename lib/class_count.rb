module ClassCount
  def self.lint_files(err, file)
    result = check_class_number(file)
    err << result if result
    err
  end

  def self.check_class_number(file)
    pat = /(class)/

    lines_with_class = []
    file.lines.each { |l| lines_with_class << l.number if pat.match?(l.content) }
    size = lines_with_class.count

    puts "#{lines_with_class}, Error: #{lines_with_class.count} classes defined in a module" if size.positive?
  end
end
