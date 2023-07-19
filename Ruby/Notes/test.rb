module Fetcher
    def self.included(class1) #passing in a class into module 
      puts "#{class1} has been included"
    end
    def fetch(item)
      puts "I'll bring that #{item} right back!"
    end
  end
  
  class Dog
    include Fetcher
    def initialize(name)
      @name = name
    end
  end
  
  class Cat
    include Fetcher
    def initialize(name)
      @name = name
    end
  end