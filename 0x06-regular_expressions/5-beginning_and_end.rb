#!/usr/bin/env ruby

# Accept an argument from the command line
argument = ARGV[0]

# Define the regular expression pattern
pattern = /^h.n$/

# Pass the argument to the `match` method of the `Regexp` class
result = pattern.match(argument)

# Print the result of the match
if result
  puts "The argument matches the pattern."
else
  puts "The argument does not match the pattern.
end
