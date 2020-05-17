# !/usr/bin/env ruby

require './lib/load_file.rb'
require './lib/space_checker.rb'

path = ARGV[0]
errs = ''

def call_error(err, _line)
  err
end

def linter(given_file, errs)
  new_file = LoadFile.new(given_file)
  SpaceChecker.lint_files(errs, new_file)
  read_lambda = ->(l) { errs = call_error(errs, l) if errs }
  new_file.lines.each(&read_lambda)
end

linter(path, errs)
