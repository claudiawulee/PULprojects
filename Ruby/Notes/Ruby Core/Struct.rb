#used only with few attributes
#if it gets two long consider switching to a class
Customer = Struct.new(:name, :email) do
    def name_with_email
        "#{name} <#{email}>"
    end
end

customer = Customer.new("Jason", "jason@teamtreehouse.com")
customer.each_pair do |name, value|
    puts "#{name} - #{value}" 
end