module SpaceChecker
  def self.lint_files(err, file)
    space_check = check_spaces(file)
    err << space_check if space_check
    err
  end

  def self.check_spaces(file)
    # rubocop:disable Lint/UselessAssignment
    state = false

    def self.found_spaces(cont) # rubocop:todo Lint/NestedMethodDefinition
      spaces_before = /[\s]+(const|let|var|function|class)[\s]+[\w]*/
      spaces_after = /[\s]*(const|let|var|function|class)[\s]{2,}/
      spaced_console = /[\s]+(function|(console.log)[\(][\w]*[\)])[\s]*/

      spaces_before.match?(cont) || spaces_after.match?(cont) || spaced_console.match?(cont)
    end
    lines_with_spaces = []
    file.lines.each { |line| lines_with_spaces << line.number if found_spaces(line.content) }
    size = lines_with_spaces.count

    state = puts "#{lines_with_spaces}: SpacingError: Redundant Space(s) found" if size.positive?
    # rubocop:enable Lint/UselessAssignment
  end
end
