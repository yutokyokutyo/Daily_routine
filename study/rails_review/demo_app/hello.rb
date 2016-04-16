require 'rubygems'
 require 'rack'

 class HelloApp
   def call(env)
     [200, {"Content-Type" => "text/plain"}, ["Hello, Rack"]]
   end
 end
