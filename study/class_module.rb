class HelloWorld
  Version = "1.0"
  def initialize(myname="Ruby")
    @name = myname
  end
  
  def hello
    print "Hello, world. I am " ,@name, ",\n"
  end
end

  bob = HelloWorld.new("Bob")
  alice = HelloWorld.new("Alice")
  ruby = HelloWorld.new
  bob.hello
