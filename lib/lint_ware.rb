require_relative './load_file.rb'
require_relative './space_checker.rb'
require_relative './class_name.rb'
require_relative './class_count.rb'
require_relative './var_naming.rb'

module LintWare
  def self.linter(given_file, errors)
    new_file = LoadFile.new(given_file)
    SpaceChecker.spaces(errors, new_file)
    ClassName.class_naming(errors, new_file)
    ClassCount.class_count(errors, new_file)
    VarNaming.var_name_checker(errors, new_file)
    read_lambda = ->(l) { errors = call_error(errors, l) if errors }
    new_file.lines.each(&read_lambda)
  end

  private_class_method def self.call_error(err, _line)
    err
  end
end
