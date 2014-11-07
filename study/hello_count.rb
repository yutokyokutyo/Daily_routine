class HelloCount
  @@count = 0

  def HelloCount.count
    @@count
  end
  def initialize(myname="Ruby")
    @name = myname
  end
  def hello
    @@count += 1
    print "わいわい. I am ", @name, ".\n"
  end
end

yuto = HelloCount.new("yuto")
ruby = HelloCount.new

p HelloCount.count
yuto.hello
ruby.hello
p HelloCount.count
