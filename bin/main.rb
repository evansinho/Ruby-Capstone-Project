# !/usr/bin/env ruby

require './lib/load_file.rb'
require './lib/space_checker.rb'
require './lib/class_name.rb'

path = ARGV[0]
errors = ''

def call_error(err, _line)
  err
end

def linter(given_file, errors)
  new_file = LoadFile.new(given_file)
  SpaceChecker.lint_files(errors, new_file)
  ClassName.lint_files(errors, new_file)
  read_lambda = ->(l) { errors = call_error(errors, l) if errors }
  new_file.lines.each(&read_lambda)
end

linter(path, errors)
