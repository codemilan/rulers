# best_quotes/config.ru

require './config/application'
a = BestQuotes::Application.new
run a
puts "**************"
puts a.respond_to?(:run) # false.
puts a.respond_to?(:call) # true.
puts a.class
puts a.inspect
puts a.methods
