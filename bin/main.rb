# !/usr/bin/env ruby

require './lib/load_file.rb'

path = ARGV[0]
new_file = LoadFile.new
puts
puts 'Checking File...'
puts new_file.file_content(path)
