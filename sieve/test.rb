require 'benchmark'
require_relative 'simples.rb'

trace=(ARGV.first=="-d" && ARGV.shift)
filter=ARGV.shift

lmethods = private_methods.grep(/^test_/)
puts "Methods testable:  #{lmethods.map(&:to_s).join(" ")}"
puts "Methods to test :  #{lmethods.map(&:to_s).grep(/#{filter}/).join(" ")}" if filter

if trace 
  lmethods.each { |met| (puts "#{met}:" ; send(met,true); puts)  if !filter || met =~ /#{filter}/ }
end

Benchmark.bm { |x|
  lmethods.each { |met|
    x.report(met) { send(met,false) } if !filter || met =~ /#{filter}/
  }
}