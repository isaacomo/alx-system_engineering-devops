#!/usr/bin/env ruby

# Accept an argument from the command line
argument = ARGV[0]

# Define the regular expression pattern for a 10-digit phone number
pattern = /^\d{10}$/

# Pass the argument to the `match` method of the `Regexp` class
result = pattern.match(argument)

# Print the result of the match
if result
  puts "The argument is a 10-digit phone number."
else
  puts "The argument is not a 10-digit phone number."
end
