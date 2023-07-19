
def ask_question(question, kind = "string")
    print question 
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def add_contact()
    contact = {"name" => "", "phone_numbers" => []}
    contact["name"] = ask_question("What is the person's name?: ")
    answer = ""
    while answer != "no"
        answer = ask_question("Do you want to add a phone number? (yes/no): ")
        if answer == "yes" 
            phone = ask_question("Enter a phone number: ")
            contact["phone_numbers"].push(phone)
        end
    end
    return contact
end

contact_list = []
answer = ""
while answer != "no"
    contact_list.push(add_contact())
    answer = ask_question("Add another contact? (yes/no): ")
end
puts "--------------"
contact_list.each do |contact|
    puts "Name: #{contact["name"]}"
    if contact["phone_numbers"].size > 0
        contact["phone_numbers"].each do |phone_number|
            puts "Phone: #{phone_number}"
        end
    end
    puts "------\n"
end



#------Practice Exercises-----------

# def parse_answer(answer, kind = "string")
#     answer = answer.to_i if kind == "number"
#      return answer
# end

