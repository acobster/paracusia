#!/usr/bin/env ruby

convos_dir = ARGV[0] ? ARGV[0] : './conversations'

files = Dir.glob("#{convos_dir}/*.convo")

files.each do |file|
	# Concurrently trigger conversation audio
	Thread.new do
		`./convo.rb #{file}`
	end
end