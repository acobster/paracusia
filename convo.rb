#!/usr/bin/env ruby

# Get all voice options in voices.txt as a pipe-separated string
voice_options = File.read('voices.txt').lines.map(&:strip).join('|')

file = ARGV[0]

if file and File.exists? file
	contents = File.read file
	convo = contents.lines.map do |line_of_text|
		extracted = /^(#{voice_options}): (.*)$/.match line_of_text
		{ voice: extracted[1], line: extracted[2] }
	end

	convo.each do |line|
		`say -v "#{line[:voice]}" "#{line[:line]}" >/dev/null`
	end
end