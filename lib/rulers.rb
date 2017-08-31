# rulers/lib/rulers.rb

require 'rulers/version'
require 'rulers/array'

module Rulers
  class Application
    def call(env)
      [200, {"Content-Type" => "text/html"}, ["Hello World from rulers !!!"]]
    end
  end
end
