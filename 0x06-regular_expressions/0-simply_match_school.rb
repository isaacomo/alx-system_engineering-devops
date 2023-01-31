#!/usr/bin/env ruby

require 'oniguruma'

regex = Oniguruma::ORegexp.new("School")

input_string = ARGV[0]

if regex.match(input_string)
  puts "The input string matches the regular expression: School"
else
  puts "The input string does not match the regular expression: School"
end
