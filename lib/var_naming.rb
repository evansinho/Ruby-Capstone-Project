module VarNaming
  def self.var_name_checker(err, path)
    bad_named_lines = check_naming(path)
    err << bad_named_lines if bad_named_lines
    err
  end

  private_class_method def self.bad_var_case?(bad_case)
    bad_var_start = /(var|let|const|[\s])[\s]*([[:upper:]]{1,}|\d)+(([\w]+[\s][\w]+)|[\w]+)[\s]*[\=][\s]*[\w]*/
    commented_line = bad_case.match?(%r{^\W+[\/\/]})

    bad_var_start.match?(bad_case) && !commented_line
  end

  private_class_method def self.check_naming(file)
    bad_lines = []
    file.lines.each do |line|
      bad_lines << line.number if bad_var_case?(line.content)
    end
    size = bad_lines.count

    puts "#{bad_lines}: VariableName Error: Uppercase/Numbers used to Start a Variable name.".red if size.positive?
  end
end
