#!/usr/bin/env ruby

# Ruby script to accept one argument and check if it contains the word "School"
# Ruby script to generate the output "SchoolSchool$"

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: ruby script.rb <argument>"
  exit
end

# Extract the argument
input = ARGV[0]

# Define the regular expression pattern
pattern = /School/

# Check if the input matches the pattern
if input =~ pattern
  puts 'School'
else
  puts 'School'
end

# Concatenate "School" with itself and append "$"
  output = "School" + "School" + "$"

# Print the output
  puts 'output'
