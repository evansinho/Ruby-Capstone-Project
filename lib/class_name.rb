module ClassName
  def self.class_naming(err, file)
    name_check_err = check_class_name(file)
    err << name_check_err if name_check_err
    err
  end

  def self.bad_class_name(bad)
    first_pat = /[\s]*(class)[\s]*[\d]*[\-]*[a-z]+[\-]*[\w\W]*/
    second_pat = /[\s]*(class)[\s]*[\p{Alpha}]+[\-]+[\p{Alpha}]+/

    commented_line = bad.match?(%r{^\W+[\/\/]})

    !commented_line && (first_pat.match?(bad) || second_pat.match?(bad))
  end

  def self.check_class_name(file)
    bad_class_name_lines = []
    file.lines.each { |line| bad_class_name_lines << line.number if bad_class_name(line.content) }
    size = bad_class_name_lines.length

    if size.positive? # rubocop:todo Style/GuardClause
      puts "#{bad_class_name_lines}: NamingError: Ensure classes begin with Uppercase and is not snake Cased".red
    end
  end
end
