# !/usr/bin/env ruby

require_relative '../lib/lint_ware.rb'
require 'colorize'

path = ARGV[0]
errors = ''

puts
puts 'Checking File...'.green
puts
LintWare.linter(path, errors)
puts
puts 'All Done!'.green
puts
