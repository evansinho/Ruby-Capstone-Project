# !/usr/bin/env ruby

require './lib/load_file.rb'
require './lib/space_checker.rb'
require './lib/class_name.rb'
require './lib/class_count.rb'
require './lib/var_naming.rb'
require 'colorize'

path = ARGV[0]
errors = ''

def call_error(err, _line)
  err
end

def linter(given_file, errors)
  new_file = LoadFile.new(given_file)
  puts
  puts 'Checking File...'.green
  puts
  SpaceChecker.spaces(errors, new_file)
  ClassName.class_naming(errors, new_file)
  ClassCount.class_count(errors, new_file)
  VarNaming.var_name_checker(errors, new_file)
  read_lambda = ->(l) { errors = call_error(errors, l) if errors }
  new_file.lines.each(&read_lambda)
  puts
  puts 'All Done!'.green
  puts
end

linter(path, errors)
