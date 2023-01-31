#!/usr/bin/env ruby

require 'oniguruma'

regex = Oniguruma::ORegexp.new("^#!/usr/bin/env ruby$")

input_string = ARGV[0]

if regex.match(input_string)
  puts "The input string matches the regular expression for the first line of a bash script file"
else
  puts "The input string does not match the regular expression for the first line of a bash script file"
end
