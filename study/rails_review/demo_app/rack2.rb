require 'rubygems'
require 'rack'

class HelloApp
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["見ないでよエッチ！"]]
  end
end
