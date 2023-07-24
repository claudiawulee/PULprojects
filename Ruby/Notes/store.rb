module Inventoryable
    def self.included(class1)
        class1.extend(ClassMethods) #class is extending itself? - extends and includes at the same time?
        class1.extend(Enumerable)
    end

    module ClassMethods
        def create(attributes)
            object = new(attributes)
            instances.push(object)
            return object
        end
        def instances 
            @instances ||= []
        end

        def each(&block)
          instances.each(&block)
        end

        def report(title, items)
          puts "-" *50
          puts title
          puts "-" *50
          items.each do |item|
            line = []
            line.push("Item: #{item.attributes[:name]}")
            line.push("Stock: #{item.stock_count}")
            if item.attributes.include?(:size)
              line.push("Size: #{item.attributes[:size]}")
            end
            puts line.join("\t")
          end
          puts "-" *50
          puts "\n"
        end

        def in_stock_report
            title = "#{self.to_s} In Stock Report"
            reportable = instances.select{ |instance| instance.in_stock?}
            report(title,reportable)
          end

          def out_of_stock_report
            title = "#{self.to_s} Out of Stock Report"
            reportable = instances.select{ |instance| !instance.in_stock?}
            report(title, reportable)
          end
    end

    def stock_count
        @stock_count ||= 0
    end
    def stock_count=(number)
        @stock_count = number
    end
    def in_stock?
        stock_count > 0
    end
end

module Treehouse
  class Shirt
      #extend Inventoryable::ClassMethods
      include Inventoryable
    attr_accessor :attributes
    
    def initialize(attributes)
      @attributes = attributes
    end
  end

  class Pant
    attr_accessor :attributes
    include Inventoryable
    
    def initialize(attributes)
      @attributes = attributes
    end
  end

  class Accessory
    include Inventoryable

    attr_accessor :attributes
    
    def initialize(attributes)
      @attributes = attributes
    end
  end
end

shirt1 = Treehouse::Shirt.create(name: "MTF", size: "L")
shirt2 = Treehouse::Shirt.create(name: "MTF", size: "M")

pant = Treehouse::Pant.create(name: "Jeans", size: "M")
pant.stock_count=2

acessory = Treehouse::Accessory.create(name: "Belt", size: "M")
acessory.stock_count = 1

acessory = Treehouse::Accessory.create(name: "Belt", size: "L")
acessory.stock_count = 1

acessory = Treehouse::Accessory.create(name: "Necklace")
acessory.stock_count = 1



shirt1.stock_count = 10
shirt2.stock_count = 0
# puts "Shirt 1 stock count: %s" % shirt1.stock_count
# puts "Shirt 2 stock count: %s" % shirt2.stock_count

# puts "Shirt 1 in stock?: %s" % shirt1.in_stock?
# puts "Shirt 2 in stock?: %s" % shirt2.in_stock?
Treehouse::Shirt.in_stock_report
Treehouse::Pant.in_stock_report
Treehouse::Accessory.in_stock_report

Treehouse::Shirt.out_of_stock_report


