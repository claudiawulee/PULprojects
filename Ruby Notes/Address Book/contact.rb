require "./phoneNumber"
require "./address"
class Contact
    attr_writer :first_name, :middle_name, :last_name
    attr_reader :phone_numbers, :addresses
    def initialize
        @phone_numbers = []
        @addresses = []

    end

    def add_phone_number(kind, number)
        phone_number = PhoneNumber.new
        phone_number.kind = kind
        phone_number.number = number
        phone_numbers.push(phone_number)
    end
    def add_address(kind, street1, street2, city, state, postal_code)
        address = Address.new
        address.kind = kind
        address.street1 = street1
        address.street2 = street2
        address.city = city
        address.state = state
        address.postal_code = postal_code
        addresses.push(address)
    end

    def first_name
        @first_name
      end
    
      def middle_name
        @middle_name
      end
    
      def last_name
        @last_name
      end
  
    def full_name
      full_name = first_name
      if !@middle_name.nil?
        full_name += " "
        full_name += middle_name
      end
      full_name += ' '
      full_name += last_name
      full_name
    end
    def last_first
        last_first = last_name
        last_first += ", #{first_name}"
        if !@middle_name.nil?
            last_first += " #{middle_name.slice(0,1)}."
        end
        last_first
    end
    def first_last
        first_name + " " + last_name
    end
    def print_phone_numbers
        puts "Phone Numbers"
        phone_numbers.each do |num|
            puts "#{num}"
        end
    end
    def print_addresses
        puts "Addresses"
        addresses.each { |address| puts address.to_s('short') }
    end
    def to_s(format = "full_name")
        case format
        when 'full_name'
            full_name
        when 'first'
            first_name
        when 'last'
            last_name
        when 'last_first'
            last_first
        else 
            first_last
        end
    end
  end
  
#   jason = Contact.new
#   jason.first_name = "Jason"
#   jason.last_name = "Seifer"
#   jason.add_phone_number("Home", "123")
#   jason.add_phone_number("Work", "456")
#   jason.print_phone_numbers
#   puts jason.to_s("full_name")
#   puts jason.to_s("last_first")
#   puts jason.to_s("temp")
#   puts jason.to_s("first")
#   puts jason.to_s("last")
# jason.add_address("Dorm", "115 Alexander St", "", "Princeton", "NJ", "08540")
# jason.print_addresses
  
#   nick = Contact.new
#   nick.first_name = "Nick"
#   nick.middle_name = "Alex"
#   nick.last_name = "Pettit"
#   puts nick.last_first

