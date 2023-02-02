#!/usr/bin/env ruby

# Accepts one argument
argument = ARGV[0]

# The regular expression pattern
pattern = /^hbtt{0,5}n$/

# Passes the argument to a regular expression matching method
if argument =~ pattern
  puts "#{argument} matches the pattern."
else
  puts "#{argument} does not match the pattern."
end
