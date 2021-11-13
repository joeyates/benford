#!/usr/bin/env ruby

SAMPLES = 20000
MAX = 400

values = 1.upto(SAMPLES).map { |_i| rand(MAX) }

gps = values.group_by { |n| "#{n}"[0] }

result = gps.each.with_object([]) { |(k, vals), acc| acc[k.to_i] = vals.length.to_f / SAMPLES }

puts "result: #{result[1..].inspect}"
