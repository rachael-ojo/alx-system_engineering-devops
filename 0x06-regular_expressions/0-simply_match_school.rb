#!/usr/bin/env ruby

# Ruby script to accept one argument and check if it contains the word "School"

if ARGV.length != 1
  puts "Usage: ruby script.rb <argument>"
  exit
end

input = ARGV[0]
pattern = /School/

if input.match?(pattern)
  puts "The input '#{input}' contains the word 'School'."
else
  puts "The input '#{input}' does not contain the word 'School'."
end
