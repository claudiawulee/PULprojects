class Address
    attr_accessor :kind, :street1, :street2, :city, :state, :postal_code

    def to_s(format = 'short')
        address = ''
        case format
        when 'long'
            address += street1 + "\n"
            address += street2 + "\n" if !street2.nil?
            address += "#{city}, #{state}, #{postal_code}"
        when 'short'
            address += "#{kind}: "
            address += street1
            if street2
                address += " " + street2
            end
            address += ", #{city}, #{state}, #{postal_code}"
        end
        address
    end
end

# dorm = Address.new
# dorm.kind = "Forbes College"
# dorm.street1 = "115 Alexander St"
# dorm.city = "Princeton"
# dorm.state = "NJ"
# dorm.postal_code = "08540"

# puts dorm.to_s('short')
# puts dorm.to_s('long')
